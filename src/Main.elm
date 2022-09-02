module Main exposing (..)

import Browser
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


type FormField
    = Quantity Int
    | Value Int


type alias Model =
    { cup : Roll
    , quantity : FormField
    , value : FormField
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { cup = [ two, two, two, two, two ]
      , quantity = Quantity 2
      , value = Value 2
      }
    , Cmd.none
    )



-- UPDATE
{-
   update can receive messages from both the view, as well as the runtime.
   It receives runtime messages after requesting them via a command.

   A command is basically code we want to run within the runtime, because it's side effecty/impure.
-}


type Msg
    = -- User wants a new roll value displayed.
      RollClick
      -- Runtime is sending a new random die value.
    | NewRoll (List Die)
    | Pull
    | ChangeQuantity Int
    | ChangeValue Int


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
            ( { model | cup = roll }
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
            ( model
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
      assess = assessRoll model.cup

    in
      div []
        [ h2 [] (makeCupHTML model.cup)
        , button [ onClick RollClick ] [ text "Roll" ]
        , displaySelectsHTML model.cup
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


displaySelectsHTML : Roll -> Html Msg
displaySelectsHTML cup1 =
    if List.length cup1 > 0 then
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
            , button [ onClick Pull ] [ text "Pull" ]
            ]

    else
        div [] []
