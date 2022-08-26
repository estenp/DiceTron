module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Events exposing (..)
import Random


-- MAIN


main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }



-- MODEL


type alias Model = { dieFace : Int }


init : () -> (Model, Cmd Msg)
init _ =
  ( Model 1
  , Cmd.none
  )


-- UPDATE

{-
  update can receive messages from both the view, as well as the runtime.
  It receives runtime messages after requesting them via a command.
-}

type Msg =
  -- User wants a new roll value displayed.
  Roll
  -- Runtime is sending a new random die value.
  | NewValue Int

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
  {-
    If msg is of type Roll, return a tuple and pass along the model without modifcation
    and pass along a command requesting a random int.
  -}
    Roll ->
      ( model
      , Random.generate NewValue (Random.int 1 6)
      )
  {-
    If msg is of type NewValue, it will have some a die value tied to it.
    Return a tuple and pass along the new value as the model, and an empty command.
  -}
    NewValue value ->
      (
        { model | dieFace = value }
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
    [ h1 [] [ text (String.fromInt model.dieFace) ]
    , button [ onClick Roll ] [ text "Roll" ]
    ]
