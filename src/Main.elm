module Main exposing (..)

-- import Css.Transitions

import Browser
import Browser.Dom as Dom
import Browser.Events exposing (onKeyDown)
import Css exposing (..)
import Css.Animations exposing (..)
import Css.Global exposing (global)
import Deque
import Dict exposing (..)
import Face exposing (view)
import Html
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, for, id, type_, value)
import Html.Styled.Events exposing (..)
import Json.Decode as Decode
import Player exposing (ActivePlayers, PlayerId, Players)
import Random
import StyledElements exposing (..)
import Tailwind.Breakpoints as Break
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Task
import Try exposing (Face(..), Pull(..), Quantity(..), Roll, Try)
import Tuple3



-- CONSTANTS, DUMMY DATA


my_players : Players
my_players =
    Dict.fromList
        [ ( 1
          , { id = 1
            , name = "Rick"
            , hp = 1
            , maxHp = 5
            }
          )
        , ( 2
          , { id = 2
            , name = "Pat"
            , hp = 5
            , maxHp = 5
            }
          )
        , ( 3
          , { id = 3
            , name = "Esten"
            , hp = 5
            , maxHp = 5
            }
          )
        ]


quantityOptions : Dict Int (Html msg)
quantityOptions =
    Dict.fromList
        [ ( Try.decodeQuantity One, option [ value "1" ] [ text "one" ] )
        , ( Try.decodeQuantity Two, option [ value "2" ] [ text "two" ] )
        , ( Try.decodeQuantity Three, option [ value "3" ] [ text "three" ] )
        , ( Try.decodeQuantity Four, option [ value "4" ] [ text "four" ] )
        , ( Try.decodeQuantity Five, option [ value "5" ] [ text "five" ] )
        ]


valueOptions : Dict Int (Html msg)
valueOptions =
    Dict.fromList
        [ ( Try.decodeFace Twos, option [ value "2" ] [ text "twos" ] )
        , ( Try.decodeFace Threes, option [ value "3" ] [ text "threes" ] )
        , ( Try.decodeFace Fours, option [ value "4" ] [ text "fours" ] )
        , ( Try.decodeFace Fives, option [ value "5" ] [ text "fives" ] )
        , ( Try.decodeFace Sixes, option [ value "6" ] [ text "sixes" ] )
        ]



-- MODEL
-- Form


type CupState
    = Covered
    | Uncovered


type TurnStatus
    = Fresh
    | Pending
    | Looked
    | Rolled
    | Pulled Pull


type alias History =
    List
        { playerId : PlayerId
        }


type alias Model =
    { -- dice state
      roll : Roll

    -- view state
    , quantity : Quantity
    , value : Face
    , tableWilds : Int
    , tryHistory : List ( Try, Int, String )
    , tryToBeat : Try
    , consoleHistory : List String
    , consoleValue : String
    , consoleIsVisible : Bool

    -- turn state
    , cupState : CupState
    , cupLooked : Bool
    , turnStatus : TurnStatus
    , whosTurn : Int -- index of activePlayers

    -- player state
    , players : Players
    , activePlayers : ActivePlayers
    }


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
      , turnStatus = Fresh
      , consoleHistory = []
      , consoleValue = ""
      , consoleIsVisible = False
      , whosTurn = 1
      , players = my_players
      , activePlayers = my_players |> Dict.keys |> Deque.fromList
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


type GameEvent
    = Pull
    | Pass Try
    | Look


type Dice
    = -- User wants a new roll value displayed.
      -- Should this be a GameEvent variant?
      RollClick
      -- Runtime is sending a new random die value.∏
    | NewRoll (List Face)


