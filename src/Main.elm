module Main exposing (..)

import Browser
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

-- Dice
type Die
    = One
    | Two
    | Three
    | Four
    | Five
    | Six


type Cup
    = Cup Die Die Die Die Die


die : Random.Generator Die
die =
    Random.uniform One [ Two, Three, Four, Five, Six ]


cup : Random.Generator Cup
cup =
    Random.map5 Cup die die die die die


dieToInt : Die -> Int
dieToInt d =
    case d of
        One ->
            1

        Two ->
            2

        Three ->
            3

        Four ->
            4

        Five ->
            5

        Six ->
            6

intToDie : Int -> Die
intToDie d =
    case d of
      1 ->
        One

      2 ->
        Two

      3 ->
        Three

      4 ->
        Four

      5 ->
        Five

      6 ->
        Six

      _ ->
        Two

cupToList : Cup -> List Die
cupToList c =
  case c of
    Cup slot1 slot2 slot3 slot4 slot5 ->
      [slot1, slot2, slot3, slot4, slot5]

sortCup : Cup -> List Die
sortCup c =
  (cupToList c)
    |> List.map dieToInt
    |> List.sort
    |> List.map intToDie

-- Form
type FormField
    = Quantity Int
    | Value Int


type alias Model =
    { cup : Cup
    , quantity : FormField
    , value : FormField
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { cup = Cup Two Two Two Two Two
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


type Msg =
    -- User wants a new roll value displayed.
      Roll
      -- Runtime is sending a new random die value.
    | NewRoll Cup
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
        Roll ->
            ( model
            , Random.generate NewRoll cup
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
    div []
        [ h2 [] (makeCupHTML model.cup)
        , button [ onClick Roll ] [ text "Roll" ]
        , displaySelectsHTML model.cup
        ]



-- UTILS


-- Html Utils


makeDieHTML : Die -> Html Msg
makeDieHTML dieVal =
    text ("[" ++ String.fromInt (dieToInt dieVal) ++ "] ")


makeCupHTML : Cup -> List (Html Msg)
makeCupHTML =
    sortCup >> List.map makeDieHTML


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


displaySelectsHTML : Cup -> Html Msg
displaySelectsHTML cup1 =
    if List.length (cupToList cup1) > 0 then
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
