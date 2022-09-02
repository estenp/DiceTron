module Die exposing (..)

import Debug exposing (log)
import Random



-- Dice


type alias Die =
    { value : Int, validAs : List Int }


wild : Die
wild =
    { value = 1, validAs = [ 2, 3, 4, 5, 6 ] }


two : Die
two =
    { value = 2, validAs = [ 2 ] }


three : Die
three =
    { value = 3, validAs = [ 3 ] }


four : Die
four =
    { value = 4, validAs = [ 4 ] }


five : Die
five =
    { value = 5, validAs = [ 5 ] }


six : Die
six =
    { value = 6, validAs = [ 6 ] }


type alias Roll =
    List Die


dieGenerator : Random.Generator Die
dieGenerator =
    Random.uniform wild [ two, three, four, five, six ]


rollGenerator : Int -> Random.Generator (List Die)
rollGenerator quantity =
    -- Random.map5 Roll dieGenerator dieGenerator dieGenerator dieGenerator dieGenerator
    Random.list quantity dieGenerator



-- rollToList : Roll -> List Die
-- rollToList r =
--     case r of
--         Roll slot1 slot2 slot3 slot4 slot5 ->
--             [ slot1, slot2, slot3, slot4, slot5 ]
-- sortCup : Roll -> Roll
-- sortCup c =
--     List.sort (rollToList c)
-- Try


type alias Quantity =
    Int


type alias Value =
    Int


type alias Try =
    ( Quantity, Value )


dieToInt : Die -> Int
dieToInt die =
    die.value


assessRoll : Roll -> List Int
assessRoll roll =
    roll
        |> List.map (\die -> die.value)
        |> List.sort
        |> (\list -> Debug.log "mylist" list)


tryValues =
    { twoTwos = ( 1, 2, 2 )
    , twoThrees = ( 2, 2, 3 )
    , twoFours = ( 3, 2, 4 )
    }



{-
   type DieValue
     = Two
     | Three
     | Four
     | Five
     | Six

   type Die
     = Natural DieValue
     | Wild (Maybe DieValue)

   assign : DieValue -> Die -> Die
   assign value wild =
     case wild of
       Wild Nothing ->
         Wild (Just value)
       _ ->
         wild

   cup = [ Natural Two, Natural Two, Wild Nothing, Natural Four, Natural Four ]

   decode : Die -> Maybe number
   decode die =
       case die of
           Natural val ->
               case val of
                   Two ->
                       Just 2
                   Three ->
                       Just 3
                   Four ->
                       Just 4
                   Five ->
                       Just 5
                   Six ->
                       Just 6
           Wild val ->
               case val of
                   Nothing ->
                       Nothing
                   Just value ->
                       decode (Natural value)

   decodedCup : List (Maybe number)
   decodedCup =
       List.map decode cup

   d = Debug.log "cup" decodedCup
-}
