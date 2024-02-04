module Main exposing (..)

-- import Css.Transitions

import Browser
import Browser.Dom as Dom
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
import Random
import StyledElements exposing (..)
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Task
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


type ViewState
    = ChangeQuantity Quantity
    | ChangeValue Face
    | ChangeConsole String
    | SetConsoleVisable Bool


type GameAction
    = Pull
    | Pass Try
    | Look
    | Roll Roll


type Roll
    = -- Runtime is sending a new random die value.∏
      NewRoll Try.Cup
    | ReRoll


{-| Main Msg type.

Here, some top level Msg variants take a sub Msg to group cases in update function.

`ViewState Viewstate` indicates a top level Msg type of ViewState which holds sub Msg such as `ChangeValue`

-}
type Msg
    = ViewState ViewState
    | GameAction GameAction
    | SubmitConsole String
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

                ChangeConsole str ->
                    ( { model | consoleValue = str }
                    , Cmd.none
                    )

                SetConsoleVisable bool ->
                    ( { model | consoleIsVisible = bool }, Cmd.none )

        -- game event messages
        GameAction subMsg ->
            case subMsg of
                Roll rollType ->
                    case rollType of
                        -- this message only should come in from runtime
                        NewRoll roll ->
                            ( { model | roll = roll, rollState = Rolled }
                            , Cmd.none
                            )

                        ReRoll ->
                            -- checking state and factoring Wilds works well in update when we want to more generically call for a roll (whether fresh or reroll), as you might in console
                            -- but maybe this should all be determined in view and pass more specific roll message
                            -- console update would still want to determine the right roll type (or require more specfiic roll command)
                            case model.rollState of
                                Pulled _ ->
                                    -- reset
                                    ( { model | tableWilds = 0 }, Random.generate (GameAction << Roll << NewRoll) (Try.rollGenerator 5) )

                                Fresh ->
                                    -- reset
                                    ( { model | tableWilds = 0 }, Random.generate (GameAction << Roll << NewRoll) (Try.rollGenerator 5) )

                                _ ->
                                    let
                                        -- pull the wilds from the roll
                                        ( cup, wilds ) =
                                            List.partition (\d -> d /= Wilds) model.roll
                                    in
                                    if List.length cup /= 0 then
                                        -- add pulled wilds to the tableWilds count, create new roll with remaining cup
                                        ( { model | tableWilds = List.length wilds + model.tableWilds }
                                        , Random.generate (GameAction << Roll << NewRoll) (Try.rollGenerator (List.length cup))
                                        )

                                    else
                                        ( model
                                        , Random.generate (GameAction << Roll << NewRoll) (Try.rollGenerator (List.length model.roll))
                                        )

                Pull ->
                    -- check that the roll satisfied the required Try level
                    -- move to pulled state
                    let
                        bestTryInCup =
                            Try.assessRoll (model.roll ++ List.repeat model.tableWilds Wilds)

                        receivedTry =
                            model.tryToBeat

                        validateReceivedTry : Try -> Try -> PullResult
                        validateReceivedTry mustBeat received =
                            if (Try.toScore mustBeat |> Maybe.withDefault 1) >= (Try.toScore received |> Maybe.withDefault 1) then
                                HadIt

                            else
                                Lie

                        pullResult =
                            validateReceivedTry bestTryInCup receivedTry
                    in
                    case pullResult of
                        HadIt ->
                            -- current player takes a fold
                            let
                                hitPlayer =
                                    Player.hit model.players model.whosTurn

                                players =
                                    Dict.insert hitPlayer.id hitPlayer model.players

                                activePlayers =
                                    if hitPlayer.hp /= 0 then
                                        model.activePlayers

                                    else
                                        Player.ko hitPlayer.id model.activePlayers

                                newWhosTurn =
                                    Maybe.withDefault 0 (Deque.first activePlayers)
                            in
                            ( { model | cupState = Uncovered, rollState = Pulled HadIt, tryToBeat = ( Two, Twos ), quantity = Two, value = Twos, players = players, activePlayers = activePlayers, whosTurn = newWhosTurn }
                            , Cmd.none
                            )

                        Lie ->
                            -- previous player takes a fold
                            let
                                prevPlayer =
                                    Maybe.withDefault 0 (Deque.last model.activePlayers)

                                hitPlayer =
                                    Player.hit model.players prevPlayer

                                players =
                                    Dict.insert hitPlayer.id hitPlayer model.players

                                activePlayers =
                                    if hitPlayer.hp /= 0 then
                                        model.activePlayers

                                    else
                                        Player.ko hitPlayer.id model.activePlayers
                            in
                            ( { model | cupState = Uncovered, rollState = Pulled Lie, tryToBeat = ( Two, Twos ), quantity = Two, value = Twos, players = players, activePlayers = activePlayers }
                            , Cmd.none
                            )

                Pass try ->
                    case Try.mustPass try of
                        -- there is a "next" try to be passed
                        Just nextPassableTry ->
                            let
                                ( currentTurn, rest ) =
                                    Deque.popFront model.activePlayers

                                newActivePlayers =
                                    Deque.pushBack (Maybe.withDefault 0 currentTurn) rest

                                newCurrentTurn =
                                    Deque.first newActivePlayers
                            in
                            ( { model
                                | tryHistory = appendHistory model try
                                , tryToBeat = try
                                , whosTurn = Maybe.withDefault 0 newCurrentTurn
                                , activePlayers = newActivePlayers
                                , quantity = Tuple.first nextPassableTry
                                , value = Tuple.second nextPassableTry
                                , cupState = Covered
                                , cupLooked = False
                                , rollState = Received
                              }
                            , Cmd.none
                            )

                        -- The last try passed was as high as you can possibly roll this means we must force a Pull message,
                        -- evaluate the roll and determine if the passer or the receiver gets a fold.
                        Nothing ->
                            update (GameAction Pull) model

                Look ->
                    ( { model | cupState = Uncovered, cupLooked = True, rollState = Looked }
                    , Cmd.none
                    )

        SubmitConsole submittedCommand ->
            -- validate command
            -- add to history log
            let
                modelWithNewEntry entry =
                    { model | consoleHistory = model.consoleHistory ++ entry, consoleValue = "" }

                focusCmd =
                    Task.attempt (\_ -> NoOp) (Dom.focus "console")

                appendFocusCmd cmd =
                    update cmd (modelWithNewEntry [ submittedCommand ])
                        |> Tuple.mapSecond (\c -> Cmd.batch [ c, focusCmd ])

                _ =
                    Debug.log "console log" model
            in
            case String.words submittedCommand of
                x :: xs ->
                    case x of
                        "/c" ->
                            ( modelWithNewEntry [ "[chat] " ++ String.dropLeft 2 submittedCommand ], focusCmd )

                        -- todo: create cleaner function for batching in a focus command - mapSecond isn't very intuitive
                        "roll" ->
                            GameAction (Roll ReRoll) |> appendFocusCmd

                        "look" ->
                            GameAction Look |> appendFocusCmd

                        "pull" ->
                            GameAction Pull |> appendFocusCmd

                        "pass" ->
                            let
                                parsedTry =
                                    case List.filterMap String.toInt xs of
                                        a :: b :: _ ->
                                            Try.encode ( a, b ) |> Result.fromMaybe "`pass` command requires two arguments: first, the Quantity of the Try, and second, the Value of the Try."

                                        [ _ ] ->
                                            Err "`pass` command requires two arguments: first, the Quantity of the Try, and second, the Value of the Try."

                                        [] ->
                                            Err "`pass` command requires two arguments: first, the Quantity of the Try, and second, the Value of the Try."

                                -- _ =
                                --     parsedTry |> Debug.todo "A default somewhere is causing a pull when passed a bad Try"
                            in
                            case parsedTry of
                                Ok try ->
                                    GameAction (Pass try) |> appendFocusCmd

                                Err message ->
                                    ( modelWithNewEntry [ submittedCommand, message ], focusCmd )

                        "try" ->
                            ( modelWithNewEntry
                                [ submittedCommand
                                , "You received: " ++ Try.toString model.tryToBeat
                                , "You must pass: "
                                    ++ (case Try.mustPass model.tryToBeat of
                                            Just t ->
                                                Try.toString t

                                            Nothing ->
                                                "You cannot beat this roll. Sorry."
                                       )
                                ]
                            , focusCmd
                            )

                        "clear" ->
                            ( { model | consoleHistory = [], consoleValue = "" }, focusCmd )

                        "help" ->
                            ( modelWithNewEntry
                                [ submittedCommand
                                , """This console can be used to control your game via commands or chat with other players.

                                    `roll` -> trigger a roll or reroll
                                    `look` -> look at a passed roll
                                    `pull` -> pull a passed roll
                                    `pass` -> pass a roll
                                    `clear` -> clear the console
                                    `try` -> print the current try to beat, passed by the previous player

                                    Prefixing your message with a tag enables special actions.

                                    `/c *your message*` -> add a message to game chat
                                    """
                                ]
                            , focusCmd
                            )

                        "" ->
                            ( modelWithNewEntry [ "" ], focusCmd )

                        _ ->
                            ( modelWithNewEntry [ submittedCommand, "Command not recognized." ], focusCmd )

                _ ->
                    ( model, Cmd.none )

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
                [ button_ [ onClick (GameAction Pull) ] [ text "pull" ]
                , button_ [ onClick (GameAction Look) ] [ text "look" ]
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
                    [ div [] [ button_ [ onClick (GameAction (Roll ReRoll)) ] [ text "roll" ] ] ]

                Pulled _ ->
                    [ div [] [ button_ [ onClick (GameAction (Roll ReRoll)) ] [ text "roll" ] ] ]

                Looked ->
                    [ div [] [ button_ [ onClick (GameAction (Roll ReRoll)) ] [ text "re-roll" ] ] ]

                _ ->
                    []

        trySelects =
            [ viewPassTry model.quantity model.value model.tryToBeat ]

        console =
            let
                history =
                    model.consoleHistory
                        |> List.map
                            (\log ->
                                div []
                                    -- todo: this needs to be a component with below?
                                    [ span [ css [ Tw.flex, Tw.gap_4, Tw.items_start ] ] [ text ">", div [ css [ Tw.whitespace_pre_line ] ] [ text log ] ] ]
                            )
            in
            label
                [ class "console"
                , css
                    [ Tw.flex
                    , Tw.gap_1
                    , Tw.flex_col
                    , Tw.overflow_auto
                    , Tw.p_4
                    , Tw.bg_color Tw.black_200
                    , Tw.border_t_4
                    , Tw.border_color Tw.purple_100
                    , Tw.w_full
                    ]
                ]
                (history
                    ++ [ span [ css [ Tw.flex, Tw.gap_4, Tw.items_start ] ]
                            -- todo: ^^ here
                            [ text ">"
                            , input
                                [ type_ "text"
                                , id "console"
                                , onInput (ViewState << ChangeConsole)
                                , onEnter (SubmitConsole model.consoleValue)
                                , value model.consoleValue
                                , css
                                    [ Css.backgroundColor transparent
                                    , Tw.inline_block
                                    , Tw.w_full
                                    ]
                                ]
                                []
                            ]
                       ]
                )
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
        , button_ [ css [ Tw.col_span_2 ], onClick ((GameAction << Pass) ( quantity, val )) ] [ text "pass" ]
        ]



-- Model Utils


appendHistory : Model -> Try -> List ( Try, Int, String )
appendHistory model try =
    List.append model.tryHistory [ ( try, model.whosTurn, Player.health model.whosTurn model.players ) ]



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
