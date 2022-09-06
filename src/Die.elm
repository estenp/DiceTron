module Die exposing (..)

import Debug exposing (log)
import Dict exposing (Dict)
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


type Pull
    = HadIt
    | Fold


dieGenerator : Random.Generator Die
dieGenerator =
    Random.uniform wild [ two, three, four, five, six ]


rollGenerator : Int -> Random.Generator (List Die)
rollGenerator quantity =
    Random.list quantity dieGenerator



-- type alias Quantity =
--     Int
-- type alias Value =
--     Int


type Quantity
    = Quantity Int


type Value
    = Value Int


type Try
    = Try ( Quantity, Value )


fromTry : Try -> ( Int, Int )
fromTry try =
    case try of
        Try tuple ->
            Tuple.mapBoth
                (\v ->
                    case v of
                        Quantity int ->
                            int
                )
                (\v ->
                    case v of
                        Value int ->
                            int
                )
                tuple


dieToInt : Die -> Int
dieToInt die =
    die.value



{- Determine the highest possible Try out of the current roll -}


assessRoll : Roll -> Try
assessRoll roll =
    roll
        |> List.map dieToInt
        |> frequency
        |> Debug.log "Frequency: "
        |> getBestOfAKind
        |> (\valQuantTup -> Try ( Quantity (Tuple.second valQuantTup), Value (Tuple.first valQuantTup) ))
        |> Debug.log "Highest Roll: "


freqReducer : Int -> Dict Int Int -> Dict Int Int
freqReducer key acc =
    Dict.get key acc
        |> Maybe.withDefault 0
        |> (\count -> Dict.insert key (count + 1) acc)


frequency : List Int -> Dict Int Int
frequency list =
    List.foldl freqReducer Dict.empty list


getBestOfAKind : Dict Int Int -> ( Int, Int )
getBestOfAKind dict =
    let
        wild_count =
            Maybe.withDefault 0 (Dict.get 1 dict)
    in
    dict
        |> Dict.remove 1
        |> Dict.map (\k v -> v + wild_count)
        |> Dict.toList
        |> List.sortBy Tuple.second
        |> List.reverse
        |> List.head
        |> Maybe.withDefault ( 2, 1 )


tryDict =
    Dict.fromList
        [ ( ( 2, 2 ), 1 )
        , ( ( 2, 3 ), 2 )
        , ( ( 2, 4 ), 3 )
        , ( ( 2, 5 ), 4 )
        , ( ( 2, 6 ), 5 )
        , ( ( 3, 2 ), 6 )
        , ( ( 3, 3 ), 7 )
        , ( ( 3, 4 ), 8 )
        , ( ( 3, 5 ), 9 )
        , ( ( 3, 6 ), 10 )
        , ( ( 4, 2 ), 11 )
        , ( ( 4, 3 ), 12 )
        , ( ( 4, 4 ), 13 )
        , ( ( 4, 5 ), 14 )
        , ( ( 4, 6 ), 15 )
        , ( ( 5, 2 ), 16 )
        , ( ( 5, 3 ), 17 )
        , ( ( 5, 4 ), 18 )
        , ( ( 5, 5 ), 19 )
        , ( ( 5, 6 ), 20 )
        ]


compareTry : Try -> Try -> Pull
compareTry currentTry passedTry =
    case Tuple.second (fromTry currentTry) > Tuple.second (fromTry passedTry) of
        True ->
            HadIt

        False ->
            Fold



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
