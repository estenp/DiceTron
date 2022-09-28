module Main exposing (..)

import Browser
import Dict exposing (..)
import Roll exposing (..)
import Html exposing (..)
import Html.Attributes exposing (for, id, value)
import Html.Events exposing (..)
import Player exposing (..)
import Random
import Tuple2
import Array



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
players : List Player
players =
    makePlayers my_players

playersArray = Array.fromList players

type CupState
    = Covered
    | Uncovered


type alias Model =
    { roll : Roll
    , tryHistory : List ( Try, Int )
    , quantity : Quantity
    , value : Face
    , tableWilds : Int
    , cupState : CupState
    , cupLooked : Bool
    , whosTurn : Int
    , players : List Player
    , activePlayers : List Player
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { roll = [ Twos, Twos, Threes, Threes, Wilds ]
      , tryHistory =
            [ ( ( Two, Twos ), 1 )
            , ( ( Three, Threes ), 2 )
            ]
      , quantity = Two
      , value = Twos
      , tableWilds = 0
      , cupState = Covered
      , cupLooked = False
      , whosTurn = 3
      , players = players
      , activePlayers = players
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
            , Random.generate NewRoll (rollGenerator 5)
            )

        NewRoll roll ->
            ( { model | roll = roll }
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
            let
                currentRollTry = assessRoll model.roll
            in
            -- placeholder.. update so a command(?) runs that assesses the currentTry and the tryToBeat
            ( { model | cupState = Uncovered }
            , Cmd.none
            )

        Pass try ->
            ( { model
                | tryHistory = List.append model.tryHistory [ ( try, model.whosTurn ) ]
                , cupState = Covered
                , cupLooked = False
              }
            , Cmd.none
            )

        Look ->
            ( { model | cupState = Uncovered, cupLooked = True }
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
        _ =
            Debug.log "Best Try: " (evalTry (assessRoll model.roll))

        -- UI
        tryToBeat =
            model.tryHistory
                |> List.reverse
                |> List.map Tuple.first
                |> List.head
                >> Maybe.withDefault ( Two, Twos )

        currentTry =
            tryToHTML tryToBeat

        tryHistory =
            model.tryHistory
                |> List.map (Tuple.mapBoth tryToString (getName players))
                |> List.map (\tup -> div [] [ text (Tuple.second tup ++ " -> " ++ Tuple.first tup) ])

        cup =
            case model.cupState of
                Covered ->
                    [ button [ onClick Pull ] [ text "Pull" ]
                    , button [ onClick Look ] [ text "Look" ]
                    ]

                Uncovered ->
                    makeCupHTML model.roll

        rollButtons =
            if model.cupLooked then
                button [ onClick RollClick ] [ text "Roll" ]

            else
                span [] []

        trySelect =
            displayTryHTML model.roll model.quantity model.value tryToBeat
    in
    div []
        [ h3 [] [ text "Passed Roll: ", currentTry ]
        , div [] tryHistory
        , h2 [] cup
        , rollButtons
        , trySelect
        ]



-- UTILS
-- Html Utils


tryToHTML : Try -> Html Msg
tryToHTML try =
    try
        |> tryToString
        |> text
        |> (\node -> div [] [ node ])


makeDieHTML : Face -> Html Msg
makeDieHTML die =
    text ("[" ++ String.fromInt (decodeFace die) ++ "] ")


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


quantityOptions =
    [ ( decodeQuantity One, option [ value "1" ] [ text "one" ] )
    , ( decodeQuantity Two, option [ value "2" ] [ text "two" ] )
    , ( decodeQuantity Three, option [ value "3" ] [ text "three" ] )
    , ( decodeQuantity Four, option [ value "4" ] [ text "four" ] )
    , ( decodeQuantity Five, option [ value "5" ] [ text "five" ] )
    ]


valueOptions =
    [ ( decodeFace Twos, option [ value "2" ] [ text "twos" ] )
    , ( decodeFace Threes, option [ value "3" ] [ text "threes" ] )
    , ( decodeFace Fours, option [ value "4" ] [ text "fours" ] )
    , ( decodeFace Fives, option [ value "5" ] [ text "fives" ] )
    , ( decodeFace Sixes, option [ value "6" ] [ text "sixes" ] )
    ]


displayQuantityOptions : Quantity -> List ( Int, Html Msg ) -> List (Html Msg)
displayQuantityOptions quant options =
    options
        |> List.filter (\o -> Tuple.first o >= decodeQuantity quant)
        |> List.map Tuple.second

displayValueOptions : Face -> List ( Int, Html Msg ) -> List (Html Msg)
displayValueOptions value options =
    options
        |> List.filter (\o -> Tuple.first o > decodeFace value)
        |> List.map Tuple.second


displayTryHTML : Roll -> Quantity -> Face -> Try -> Html Msg
displayTryHTML roll quantity val tryToBeat =
    if List.length roll > 0 then
        div []
            [ label [ for "quantity" ] []
            , select [ onInput (ChangeQuantity << encodeQuantity << Maybe.withDefault 1 << String.toInt), id "quantity" ]
                (displayQuantityOptions (Tuple.first tryToBeat) quantityOptions
                )
            , label [ for "value" ] []
            , select [ onInput (ChangeValue << encodeFace << Maybe.withDefault 2 << String.toInt), id "value" ]
                (displayValueOptions (Tuple.second tryToBeat) valueOptions)
            , button [ onClick (Pass ( quantity, val )) ] [ text "Pass" ]
            ]

    else
        div [] []



-- Misc Utils


mustPass : Try -> Try
mustPass passedTry =
    -- Maybe.withDefault (Two, Twos) (evalTry passedTry)
    let
        passedTryVal =
            Maybe.withDefault 1 (evalTry passedTry)
    in
    tryDict
        |> Dict.toList
        -- |> List.map Tuple2.swap
        |> List.filter (\t -> Tuple.second t == (passedTryVal + 1))
        |> List.map Tuple.first
        |> List.head
        |> Maybe.withDefault ( 2, 2 )
        |> encodeTry
