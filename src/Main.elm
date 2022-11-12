module Main exposing (..)

import Browser
import Css exposing (..)
import Css.Animations
import Css.Global exposing (global)
import Deque
import Dict exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, for, id, style, value)
import Html.Styled.Events exposing (..)
import Player exposing (ActivePlayers, PlayerId, Players)
import Random
import Tailwind.Breakpoints as Break exposing (..)
import Tailwind.Utilities as Tw exposing (..)
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


appendHistory : Model -> Try -> List ( Try, Int, String )
appendHistory model try =
    List.append model.tryHistory [ ( try, model.whosTurn, Player.health model.whosTurn model.players ) ]


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



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    let
        model_log =
            Debug.log "Model" model

        -- UI
        isGameOver =
            Deque.length model.activePlayers <= 1

        currentTry =
            h3 [] [ text "Try to Beat", Try.view model.tryToBeat ]

        currentTurn =
            h3 [] [ text "Current Turn: ", text (Player.getName model.players model.whosTurn), playerStats ]

        playerStats =
            model.players
                |> Dict.toList
                |> List.map Tuple.second
                |> List.map (Player.view model.whosTurn)
                |> stats_

        tryHistory =
            div [ class "history" ]
                (model.tryHistory
                    |> List.map (Tuple3.mapAllThree Try.toString (Player.getName model.players) identity)
                    |> List.map (\tup -> div [] [ text (Tuple3.second tup ++ " -> " ++ Tuple3.first tup ++ " " ++ Tuple3.third tup ++ "hp") ])
                )

        cup =
            h2
                [ class "roll"
                , css
                    [ Css.animationName
                        (Css.Animations.keyframes
                            [ ( 0, [ Css.Animations.opacity (Css.int 0) ] )
                            , ( 20, [ Css.Animations.opacity (Css.int 30) ] )
                            , ( 80, [ Css.Animations.opacity (Css.int 70) ] )
                            , ( 100, [ Css.Animations.opacity (Css.int 100) ] )
                            ]
                        )
                    , Css.animationIterationCount (Css.int 1)
                    , Css.animationDuration (4000 |> ms)
                    ]
                , css [ Tw.flex, Tw.justify_evenly ]
                ]
                (viewCup model.roll)

        cupButtons =
            div []
                [ button_ [ onClick (GameEvent Pull) ] [ text "Pull" ]
                , button_ [ onClick (GameEvent Look) ] [ text "Look" ]
                ]

        tableWilds =
            h2 [] (viewCup (List.repeat model.tableWilds Wilds))

        rollButtons =
            div []
                [ case model.turnStatus of
                    Fresh ->
                        button_ [ onClick (Dice RollClick) ] [ text "Roll" ]

                    Pulled _ ->
                        button_ [ onClick (Dice RollClick) ] [ text "Roll" ]

                    Looked ->
                        button_ [ onClick (Dice RollClick) ] [ text "Re-Roll" ]

                    _ ->
                        span [] []
                ]

        trySelect =
            if List.length model.roll > 0 then
                viewPassTry model.quantity model.value model.tryToBeat

            else
                span [] []
    in
    if not isGameOver then
        div []
            [ global globalStyles
            , case model.turnStatus of
                Fresh ->
                    mainContainer_
                        [ playerStats
                        , tryHistory
                        , rollButtons
                        ]

                Rolled ->
                    mainContainer_
                        [ playerStats
                        , tryHistory
                        , tableWilds
                        , cup
                        , rollButtons
                        , currentTry
                        , trySelect
                        ]

                Pending ->
                    mainContainer_
                        [ playerStats
                        , tryHistory
                        , tableWilds
                        , cupButtons
                        , currentTry
                        , trySelect
                        ]

                Looked ->
                    mainContainer_
                        [ playerStats
                        , tryHistory
                        , tableWilds
                        , cup
                        , rollButtons
                        , currentTry
                        , trySelect
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
                    mainContainer_
                        [ playerStats
                        , tryHistory
                        , tableWilds
                        , cup
                        , pullResult
                        , rollButtons
                        , currentTry
                        ]
            ]

    else
        div []
            [ text ("Game over." ++ Player.getName model.players (Maybe.withDefault 0 (Deque.first model.activePlayers)) ++ " wins!")
            ]



-- UTILS
-- Html Utils


mainContainer_ =
    div
        [ class "main"
        ]


inputBaseStyles : List Style
inputBaseStyles =
    [ Tw.border_solid, Tw.border_2, Tw.px_4, Tw.py_2, Tw.border_gray_400 ]


button_ =
    styled button
        ((color (hex "907AD6")) :: (List.concat [ inputBaseStyles, [ Tw.bg_blue_50, Tw.rounded_md, sm [ Tw.w_52 ], Tw.w_full ] ]))


select_ =
    styled select
        (List.concat [ inputBaseStyles, [] ])


stats_ =
    div [ class "stats", css [ Tw.flex, Tw.justify_evenly, Tw.p_4, Tw.my_4, Tw.shadow_sm ] ]


viewDie : Face -> Html Msg
viewDie die =
    div
        [ css
            (Tw.text_center
                :: Tw.w_40
                :: Tw.inline_block
                :: Tw.p_2
                :: Tw.m_2
                :: [ Tw.text_9xl
                   , Tw.border_4
                   , Tw.rounded_2xl
                   ]
            )
        , css [ borderColor (hex "DFEEE3"), color (hex "DFEEE3")   ]
        ]
        [ text (String.fromInt (Try.decodeFace die))
        ]


viewCup : Roll -> List (Html Msg)
viewCup =
    List.map viewDie


{- Takes a Quantity, Face, and a Try to best, and returns HTML for Try HTML `select`'s -}


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
    div [ class "try" ]
        [ div []
            [ label [ for "quantity" ] []
            , select_ [ onInput changeQuantity, id "quantity" ] quantities
            , label [ for "value" ] []
            , select_ [ onInput changeValue, id "value" ] values
            ]
        , button_ [ onClick ((GameEvent << Pass) ( quantity, val )) ] [ text "Pass" ]
        ]



{- Takes a Try and a Quantity and returns a tuple of a list of Quantity HTML options and a list of Face HTML options -}


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
