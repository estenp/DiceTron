module Main exposing (..)

import Browser
import Dict exposing (..)
import Die exposing (..)
import Html exposing (..)
import Html.Attributes exposing (for, id, value)
import Html.Events exposing (..)
import Random



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


type PlayerId
    = PlayerId Int


type alias Model =
    { roll : Roll
    , tryHistory : List ( Try, PlayerId )
    , quantity : Quantity
    , value : Face
    , tableWilds : Int
    , cupState : CupState
    , cupLooked : Bool
    , whosTurn : PlayerId
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { roll = [ Twos, Twos, Twos, Twos, Twos ]
      , tryHistory =
            [ ( ( Two, Twos ), PlayerId 1 )
            , ( ( Three, Threes ), PlayerId 2 )
            ]
      , quantity = Two
      , value = Twos
      , tableWilds = 0
      , cupState = Covered
      , cupLooked = False
      , whosTurn = PlayerId 3
      }
    , Cmd.none
    )


players : Dict number String
players =
    Dict.fromList
        [ ( 1, "Thad" )
        , ( 2, "Pat" )
        ]



-- UPDATE


type Msg
    = -- User wants a new roll value displayed.
      RollClick
      -- Runtime is sending a new random die value.
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
                |> List.map (Tuple.first)
                |> List.head >> Maybe.withDefault (Two, Twos)
                |> tryToHTML
        currentTry = tryToBeat

        tryHistory =
            model.tryHistory
                |> List.map (Tuple.mapBoth tryToString (decodePlayerId >> getPlayer) )
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
            displayTryHTML model.roll model.quantity model.value
    in
    div []
        [ h3 [] [text "Passed Roll: ", currentTry]
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


displayTryHTML : Roll -> Quantity -> Face -> Html Msg
displayTryHTML roll quantity val =
    if List.length roll > 0 then
        div []
            [ label [ for "quantity" ] []
            , select [ onInput (ChangeQuantity << encodeQuantity << Maybe.withDefault 1 << String.toInt), id "quantity" ]
                [ option [ value "1" ] [ text "one" ]
                , option [ value "2" ] [ text "two" ]
                , option [ value "3" ] [ text "three" ]
                , option [ value "4" ] [ text "four" ]
                , option [ value "5" ] [ text "five" ]
                ]
            , label [ for "value" ] []
            , select [ onInput (ChangeValue << encodeFace << Maybe.withDefault 2 << String.toInt), id "value" ]
                [ option [ value "2" ] [ text "twos" ]
                , option [ value "3" ] [ text "threes" ]
                , option [ value "4" ] [ text "fours" ]
                , option [ value "5" ] [ text "fives" ]
                , option [ value "6" ] [ text "sixes" ]
                ]
            , button [ onClick (Pass ( quantity, val )) ] [ text "Pass" ]
            ]

    else
        div [] []



-- Misc Utils


decodePlayerId : PlayerId -> Int
decodePlayerId p =
    case p of
        PlayerId int ->
            int

getPlayer id =
    Maybe.withDefault "Invalid Player ID" (Dict.get id players)
