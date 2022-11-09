module Try exposing (Face(..), Pull(..), Quantity(..), Roll, Try, assessRoll, compare, decode, decodeFace, decodeQuantity, dictionary, dieGenerator, encode, encodeFace, encodeQuantity, eval, fromScore, getLastTry, getPassableTrys, mustPass, rollGenerator, toString, view)

import Dict exposing (Dict)
import Html exposing (..)
import Dict.Extra as DictExtra exposing (..)
import Random
import Tuple2
import Tuple3



-- TYPES


type alias Roll =
    List Face


type Pull
    = HadIt
    | Lie


type alias Try =
    ( Quantity, Face )


type Face
    = Wilds
    | Twos
    | Threes
    | Fours
    | Fives
    | Sixes


type Quantity
    = One
    | Two
    | Three
    | Four
    | Five



-- GENERATORS


dieGenerator : Random.Generator Face
dieGenerator =
    Random.uniform Wilds [ Twos, Threes, Fours, Fives, Sixes ]


rollGenerator : Int -> Random.Generator (List Face)
rollGenerator quantity =
    Random.list quantity dieGenerator



-- UTILS


dictionary : Dict ( Int, Int ) Int
dictionary =
    Dict.fromList
        [ ( ( decodeQuantity Two, decodeFace Twos ), 1 )
        , ( ( decodeQuantity Two, decodeFace Threes ), 2 )
        , ( ( decodeQuantity Two, decodeFace Fours ), 3 )
        , ( ( decodeQuantity Two, decodeFace Fives ), 4 )
        , ( ( decodeQuantity Two, decodeFace Sixes ), 5 )
        , ( ( decodeQuantity Three, decodeFace Twos ), 6 )
        , ( ( decodeQuantity Three, decodeFace Threes ), 7 )
        , ( ( decodeQuantity Three, decodeFace Fours ), 8 )
        , ( ( decodeQuantity Three, decodeFace Fives ), 9 )
        , ( ( decodeQuantity Three, decodeFace Sixes ), 10 )
        , ( ( decodeQuantity Four, decodeFace Twos ), 11 )
        , ( ( decodeQuantity Four, decodeFace Threes ), 12 )
        , ( ( decodeQuantity Four, decodeFace Fours ), 13 )
        , ( ( decodeQuantity Four, decodeFace Fives ), 14 )
        , ( ( decodeQuantity Four, decodeFace Sixes ), 15 )
        , ( ( decodeQuantity Five, decodeFace Twos ), 16 )
        , ( ( decodeQuantity Five, decodeFace Threes ), 17 )
        , ( ( decodeQuantity Five, decodeFace Fours ), 18 )
        , ( ( decodeQuantity Five, decodeFace Fives ), 19 )
        , ( ( decodeQuantity Five, decodeFace Sixes ), 20 )
        ]



{- Given a Try, determine the "Try score". Returns a Maybe -}


eval : Try -> Int
eval try =
    Maybe.withDefault 1 (Dict.get (decode try) dictionary)


fromScore : Int -> Try
fromScore score =
    dictionary
        |> Dict.filter (\_ v -> v == score)
        |> Dict.keys
        |> List.head
        |> Maybe.withDefault ( 2, 2 )
        |> encode


encode : ( Int, Int ) -> Try
encode tup =
    ( encodeQuantity (Tuple.first tup), encodeFace (Tuple.second tup) )


decode : Try -> ( Int, Int )
decode try =
    ( decodeQuantity (Tuple.first try), decodeFace (Tuple.second try) )


toString : Try -> String
toString try =
    try
        |> decode
        |> (\t -> (t |> Tuple.first |> String.fromInt) ++ " " ++ (t |> Tuple.second |> String.fromInt))


compare : Try -> Try -> Pull
compare toBeat passedTry =
    let
        toBeatVal =
            eval toBeat

        passedTryVal =
            eval passedTry
    in
    if toBeatVal >= passedTryVal then
        HadIt

    else
        Lie


