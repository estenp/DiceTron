module Main exposing (..)

-- import Css.Transitions

import Action
import Browser
import Console
import Css exposing (..)
import Css.Animations exposing (..)
import Css.Global exposing (global)
import Data
import Deque
import Dict exposing (..)
import Face exposing (view)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, for, id, type_, value)
import Html.Styled.Events exposing (..)
import Json.Decode as Decode
import List
import Model exposing (..)
import Player
import StyledElements exposing (..)
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Try exposing (Cup, Face(..), Quantity(..), Try)
import Tuple3


init : () -> ( Model, Cmd Msg )
init _ =
    ( { roll = []
      , tryHistory = []
      , tryToBeat = ( Two, Twos )
      , quantity = Try.Two
      , value = Try.Threes
      , tableWilds = 0
      , cupState = Covered
      , cupLooked = False
      , rollState = Fresh
      , consoleHistory = []
      , consoleValue = ""
      , consoleIsVisible = False
      , whosTurn = 1
      , players = Data.my_players
      , activePlayers = Data.my_players |> Dict.keys |> Deque.fromList
      }
    , Cmd.none
    )



-- UPDATE
-- Update messages


{-| Main Msg type.

Here, some top level Msg variants take a sub Msg to group cases in update function.

`ViewState Viewstate` indicates a top level Msg type of ViewState which holds sub Msg such as `ChangeValue`

-}
type Msg
    = ViewState ViewState
    | GameAction Action.Msg
    | ConsoleMsg Console.Msg
    | NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        -- view state messages
        ViewState subMsg ->
            case subMsg of
                ChangeQuantity quant ->
                    ( { model | quantity = quant }
                    , Cmd.none
                    )

                ChangeValue val ->
                    ( { model | value = val }
                    , Cmd.none
                    )

        -- game event messages
        GameAction subMsg ->
            (case subMsg of
                Action.Roll rollType ->
                    Action.roll rollType model

                Action.Pull ->
                    ( Action.pull model, Cmd.none )

                Action.Look ->
                    ( Action.look model, Cmd.none )

                Action.Pass try ->
                    ( Action.pass model try, Cmd.none )
            )
                |> Tuple.mapSecond (Cmd.map GameAction)

        ConsoleMsg subMsg ->
            Console.update subMsg model
                |> Tuple.mapSecond (Cmd.map GameAction)

        NoOp ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    let
        -- model_log =
        --     Debug.log "Model" model
        -- UI
        gameIsOver =
            Deque.length model.activePlayers <= 1

        playerStats =
            model.players
                |> Dict.toList
                |> List.map Tuple.second
                |> List.map (Player.view model.whosTurn)
                |> stats_

        tryHistory =
            div [ class "history", css [ Tw.justify_self_center, Tw.mt_4, Tw.overflow_auto ] ]
                (model.tryHistory
                    |> List.map (Tuple3.mapAllThree Try.toString (Player.getName model.players) identity)
                    |> List.map (\tup -> div [] [ text (Tuple3.second tup ++ " -> " ++ Tuple3.first tup) ])
                )

        -- Play Area UI
        cup =
            [ section
                [ class "roll"
                , css [ Tw.flex, Tw.justify_evenly ]
                ]
                (viewCup model.roll)
            ]

        cupButtons =
            [ div [ css [ Tw.grid, Tw.grid_cols_2, Tw.gap_4, Tw.w_full ] ]
                [ button_ [ onClick (GameAction Action.Pull) ] [ text "pull" ]
                , button_ [ onClick (GameAction Action.Look) ] [ text "look" ]
                ]
            ]

        tableWilds =
            if model.tableWilds > 0 then
                [ section
                    [ id "wilds" ]
                    (viewCup (List.repeat model.tableWilds Wilds))
                , divider
                ]

            else
                []

        rollButtons =
            case model.rollState of
                Fresh ->
                    [ div [] [ button_ [ onClick (GameAction (Action.Roll Action.ReRoll)) ] [ text "roll" ] ] ]

                Pulled _ ->
                    [ div [] [ button_ [ onClick (GameAction (Action.Roll Action.ReRoll)) ] [ text "roll" ] ] ]

                Looked ->
                    [ div [] [ button_ [ onClick (GameAction (Action.Roll Action.ReRoll)) ] [ text "re-roll" ] ] ]

                _ ->
                    []

        trySelects =
            [ viewPassTry model.quantity model.value model.tryToBeat ]

        console =
            Console.view model |> Html.Styled.map ConsoleMsg
    in
    span []
        -- span just to apply global styles to page
        [ global Tw.globalStyles
        , div [ class "main" ]
            -- main wrapper
            (if not gameIsOver then
                case model.rollState of
                    Fresh ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea rollButtons
                        , console
                        ]

                    Rolled ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            (tableWilds ++ cup ++ rollButtons ++ trySelects)
                        , console
                        ]

                    Received ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            (tableWilds ++ cupButtons ++ trySelects)
                        , console
                        ]

                    Looked ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            (tableWilds ++ cup ++ rollButtons ++ trySelects)
                        , console
                        ]

                    Pulled result ->
                        let
                            pullResult =
                                case result of
                                    HadIt ->
                                        p [] [ text "Previous player had the roll. You will lose 1 hp." ]

                                    Lie ->
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
                [ text ("Game over." ++ Player.getName model.players (Maybe.withDefault 0 (Deque.first model.activePlayers)) ++ " wins!")
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
            (ViewState << ChangeQuantity) << Maybe.withDefault Two << Try.encodeQuantity << Maybe.withDefault 1 << String.toInt

        changeValue =
            (ViewState << ChangeValue) << Maybe.withDefault Twos << Try.encodeFace << Maybe.withDefault 2 << String.toInt
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
        , button_ [ css [ Tw.col_span_2 ], onClick ((GameAction << Action.Pass) ( quantity, val )) ] [ text "pass" ]
        ]



-- Model Utils
-- Misc Utils
-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view >> toUnstyled
        }
