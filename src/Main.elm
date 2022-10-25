module Main exposing (..)

import Browser
import Dict exposing (..)
import Dict.Extra as DictExtra exposing (..)
import Try exposing (Roll, Try, Quantity(..), Face(..), Pull(..))
import Html exposing (..)
import Html.Attributes exposing (for, id, value)
import Html.Events exposing (..)
import Player exposing (Players, my_players)
import Random
import Array
import Deque
import Set




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

type alias Model =
    { roll : Roll
    , tryHistory : List ( Try, Int )
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
      , quantity = Try.Two
      , value = Try.Twos
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


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RollClick ->
            ( model
            , Random.generate NewRoll (Try.rollGenerator 5)
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
                currentRollTry = Try.assessRoll model.roll
                passedTry = Try.getLastTry model.tryHistory

                pull = Try.compare currentRollTry passedTry

            in
            case pull of
                HadIt ->
                    -- current player takes a fold
                    -- fresh roll

                    let
                        -- hitPlayer = Player.getPlayer model.players model.whosTurn
                        players = Player.hit model.players model.whosTurn
                    in
                        ( { model | cupState = Uncovered, turnStatus = Fresh, quantity = Two, value = Twos, players = players }
                        , Cmd.none
                        )
                    -- )
                Fold ->
                    let
                        -- previous player takes a fold
                        -- fresh roll
                        p = Maybe.withDefault 0 (Deque.last model.activePlayers)
                        players = Player.hit model.players p
                    in
                        ( { model | cupState = Uncovered, turnStatus = Fresh, quantity = Two, value = Twos, players = players }
                        , Cmd.none
                        )


        Pass try ->
        -- wrap this whole let in with a case around mustPass try Maybe
        -- if nothing, return command to update with Pull
            let
                (currentTurn, rest) = model.activePlayers |> Debug.log "active players" |> Deque.popFront
                newActivePlayers = Deque.pushBack (Maybe.withDefault 0 currentTurn) rest
                newCurrentTurn = Deque.first newActivePlayers
                -- asdf = Debug.log "new current" newCurrentTurn

                -- (newQuantity, newValue) = mustPass try

            in
                case mustPass try of
                    {-
                    there is a "next" try to be passed
                    -}
                    Just next ->
                        ( { model
                            | tryHistory = Try.appendHistory model next
                            , whosTurn = Maybe.withDefault 0 newCurrentTurn
                            , activePlayers = newActivePlayers
                            , quantity = Tuple.first next
                            , value = Tuple.second next
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
        model_log = Debug.log "Model" model

        -- _ =
        --     Debug.log "Best Try: " (Try.eval (Try.assessRoll model.roll))


        -- UI
        tryToBeat = Try.getLastTry model.tryHistory

        currentTry =
            if model.turnStatus /= Fresh
            then [ text "Try to Beat", tryToHTML tryToBeat]
            else [text ""]

        tryHistory =
            model.tryHistory
                |> List.map (Tuple.mapBoth Try.toString (Player.getName model.players))
                |> List.map (\tup -> div [] [ text (Tuple.second tup ++ " -> " ++ Tuple.first tup) ])

        cup =
            if model.turnStatus == Looked || model.turnStatus == Rolled
            then
                makeCupHTML model.roll
            else
                []

        cupButtons =
            if model.turnStatus == Pending
            then
                div [] [ button [ onClick Pull ] [ text "Pull" ]
                , button [ onClick Look ] [ text "Look" ]
                ]
            else
                div [] []


        rollButtons =
            case model.turnStatus of
                Fresh ->
                    button [ onClick RollClick ] [ text "Roll" ]
                Pending ->
                    span [] []
                Looked ->
                    button [ onClick RollClick ] [ text "Re-Roll" ]
                Rolled ->
                    span [] []


        trySelect =
            displayTryHTML model.roll model.quantity model.value tryToBeat
    in
    div []
        [ h3 [] currentTry
        , h3 [] [ text "Current Turn: ", text (Player.getName model.players model.whosTurn) ]
        , div [] tryHistory
        , h2 [] cup
        , cupButtons
        , rollButtons
        , trySelect
        ]



-- UTILS
-- Html Utils


tryToHTML : Try -> Html Msg
tryToHTML try =
    try
        |> Try.toString
        |> text
        |> (\node -> div [] [ node ])


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
    Dict.fromList [ ( Try.decodeQuantity One, option [ value "1" ] [ text "one" ] )
    , ( Try.decodeQuantity Two, option [ value "2" ] [ text "two" ] )
    , ( Try.decodeQuantity Three, option [ value "3" ] [ text "three" ] )
    , ( Try.decodeQuantity Four, option [ value "4" ] [ text "four" ] )
    , ( Try.decodeQuantity Five, option [ value "5" ] [ text "five" ] )
    ]


valueOptions : Dict Int (Html msg)
valueOptions =
    Dict.fromList [ ( Try.decodeFace Twos, option [ value "2" ] [ text "twos" ] )
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
        something = getPassableTrys tryToBeat
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
        passableTrysDict = getPassableTrys try
        passableQuants = Dict.keys passableTrysDict
        toUnique = Set.fromList >> Set.toList
        tryValue = Try.eval try
        betterTrys = Dict.filter (\_ v -> v > tryValue) Try.dictionary

        qOptions = List.map (\o -> Maybe.withDefault (option [ value "2" ] [ text "two" ]) (Dict.get o quantityOptions)) passableQuants
        vOptions =
            List.map
                (\o -> Maybe.withDefault (option [ value "2" ] [ text "twos" ])
                (Dict.get o valueOptions)) (Maybe.withDefault [2, 3, 4, 5] (Dict.get (Try.decodeQuantity quantity) passableTrysDict))
        -- _ = Debug.log "options tup" qOptions
    in
        (qOptions, vOptions)


-- fold? betterTrys down to 2, 3, 4 where the value is a list of allowed Face
getPassableTrys try =
    let
        toUnique = Set.fromList >> Set.toList
        tryValue = Try.eval try
        betterTrys = Dict.keys (Dict.filter (\_ v -> v > tryValue) Try.dictionary)

        groupedTrys = DictExtra.groupBy Tuple.first (betterTrys)
        groupedDict = groupedTrys
            |> Dict.map (\k v -> List.map Tuple.second v)
        gt = Debug.log "grouped trys" groupedDict

    in
        groupedDict


-- Model Utils



-- Misc Utils


mustPass : Try -> Maybe Try
mustPass passedTry =
    -- Maybe.withDefault (Two, Twos) (Try.eval passedTry)
    let
        passedTryVal = Try.eval passedTry
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
