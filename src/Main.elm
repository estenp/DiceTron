module Main exposing (..)

import Browser
import Dict exposing (Dict)
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


type TryDescript
    = Quantity Int
    | Value Int


type CupState
    = Covered
    | Uncovered


type alias Model =
    { roll : Roll
    , currentTry : Try
    , quantity : TryDescript
    , value : TryDescript
    , tableWilds : Int
    , cupState : CupState
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { roll = [ two, two, two, two, two ]
      , currentTry = ( 2, 2 )
      , quantity = Quantity 2
      , value = Value 2
      , tableWilds = 0
      , cupState = Uncovered
      }
    , Cmd.none
    )



-- UPDATE


type Msg
    = -- User wants a new roll value displayed.
      RollClick
      -- Runtime is sending a new random die value.
    | NewRoll (List Die)
    | Pull
    | ChangeQuantity Int
    | ChangeValue Int
    | Pass Try


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        {-
           If msg is of type Roll, return a tuple and pass along the model without modifcation
           and pass along a command requesting a random int.
        -}
        RollClick ->
            ( model
            , Random.generate NewRoll (rollGenerator 5)
            )

        {-
           If msg is of type NewRoll, it will have some a die value tied to it.
           Return a tuple and pass along the new value as the model, and an empty command.
        -}
        NewRoll roll ->
            ( { model | roll = roll }
            , Cmd.none
            )

        ChangeQuantity quant ->
            ( { model | quantity = Quantity quant }
            , Cmd.none
            )

        ChangeValue val ->
            ( { model | value = Value val }
            , Cmd.none
            )

        Pull ->
            ( { model | cupState = Uncovered }
            , Cmd.none
            )

        Pass try ->
            ( { model | currentTry = try, cupState = Covered }
            , Cmd.none
            )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    let
        assess =
            assessRoll model.roll

        value =
            Debug.log "Best Try: " (Dict.get assess tryDict)

        -- UI
        cup =
            case model.cupState of
                Covered ->
                    [ button [ onClick Pull ] [ text "Pull" ] ]

                Uncovered ->
                    makeCupHTML model.roll

        selects =
            displaySelectsHTML model.roll model.quantity model.value
    in
    div []
        [ h2 [] cup
        , button [ onClick RollClick ] [ text "Roll" ]
        , selects
        ]



-- UTILS
-- Html Utils


makeDieHTML : Die -> Html Msg
makeDieHTML die =
    text ("[" ++ String.fromInt die.value ++ "] ")


makeCupHTML : Roll -> List (Html Msg)
makeCupHTML =
    List.map makeDieHTML


rollContainer : Model -> Html Msg
rollContainer model =
    let
        isFresh =
            True
    in
    if isFresh then
        div [] [ text "yes" ]

    else
        div [] []


displaySelectsHTML : Roll -> TryDescript -> TryDescript -> Html Msg
displaySelectsHTML roll quantity val =
    if List.length roll > 0 then
        div []
            [ label [ for "quantity" ] []
            , select [ id "quantity" ]
                [ option [ value "2" ] [ text "two" ]
                , option [ value "3" ] [ text "three" ]
                , option [ value "4" ] [ text "four" ]
                , option [ value "5" ] [ text "five" ]
                ]
            , label [ for "value" ] []
            , select [ id "value" ]
                [ option [ value "2" ] [ text "two" ]
                , option [ value "3" ] [ text "three" ]
                , option [ value "4" ] [ text "four" ]
                , option [ value "5" ] [ text "five" ]
                ]
            , button [ onClick (Pass (quantity, val)) ] [ text "Pass" ]
            ]

    else
        div [] []
