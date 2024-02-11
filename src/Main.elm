module Main exposing (..)

import Browser
import Browser.Dom as Dom
import Console
import Css exposing (..)
import Css.Animations exposing (..)
import Css.Global exposing (global)
import Data
import Deque
import Dict exposing (..)
import Face exposing (view)
import Game
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, for, id, type_, value)
import Html.Styled.Events exposing (..)
import Json.Decode as Decode
import List
import Player
import StyledElements exposing (..)
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Task
import Try exposing (Cup, Face(..), Quantity(..), Try)
import Tuple3



-- MODEL


type alias Model =
    { gameState : Game.Model
    , consoleState : Console.Model
    }


initGameState : Game.Model
initGameState =
    { roll = []
    , tryToBeat = ( Two, Twos )
    , cupState = Game.Covered
    , tableWilds = 0
    , cupLooked = False
    , rollState = Game.Fresh
    , whosTurn = 1
    , tryHistory = []
    , quantity = Try.Two
    , value = Try.Threes
    , activePlayers = Data.my_players |> Dict.keys |> Deque.fromList
    , players = Data.my_players
    }


initConsoleState : Console.Model
initConsoleState =
    { consoleHistory = []
    , consoleValue = ""
    , consoleIsVisible = False
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { gameState = initGameState
      , consoleState = initConsoleState
      }
    , Cmd.none
    )



-- UPDATE


type Msg
    = GameMsg Game.Msg
    | ConsoleMsg Console.Msg
    | NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GameMsg subMsg ->
            case subMsg of
                Game.TryMsg tryMsg ->
                    case tryMsg of
                        Try.ChangeQuantity quant ->
                            let
                                gs =
                                    model.gameState

                                new =
                                    { gs | quantity = quant }
                            in
                            ( { model | gameState = new }
                            , Cmd.none
                            )

                        Try.ChangeValue val ->
                            let
                                gs =
                                    model.gameState

                                new =
                                    { gs | value = val }
                            in
                            ( { model | gameState = new }
                            , Cmd.none
                            )

                Game.ActionMsg actionMsg ->
                    if Game.isValidAction model.gameState.rollState actionMsg then
                        case actionMsg of
                            Game.Roll rollType ->
                                Game.roll rollType model.gameState
                                    |> Tuple.mapBoth
                                        (mergeGameState model)
                                        (Cmd.map (GameMsg << Game.ActionMsg))

                            Game.Pull ->
                                ( Game.pull model.gameState |> mergeGameState model, Cmd.none )

                            Game.Look ->
                                ( Game.look model.gameState |> mergeGameState model, Cmd.none )

                            Game.Pass try ->
                                case Game.pass model.gameState try of
                                    Ok m ->
                                        ( m |> mergeGameState model, Cmd.none )

                                    Err e ->
                                        ( mergeConsoleState model (Console.addEntries model.consoleState [ e ]), Cmd.none )

                    else
                        ( mergeConsoleState
                            model
                            (Console.addEntries
                                model.consoleState
                                [ "You can't " ++ Game.decodeAction actionMsg ++ " right now." ]
                            )
                        , Cmd.none
                        )

        ConsoleMsg subMsg ->
            let
                focusCmd =
                    Task.attempt (\_ -> NoOp) (Dom.focus "console")

                ( newConsole, ( newGame, gameMsg ) ) =
                    Console.update subMsg ( model.consoleState, model.gameState )
            in
            ( mergeGameState (mergeConsoleState model newConsole) newGame
            , Cmd.batch [ focusCmd, Cmd.map GameMsg gameMsg ]
            )

        NoOp ->
            ( model, Cmd.none )


mergeGameState : Model -> Game.Model -> Model
mergeGameState model game =
    { model | gameState = game }


mergeConsoleState : Model -> Console.Model -> Model
mergeConsoleState model console =
    { model | consoleState = console }



-- VIEW


view : Model -> Html Msg
view model =
    let
        { gameState, consoleState } =
            model

        -- UI
        gameIsOver =
            Deque.length gameState.activePlayers <= 1

        playerStats =
            gameState.players
                |> Dict.toList
                |> List.map Tuple.second
                |> List.map (Player.view gameState.whosTurn)
                |> stats_

        tryHistory =
            div [ class "history", css [ Tw.justify_self_center, Tw.mt_4, Tw.overflow_auto ] ]
                (gameState.tryHistory
                    |> List.map (Tuple3.mapAllThree Try.toString (Player.getName gameState.players) identity)
                    |> List.map (\tup -> div [] [ text (Tuple3.second tup ++ " -> " ++ Tuple3.first tup) ])
                )

        table =
            Game.view gameState |> Html.Styled.map GameMsg

        console =
            Console.view consoleState { onEnter = Console.Submit, onInput = Console.Change } |> Html.Styled.map ConsoleMsg
    in
    span []
        -- span just to apply global styles to page
        [ global Tw.globalStyles
        , div [ class "main" ]
            -- main wrapper
            (if not gameIsOver then
                case gameState.rollState of
                    Game.Fresh ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , table
                        , console
                        ]

                    Game.Rolled ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , table
                        , console
                        ]

                    Game.Received ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , table
                        , console
                        ]

                    Game.Looked ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , table
                        , console
                        ]

                    Game.Pulled _ ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , table
                        , console
                        ]

             else
                [ text ("Game over." ++ Player.getName gameState.players (Maybe.withDefault 0 (Deque.first gameState.activePlayers)) ++ " wins!")
                ]
            )
        ]



-- UTILS
-- Html Utils


logo : Html msg
logo =
    div
        [ css
            [ Tw.w_32
            , Tw.h_32
            , Tw.flex
            , Tw.justify_center
            , Tw.items_center
            , Tw.m_4
            , Tw.shadow_color Tw.purple_200
            , Tw.text_8xl
            , Tw.text_color Tw.black_100
            , Tw.font_bold
            , Tw.border_4
            , Tw.border_color Tw.black_100
            , Tw.bg_gradient_to_br
            , Tw.from_color Tw.gray
            , Tw.to_color Tw.white
            , Tw.rounded_2xl

            -- , Tw.from_primary
            -- , Tw.to_destruct
            ]
        , class "logo logo-container"
        ]
        [ div
            [ id "logo" ]
            [ text "D" ]
        ]


stats_ : List (Html msg) -> Html msg
stats_ =
    div
        [ class "stats"
        , css
            ([ Tw.flex
             , Tw.justify_around
             , Tw.p_4
             , Tw.text_color Tw.black_100
             , Tw.gap_8
             ]
                ++ card
                ++ [ Tw.rounded_t_none ]
            )
        ]


viewCup : Cup -> List (Html Msg)
viewCup =
    List.map Face.view



-- Model Utils
-- Misc Utils
-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view >> toUnstyled
        }