type Msg
    = Dice Dice
    | ViewState ViewState
    | GameEvent GameEvent
    | SubmitConsole String
    | NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        -- dice messages
        Dice subMsg ->
            case subMsg of
                RollClick ->
                    case model.turnStatus of
                        Pulled _ ->
                            -- reset
                            ( { model | tableWilds = 0 }, Random.generate (Dice << NewRoll) (Try.rollGenerator 5) )

                        Fresh ->
                            -- reset
                            ( { model | tableWilds = 0 }, Random.generate (Dice << NewRoll) (Try.rollGenerator 5) )

                        _ ->
                            let
                                -- pull the wilds from the roll
                                ( cup, wilds ) =
                                    List.partition (\d -> d /= Wilds) model.roll
                            in
                            if List.length cup /= 0 then
                                -- add pulled wilds to the tableWilds count, create new roll with remaining cup
                                ( { model | tableWilds = List.length wilds + model.tableWilds }
                                , Random.generate (Dice << NewRoll) (Try.rollGenerator (List.length cup))
                                )

                            else
                                ( model
                                , Random.generate (Dice << NewRoll) (Try.rollGenerator (List.length model.roll))
                                )

                NewRoll roll ->
                    ( { model | roll = roll, turnStatus = Rolled }
                    , Cmd.none
                    )

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
        GameEvent subMsg ->
            case subMsg of
                Pull ->
                    -- check that the roll satisfied the required Try level
                    let
                        currentRollTry =
                            Try.assessRoll (model.roll ++ List.repeat model.tableWilds Wilds)

                        passedTry =
                            Try.getLastTry model.tryHistory

                        pullResult =
                            Try.compare currentRollTry passedTry
                    in
                    case pullResult of
                        HadIt ->
                            -- current player takes a fold
                            -- fresh roll
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
                            ( { model | cupState = Uncovered, turnStatus = Pulled HadIt, tryToBeat = ( Two, Twos ), quantity = Two, value = Twos, players = players, activePlayers = activePlayers, whosTurn = newWhosTurn }
                            , Cmd.none
                            )

                        -- )
                        Lie ->
                            -- previous player takes a fold
                            -- fresh roll
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
                            ( { model | cupState = Uncovered, turnStatus = Pulled Lie, tryToBeat = ( Two, Twos ), quantity = Two, value = Twos, players = players, activePlayers = activePlayers }
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
                                , turnStatus = Pending
                              }
                            , Cmd.none
                            )

                        -- The last try passed was as high as you can possibly roll this means we must force a Pull message,
                        -- evaluate the roll and determine if the passer or the receiver gets a fold.
                        Nothing ->
                            update (GameEvent Pull) model

                Look ->
                    ( { model | cupState = Uncovered, cupLooked = True, turnStatus = Looked }
                    , Cmd.none
                    )

        SubmitConsole command ->
            -- validate command
            -- add to history log
            let
                tag =
                    String.left 2 command

                modelWithNewEntry entry =
                    { model | consoleHistory = model.consoleHistory ++ entry, consoleValue = "" }
            in
            case tag of
                "/c" ->
                    ( modelWithNewEntry [ String.dropLeft 2 command ], Cmd.none )

                _ ->
                    case command of
                        "roll" ->
                            Tuple.mapSecond (\_ -> Task.attempt (\_ -> NoOp) (Dom.focus "console")) (update (Dice RollClick) (modelWithNewEntry [ command ]))

                        "look" ->
                            update (GameEvent Look) (modelWithNewEntry [ command ])

                        "pull" ->
                            update (GameEvent Pull) (modelWithNewEntry [ command ])

                        "pass" ->
                            -- todo: this will have additional payload with q and v, check those against the minimum and return minumum if they are too low
                            update (GameEvent (Pass ( model.quantity, model.value ))) (modelWithNewEntry [ command ])

                        "" ->
                            ( modelWithNewEntry [ "" ], Cmd.none )

                        _ ->
                            ( modelWithNewEntry [ command, "Command not recognized." ], Cmd.none )

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

        cup =
            section
                [ class "roll"
                , css [ Tw.flex, Tw.justify_evenly ]
                ]
                (viewCup model.roll)

        cupButtons =
            div [ css [ Tw.grid, Tw.grid_cols_2, Tw.gap_4, Tw.w_full ] ]
                [ button_ [ onClick (GameEvent Pull) ] [ text "pull" ]
                , button_ [ onClick (GameEvent Look) ] [ text "look" ]
                ]

        tableWilds =
            if model.tableWilds > 0 then
                section [ id "wilds" ] (viewCup (List.repeat model.tableWilds Wilds))

            else
                span [] []

        rollButtons =
            div []
                [ case model.turnStatus of
                    Fresh ->
                        button_ [ onClick (Dice RollClick) ] [ text "roll" ]

                    Pulled _ ->
                        button_ [ onClick (Dice RollClick) ] [ text "roll" ]

                    Looked ->
                        button_ [ onClick (Dice RollClick) ] [ text "re-roll" ]

                    _ ->
                        span [] []
                ]

        trySelect =
            if List.length model.roll > 0 then
                viewPassTry model.quantity model.value model.tryToBeat

            else
                span [] []

        console =
            let
                history =
                    model.consoleHistory
                        |> List.map
                            (\log ->
                                div []
                                    [ span [ css [ Tw.flex, Tw.gap_4, Tw.items_center ] ] [ text ">", div [] [ text log ] ] ]
                            )
            in
            label [ class "console", css [ Tw.flex, Tw.gap_2, Tw.flex_col, Tw.overflow_auto, Tw.p_4, Tw.bg_color Tw.black_200, Tw.border_t_4, Tw.border_color Tw.purple_100, Tw.w_full ] ]
                (history
                    ++ [ span [ css [ Tw.flex, Tw.gap_4, Tw.items_center ] ]
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
                                    , Tw.h_8
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
                case model.turnStatus of
                    Fresh ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            [ rollButtons
                            ]
                        , console
                        ]

                    Rolled ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            [ tableWilds
                            , cup
                            , rollButtons
                            , trySelect
                            ]
                        , console
                        ]

                    Pending ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            [ tableWilds
                            , cupButtons
                            , trySelect
                            ]
                        , console
                        ]

                    Looked ->
                        [ logo
                        , playerStats
                        , tryHistory
                        , playArea
                            [ tableWilds
                            , cup
                            , rollButtons
                            , trySelect
                            ]
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
                            [ tableWilds
                            , cup
                            , pullResult
                            , rollButtons
                            ]
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


viewCup : Roll -> List (Html Msg)
viewCup =
    List.map Face.view


{-| Takes a Quantity, Face, and a Try to best, and returns HTML for Try HTML `select`'s
-}
viewPassTry : Quantity -> Face -> Try -> Html Msg
viewPassTry quantity val tryToBeat =
    let
        ( quantities, values ) =
            availTrySelectOpts tryToBeat quantity

        changeQuantity =
            (ViewState << ChangeQuantity) << Try.encodeQuantity << Maybe.withDefault 1 << String.toInt

        changeValue =
            (ViewState << ChangeValue) << Try.encodeFace << Maybe.withDefault 2 << String.toInt
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
        , button_ [ css [ Tw.col_span_2 ], onClick ((GameEvent << Pass) ( quantity, val )) ] [ text "pass" ]
        ]


{-| Takes a Try and a Quantity and returns a tuple of a list of Quantity HTML options and a list of Face HTML options
todo: this is kinda dumb -> try and quantity? should decode Quantity from Try instead?
-}
availTrySelectOpts : Try -> Quantity -> ( List (Html msg1), List (Html msg) )
availTrySelectOpts try quantity =
    let
        passableTrysDict =
            Try.getPassableTrys try

        passableQuants =
            Dict.keys passableTrysDict

        qOptions =
            List.map
                (\o ->
                    Maybe.withDefault (option [ value "2" ] [ text "two" ])
                        (Dict.get o quantityOptions)
                )
                passableQuants

        vOptions =
            List.map
                (\o ->
                    Maybe.withDefault (option [ value "2" ] [ text "twos" ])
                        (Dict.get o valueOptions)
                )
                (Maybe.withDefault [ 2, 3, 4, 5 ] (Dict.get (Try.decodeQuantity quantity) passableTrysDict))
    in
    ( qOptions, vOptions )



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