encodeFace : Int -> Face
encodeFace die =
    case die of
        1 ->
            Wilds

        2 ->
            Twos

        3 ->
            Threes

        4 ->
            Fours

        5 ->
            Fives

        6 ->
            Sixes

        _ ->
            Twos


decodeFace : Face -> Int
decodeFace die =
    case die of
        Wilds ->
            1

        Twos ->
            2

        Threes ->
            3

        Fours ->
            4

        Fives ->
            5

        Sixes ->
            6


quantityToString : Quantity -> String
quantityToString quant =
    case quant of
        One ->
            "One"

        Two ->
            "Two"

        Three ->
            "Three"

        Four ->
            "Four"

        Five ->
            "Five"


faceToString : Face -> String
faceToString die =
    case die of
        Wilds ->
            "Wilds"

        Twos ->
            "Twos"

        Threes ->
            "Threes"

        Fours ->
            "Fours"

        Fives ->
            "Fives"

        Sixes ->
            "Sixes"


encodeQuantity : Int -> Quantity
encodeQuantity quant =
    case quant of
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

        _ ->
            Two


decodeQuantity : Quantity -> Int
decodeQuantity dieQuantity =
    case dieQuantity of
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



-- EXPORTS?
{- Given a Roll, determine the highest Try value available -}


assessRoll : Roll -> Try
assessRoll roll =
    roll
        |> List.map decodeFace
        |> frequency
        |> Debug.log "Frequency: "
        |> getBestOfAKind
        |> Debug.log "Highest Roll: "


freqReducer : Int -> Dict Int Int -> Dict Int Int
freqReducer key acc =
    Dict.get key acc
        |> Maybe.withDefault 0
        |> (\count -> Dict.insert key (count + 1) acc)


frequency : List Int -> Dict Int Int
frequency list =
    List.foldl freqReducer Dict.empty list


getBestOfAKind : Dict Int Int -> Try
getBestOfAKind dict =
    let
        wild_count =
            Maybe.withDefault 0 (Dict.get 1 dict)
    in
    dict
        -- Wilds have been counted, remove them from dict
        |> Dict.remove 1
        -- apply wild count to all Face counts to see which count is highest with the addition of the Wilds
        |> Dict.map (\_ v -> v + wild_count)
        -- convert the Dict to a List of Tuple
        |> Dict.toList
        -- sort by the count
        |> List.sortBy Tuple.second
        -- encode counts to a Quantity
        -- reverse the list so it's easy to grab the highest count with List.head
        |> List.reverse
        |> List.head
        |> Maybe.withDefault ( 2, 2 )
        |> Tuple2.swap
        |> encode


getLastTry : List ( Try, Int, String ) -> Try
getLastTry tryHistory =
    tryHistory
        |> List.reverse
        |> List.map Tuple3.first
        |> List.head
        >> Maybe.withDefault ( Two, Twos )


view : Try -> Html msg
view try =
    try
        |> toString
        |> text
        |> (\node -> div [] [ node ])



-- Takes a Try and determines the next highest Try. If the passed Try is the highest possible, return Nothing


mustPass : Try -> Maybe Try
mustPass receivedTry =
    let
        receivedTryVal =
            eval receivedTry

        nextTry =
            dictionary
                |> Dict.toList
                |> List.filter (\t -> Tuple.second t == (receivedTryVal + 1))
                |> List.map Tuple.first
                |> List.head
    in
    case nextTry of
        Just tup ->
            Just (encode tup)

        _ ->
            Nothing



{- Takes a Try and returns a Dictionary with a key of quantity, and value of a list of faces -}


getPassableTrys : Try -> Dict Int (List Int)
getPassableTrys try =
    let
        tryValue =
            eval try

        betterTrys =
            Dict.keys (Dict.filter (\_ v -> v > tryValue) dictionary)

        groupedTrys =
            DictExtra.groupBy Tuple.first betterTrys

        groupedDict =
            groupedTrys
                |> Dict.map (\_ v -> List.map Tuple.second v)
    in
    groupedDict
