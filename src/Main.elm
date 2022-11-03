module Main exposing (..)

import Array
import Browser
import Deque
import Dict exposing (..)
import Dict.Extra as DictExtra exposing (..)
import Html exposing (..)
import Html.Attributes exposing (for, id, value)
import Html.Events exposing (..)
import Player exposing (Players, my_players)
import Random
import Set
import Try exposing (Face(..), Pull(..), Quantity(..), Roll, Try)
import Tuple3



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- MODEL
-- Form


type CupState
    = Covered
    | Uncovered



-- WORK ON TURN STATE -> USE BETTER COMBO OF STATE RECORD AND CUSTOM TYPES


type TurnStatus
    = Fresh
    | Pending
    | Looked
    | Rolled
    | Pulled Pull


type alias Model =
    { roll : Roll
    , tryHistory : List ( Try, Int, String )
    , tryToBeat : Try
    , quantity : Quantity
    , value : Face
    , tableWilds : Int
    , cupState : CupState
    , cupLooked : Bool
    , turnStatus : TurnStatus
    , whosTurn : Int -- index of activePlayers
    , players : Players
    , activePlayers : Deque.Deque Int
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


type Msg
    = -- User wants a new roll value displayed.
      RollClick
      -- Runtime is sending a new random die value.∏
    | NewRoll (List Face)
    | Pull
    | ChangeQuantity Quantity
    | ChangeValue Face
    | Pass Try
    | Look


appendHistory : Model -> Try -> List ( Try, Int, String )
appendHistory model try =
    List.append model.tryHistory [ ( try, model.whosTurn, Player.health model.whosTurn model.players ) ]



{- msgView : Msg -> String
   msgView msg =
       case msg of
           RollClick ->
               'roll'
           Pull ->
               'pull'
           Pass ->
               'pass'
           Look ->
               'look'
           _ ->
               ''
-}


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RollClick ->
            case model.turnStatus of
                Pulled _ ->
                    -- reset
                    ( { model | tableWilds = 0 }, Random.generate NewRoll (Try.rollGenerator 5) )

                Fresh ->
                    -- reset
                    ( { model | tableWilds = 0 }, Random.generate NewRoll (Try.rollGenerator 5) )

                _ ->
                    let
                        -- pull the wilds from the roll
                        ( cup, wilds ) =
                            List.partition (\d -> d /= Wilds) model.roll
                    in
                    if List.length cup /= 0 then
                        -- add pulled wilds to the tableWilds count, create new roll with remaining cup
                        ( { model | tableWilds = List.length wilds + model.tableWilds }
                        , Random.generate NewRoll (Try.rollGenerator (List.length cup))
                        )

                    else
                        ( model
                        , Random.generate NewRoll (Try.rollGenerator (List.length model.roll))
                        )

        NewRoll roll ->
            ( { model | roll = roll, turnStatus = Rolled }
            , Cmd.none
            )

        ChangeQuantity quant ->
            ( { model | quantity = quant }
            , Cmd.none
            )

        ChangeValue val ->
            ( { model | value = val }
            , Cmd.none
            )

        Pull ->
            -- check that the roll satisfied the required Try level
            let
                currentRollTry =
                    Try.assessRoll (model.roll ++ List.repeat model.tableWilds Wilds)

                passedTry =
                    Try.getLastTry model.tryHistory

                pullResult =
                    Try.compare currentRollTry passedTry

                test =
                    Debug.log "compare current passed" { compare = pullResult, cur = currentRollTry, passed = passedTry }
            in
            case pullResult of
                HadIt ->
                    -- current player takes a fold
                    -- fresh roll
                    let
                        -- hitPlayer = Player.getPlayer model.players model.whosTurn
                        players =
                            Player.hit model.players model.whosTurn
                    in
                    ( { model | cupState = Uncovered, turnStatus = Pulled HadIt, tryToBeat = ( Two, Twos ), quantity = Two, value = Twos, players = players }
                    , Cmd.none
                    )

                -- )
                Lie ->
                    let
                        -- previous player takes a fold
                        -- fresh roll
                        p =
                            Maybe.withDefault 0 (Deque.last model.activePlayers)

                        players =
                            Player.hit model.players p
                    in
                    ( { model | cupState = Uncovered, turnStatus = Pulled Lie, tryToBeat = ( Two, Twos ), quantity = Two, value = Twos, players = players }
                    , Cmd.none
                    )

        Pass try ->
            -- wrap this whole let in with a case around mustPass try Maybe
            -- if nothing, return command to update with Pull
            let
                ( currentTurn, rest ) =
                    model.activePlayers |> Debug.log "active players" |> Deque.popFront

                newActivePlayers =
                    Deque.pushBack (Maybe.withDefault 0 currentTurn) rest

                newCurrentTurn =
                    Deque.first newActivePlayers

                -- asdf = Debug.log "new current" newCurrentTurn
                -- (newQuantity, newValue) = mustPass try
                mustPassTry =
                    mustPass try

                _ =
                    Debug.log "Must Pass: " mustPassTry
            in
            case mustPassTry of
                {-
                   there is a "next" try to be passed
                -}
                Just t ->
                    ( { model
                        | tryHistory = appendHistory model try
                        , tryToBeat = try
                        , whosTurn = Maybe.withDefault 0 newCurrentTurn
                        , activePlayers = newActivePlayers
                        , quantity = Tuple.first t
                        , value = Tuple.second t
                        , cupState = Covered
                        , cupLooked = False
                        , turnStatus = Pending
                      }
                    , Cmd.none
                    )

                {-
                   the last try passed was as high as you can possibly roll
                   this means we must force a Pull message, evaluate the roll and determine if the passer or the receiver gets a fold
                -}
                Nothing ->
                    update Pull model

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

        -- _ =
        --     Debug.log "Best Try: " (Try.eval (Try.assessRoll model.roll))
        -- UI
        tryToBeat =
            model.tryToBeat

        currentTry =
            h3 [] [ text "Try to Beat", Try.view tryToBeat ]

        currentTurn =
            h3 [] [ text "Current Turn: ", text (Player.getName model.players model.whosTurn) ]

        tryHistory =
            div []
                (model.tryHistory
                    |> List.map (Tuple3.mapAllThree Try.toString (Player.getName model.players) identity)
                    |> List.map (\tup -> div [] [ text (Tuple3.second tup ++ " -> " ++ Tuple3.first tup ++ " " ++ Tuple3.third tup ++ "hp") ])
                )

        cup =
            h2 [] (makeCupHTML model.roll)

        cupButtons =
            div []
                [ button [ onClick Pull ] [ text "Pull" ]
                , button [ onClick Look ] [ text "Look" ]
                ]

        tableWilds =
            h2 [] (makeCupHTML (List.repeat model.tableWilds Wilds))

        rollButtons =
            case model.turnStatus of
                Fresh ->
                    button [ onClick RollClick ] [ text "Roll" ]

                Pulled _ ->
                    button [ onClick RollClick ] [ text "Roll" ]

                Looked ->
                    button [ onClick RollClick ] [ text "Re-Roll" ]

                _ ->
                    span [] []

        trySelect =
            displayTryHTML model.roll model.quantity model.value tryToBeat

        _ =
            Debug.log "tryselect" ( model.roll, model.quantity, model.value )
    in
    case model.turnStatus of
        Fresh ->
            div []
                [ currentTurn
                , tryHistory
                , rollButtons
                ]

        Rolled ->
            div []
                [ currentTry
                , currentTurn
                , tryHistory
                , tableWilds
                , cup
                , rollButtons
                , trySelect
                ]

        Pending ->
            div []
                [ currentTry
                , currentTurn
                , tryHistory
                , tableWilds
                , cupButtons
                , trySelect
                ]

        Looked ->
            div []
                [ currentTry
                , currentTurn
                , tryHistory
                , tableWilds
                , cup
                , rollButtons
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
            div []
                [ currentTry
                , currentTurn
                , tryHistory
                , tableWilds
                , cup
                , pullResult
                , rollButtons
                ]



{- div []
   [ currentTry
   , currentTurn
   , tryHistory
   , cup
   , cupButtons
   , rollButtons
   , trySelect
   ]
-}
-- UTILS
-- Html Utils


makeDieHTML : Face -> Html Msg
makeDieHTML die =
    text ("[" ++ String.fromInt (Try.decodeFace die) ++ "] ")


makeCupHTML : Roll -> List (Html Msg)
makeCupHTML =
    List.map makeDieHTML


rollContainer : Model -> Html Msg
rollContainer _ =
    let
        isFresh =
            True
    in
    if isFresh then
        div [] [ text "yes" ]

    else
        div [] []


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


displayQuantityOptions : Quantity -> List ( Int, Html Msg ) -> List (Html Msg)
displayQuantityOptions quant options =
    options
        |> List.filter (\o -> Tuple.first o >= Try.decodeQuantity quant)
        |> Debug.log "quantity options"
        |> List.map Tuple.second


displayValueOptions : Face -> List ( Int, Html Msg ) -> List (Html Msg)
displayValueOptions value options =
    options
        |> List.filter (\o -> Tuple.first o >= Try.decodeFace value)
        |> Debug.log "value options"
        |> List.map Tuple.second


displayTryHTML : Roll -> Quantity -> Face -> Try -> Html Msg
displayTryHTML roll quantity val tryToBeat =
    let
        something =
            getPassableTrys tryToBeat
    in
    if List.length roll > 0 then
        div []
            [ label [ for "quantity" ] []
            , select
                [ onInput (ChangeQuantity << Try.encodeQuantity << Maybe.withDefault 1 << String.toInt), id "quantity" ]
                (Tuple.first (tryToOptionPair tryToBeat quantity))
            , label [ for "value" ] []
            , select
                [ onInput (ChangeValue << Try.encodeFace << Maybe.withDefault 2 << String.toInt), id "value" ]
                (Tuple.second (tryToOptionPair tryToBeat quantity))
            , button [ onClick (Pass ( quantity, val )) ] [ text "Pass" ]
            ]

    else
        div [] []


tryToOptionPair : Try -> Quantity -> ( List (Html msg1), List (Html msg) )
tryToOptionPair try quantity =
    let
        passableTrysDict =
            getPassableTrys try

        passableQuants =
            Dict.keys passableTrysDict

        toUnique =
            Set.fromList >> Set.toList

        tryValue =
            Try.eval try

        betterTrys =
            Dict.filter (\_ v -> v > tryValue) Try.dictionary

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

        _ =
            Debug.log "options tup" ( qOptions, vOptions )
    in
    ( qOptions, vOptions )



-- fold? betterTrys down to 2, 3, 4 where the value is a list of allowed Face


getPassableTrys try =
    let
        toUnique =
            Set.fromList >> Set.toList

        tryValue =
            Try.eval try

        betterTrys =
            Dict.keys (Dict.filter (\_ v -> v > tryValue) Try.dictionary)

        groupedTrys =
            DictExtra.groupBy Tuple.first betterTrys

        groupedDict =
            groupedTrys
                |> Dict.map (\k v -> List.map Tuple.second v)

        gt =
            Debug.log "grouped trys" groupedDict
    in
    groupedDict



-- Model Utils
-- Misc Utils


mustPass : Try -> Maybe Try
mustPass passedTry =
    -- Maybe.withDefault (Two, Twos) (Try.eval passedTry)
    let
        passedTryVal =
            Try.eval passedTry

        nextTry =
            Try.dictionary
                |> Dict.toList
                -- |> List.map Tuple2.swap
                |> List.filter (\t -> Tuple.second t == (passedTryVal + 1))
                |> List.map Tuple.first
                |> List.head
    in
    case nextTry of
        Just tup ->
            Just (Try.encode tup)

        _ ->
            Nothing
