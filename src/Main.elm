module Main exposing (..)

import Browser
import Html exposing (..)
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

-- type alias Die = 1 | 2 | 3 | 4 | 5 | 6
type alias Cup = List Int
type alias Model = Cup


init : () -> (Model, Cmd Msg)
init _ =
  ( []
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
  | NewRoll (Cup)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
  {-
    If msg is of type Roll, return a tuple and pass along the model without modifcation
    and pass along a command requesting a random int.
  -}
    Roll ->
      ( model
      , Random.generate NewRoll fiveDice
      )
  {-
    If msg is of type NewRoll, it will have some a die value tied to it.
    Return a tuple and pass along the new value as the model, and an empty command.
  -}
    NewRoll roll ->
      ( roll
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
    [ h2 [] (makeCupHTML model)
    , button [ onClick Roll ] [ text "Roll" ]
    ]


-- UTILS


fiveDice : Random.Generator (Cup)
fiveDice =
    Random.list 5 (Random.int 1 6)

  -- Html Utils

makeDieHTML : Int -> Html msg
makeDieHTML dieVal = text ("[" ++ (String.fromInt dieVal) ++ "] ")


makeCupHTML : Model -> List (Html msg)
makeCupHTML = List.sort >> List.map makeDieHTML
