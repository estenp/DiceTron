module Main exposing (..)

-- import Model exposing (..)

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
import Random
import Set
import StyledElements exposing (..)
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Task
import Try exposing (Cup, Face(..), Quantity(..), Try)
import Tuple3



-- MODEL


type TrySelectMsg
    = ChangeQuantity Try.Quantity
    | ChangeValue Try.Face


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
    , validActions = Set.fromList [ Game.msgToString (Game.Roll Game.ReRoll) ]
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
    = TrySelectChanged TrySelectMsg
    | GameAction Game.Msg
    | ConsoleMsg Console.Msg
    | NoOp


mergeGameState : Model -> Game.Model -> Model
mergeGameState model game =
    { model | gameState = game }


mergeConsoleState : Model -> Console.Model -> Model
mergeConsoleState model console =
    { model | consoleState = console }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        -- view state messages
        TrySelectChanged subMsg ->
            case subMsg of
                ChangeQuantity quant ->
                    let
                        gs =
                            model.gameState

                        new =
                            { gs | quantity = quant }
                    in
                    ( { model | gameState = new }
                    , Cmd.none
                    )

                ChangeValue val ->
                    let
                        gs =
                            model.gameState

                        new =
                            { gs | value = val }
                    in
                    ( { model | gameState = new }
                    , Cmd.none
                    )

        -- game event messages
        GameAction subMsg ->
            -- check available actions here?
            case subMsg of
                Game.Roll rollType ->
                    Game.roll rollType model.gameState
                        |> Tuple.mapBoth
                            (mergeGameState model)
                            (Cmd.map GameAction)

                Game.Pull ->
                    ( Game.pull model.gameState |> mergeGameState model, Cmd.none )

                Game.Look ->
                    ( Game.look model.gameState |> mergeGameState model, Cmd.none )

                Game.Pass try ->
                    case Game.pass model.gameState try of
                        Ok m ->
                            ( m |> mergeGameState model, Cmd.none )

                        Err e ->
                            -- update (ConsoleMsg (Console.Submit e) model) -- todo: hmm..
                            -- update NoOp model -- one of these would def be preferred, but dont currently work
                            ( model, Cmd.none )

        ConsoleMsg subMsg ->
            let
                focusCmd =
                    Task.attempt (\_ -> NoOp) (Dom.focus "console")

                -- withFocus =
                --     -- todo: apply focus logic - move out to main?
                --     Tuple.mapSecond (\c -> Cmd.batch [ focusCmd, c ])
                --
                ( newConsole, ( newGame, gameMsg ) ) =
                    Console.update subMsg ( model.consoleState, model.gameState )
            in
            ( mergeGameState (mergeConsoleState model newConsole) newGame
            , Cmd.batch [ focusCmd, Cmd.map GameAction gameMsg ]
            )

        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    let
        -- model_log =
        --     Debug.log "Model" model
        _ =
            Debug.log "Need to validate available commands on any given screen. console and currently 'pass' when there isn't a roll yet"

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

        -- Play Area UI
        cup =
            [ section
                [ class "roll"
                , css [ Tw.flex, Tw.justify_evenly ]
                ]
                (viewCup gameState.roll)
            ]

        cupButtons =
            [ div [ css [ Tw.grid, Tw.grid_cols_2, Tw.gap_4, Tw.w_full ] ]
                [ button_ [ onClick (GameAction Game.Pull) ] [ text "pull" ]
                , button_ [ onClick (GameAction Game.Look) ] [ text "look" ]
                ]
            ]

        tableWilds =
            if gameState.tableWilds > 0 then
                [ section
                    [ id "wilds" ]
                    (viewCup (List.repeat gameState.tableWilds Wilds))
                , divider
                ]

            else
                []

        rollButtons =
            case gameState.rollState of
                Game.Fresh ->
                    [ div [] [ button_ [ onClick (GameAction (Game.Roll Game.ReRoll)) ] [ text "roll" ] ] ]

                Game.Pulled _ ->
                    [ div [] [ button_ [ onClick (GameAction (Game.Roll Game.ReRoll)) ] [ text "roll" ] ] ]

                Game.Looked ->
                    [ div [] [ button_ [ onClick (GameAction (Game.Roll Game.ReRoll)) ] [ text "re-roll" ] ] ]

                _ ->
                    []

        trySelects =
            [ viewPassTry gameState.quantity gameState.value gameState.tryToBeat ]

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
                        , playArea rollButtons
                        , console
                        ]

                    Game.Rolled ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            (tableWilds ++ cup ++ rollButtons ++ trySelects)
                        , console
                        ]

                    Game.Received ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            (tableWilds ++ cupButtons ++ trySelects)
                        , console
                        ]

                    Game.Looked ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            (tableWilds ++ cup ++ rollButtons ++ trySelects)
                        , console
                        ]

                    Game.Pulled result ->
                        let
                            pullResult =
                                case result of
                                    Game.HadIt ->
                                        p [] [ text "Previous player had the roll. You will lose 1 hp." ]

                                    Game.Lie ->
                                        p [] [ text "Previous player lied. They will lose 1 hp." ]
                        in
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            (tableWilds ++ cup ++ [ pullResult ] ++ rollButtons)
                        , console
                        ]

             else
                [ text ("Game over." ++ Player.getName gameState.players (Maybe.withDefault 0 (Deque.first gameState.activePlayers)) ++ " wins!")
                ]
            )
        ]



-- UTILS
-- Html Utils


onEnter : Msg -> Attribute Msg
onEnter msg =
    let
        isEnter code =
            if code == 13 then
                Decode.succeed msg

            else
                Decode.fail "not ENTER"
    in
    on "keydown" (Decode.andThen isEnter keyCode)


playArea : List (Html msg) -> Html msg
playArea =
    div [ class "play-area" ]


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


{-| Takes a Quantity, Face, and a Try to best, and returns HTML for Try HTML `select`'s
Uses Q
-}
viewPassTry : Quantity -> Face -> Try -> Html Msg
viewPassTry quantity val tryToBeat =
    let
        ( quantities, values ) =
            Try.availTrySelectOpts tryToBeat quantity

        changeQuantity =
            (TrySelectChanged << ChangeQuantity) << Maybe.withDefault Two << Try.encodeQuantity << Maybe.withDefault 1 << String.toInt

        changeValue =
            (TrySelectChanged << ChangeValue) << Maybe.withDefault Twos << Try.encodeFace << Maybe.withDefault 2 << String.toInt
    in
    div [ class "try", css [ Tw.grid, Tw.grid_cols_2, Tw.gap_4, Tw.w_full ] ]
        [ div []
            [ label [ for "quantity" ] [ text "Quantity" ]
            , select_ [ onInput changeQuantity, id "quantity" ] quantities
            ]
        , div []
            [ label [ for "value" ] [ text "Value" ]
            , select_ [ onInput changeValue, id "value" ] values
            ]
        , button_ [ css [ Tw.col_span_2 ], onClick ((GameAction << Game.Pass) ( quantity, val )) ] [ text "pass" ]
        ]



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
