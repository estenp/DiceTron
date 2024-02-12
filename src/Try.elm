module Try exposing (Cup, Face(..), Msg(..), Quantity(..), Try, assessRoll, availTrySelectOpts, decode, decodeFace, decodeQuantity, dictionary, dieGenerator, encode, encodeFace, encodeQuantity, fromScore, getLastTry, mustPass, rollGenerator, toScore, toString, view, viewHistory, viewSelects)

import Dict exposing (Dict)
import Dict.Extra exposing (groupBy)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, for, id, type_, value)
import Html.Styled.Events exposing (..)
import List.Extra exposing (frequencies)
import Player
import Random
import StyledElements exposing (..)
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Tuple2
import Tuple3



-- TYPES


type alias Cup =
    List Face


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


type Msg
    = ChangeQuantity Quantity
    | ChangeValue Face



-- GENERATORS


dieGenerator : Random.Generator Face
dieGenerator =
    Random.uniform Wilds [ Twos, Threes, Fours, Fives, Sixes ]


rollGenerator : Int -> Random.Generator (List Face)
rollGenerator quantity =
    Random.list quantity dieGenerator



-- UTILS


type alias Lookup =
    Dict ( Int, Int ) Int


dictionary : Lookup
dictionary =
    -- calling decodes here just for documentation purposes
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


{-| Convert a Try to a Try score.
-}
toScore : Try -> Maybe Int
toScore try =
    Dict.get (decode try) dictionary


{-| Convert a Try score to a
-}
fromScore : Int -> Try
fromScore score =
    dictionary
        |> Dict.filter (\_ v -> v == score)
        |> Dict.keys
        -- todo: is this really how we want to assess an invalid try?
        |> Maybe.withDefault ( 2, 2 )
        << List.head
        |> Maybe.withDefault ( Two, Twos )
        << encode


{-| Convert a Tuple of Int representing Try values to a Try.
-}
encode : ( Int, Int ) -> Maybe Try
encode tup =
    Maybe.andThen
        (\quantity ->
            Maybe.map (\face -> ( quantity, face ))
                (encodeFace (Tuple.second tup))
        )
        (encodeQuantity (Tuple.first tup))


{-| Convert a Try to a Int representing Try values.
-}
decode : Try -> ( Int, Int )
decode try =
    ( decodeQuantity (Tuple.first try), decodeFace (Tuple.second try) )


{-| Convert a Try to a string.
-}
toString : Try -> String
toString =
    decode
        >> Tuple.mapBoth String.fromInt String.fromInt
        >> (\( q, v ) -> q ++ " " ++ v ++ "'s")


encodeFace : Int -> Maybe Face
encodeFace die =
    case die of
        1 ->
            Just Wilds

        2 ->
            Just Twos

        3 ->
            Just Threes

        4 ->
            Just Fours

        5 ->
            Just Fives

        6 ->
            Just Sixes

        -- todo: this is the root of my eval issue. Default encoding to Two Twos will result in the potential that mustTry breaks the restriction of received try
        _ ->
            Nothing


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


encodeQuantity : Int -> Maybe Quantity
encodeQuantity quant =
    case quant of
        1 ->
            Just One

        2 ->
            Just Two

        3 ->
            Just Three

        4 ->
            Just Four

        5 ->
            Just Five

        _ ->
            Nothing


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



-- todo: refactor these three functions


{-|

  - Given a Roll, determine the highest Try value available

-}
assessRoll : Cup -> Try
assessRoll =
    let
        getBestOfAKind : List ( Int, Int ) -> Try
        getBestOfAKind frequncyList =
            let
                ( wilds, rest ) =
                    List.partition (\( face, _ ) -> face == 1) frequncyList

                wildCount =
                    case wilds of
                        ( _, b ) :: _ ->
                            b

                        [] ->
                            0

                counts =
                    List.map (Tuple.mapSecond ((+) wildCount)) rest
            in
            if wildCount == 5 then
                ( Five, Sixes )

            else
                counts
                    -- sort by the count
                    |> List.sortBy Tuple.second
                    -- reverse the list so it's easy to grab the highest count with List.head
                    |> List.reverse
                    -- todo: is this really how we want to assess an invalid try?
                    |> List.head
                    |> Maybe.withDefault ( 2, 2 )
                    |> Tuple2.swap
                    -- encode to a Try
                    |> encode
                    |> Maybe.withDefault ( Two, Twos )
    in
    List.map decodeFace
        >> frequencies
        >> getBestOfAKind


getLastTry : List ( Try, Int, String ) -> Try
getLastTry tryHistory =
    tryHistory
        |> List.reverse
        |> List.map Tuple3.first
        |> List.head
        >> Maybe.withDefault ( Two, Twos )


view : Try -> Html msg
view =
    toString
        >> text
        >> (\node -> div [] [ node ])


{-| Takes a Try and determines the next highest Try. If the passed Try is the highest possible, return Nothing
-}
mustPass : Try -> Maybe Try
mustPass receivedTry =
    let
        receivedTryVal =
            case toScore receivedTry of
                Just value ->
                    value

                Nothing ->
                    1

        nextTry =
            fromScore (receivedTryVal + 1)
    in
    if receivedTryVal + 1 <= 20 then
        Just nextTry

    else
        Nothing


{-| Takes a Try and returns a Dictionary with a key of quantity, and value of a list of faces
-}
getPassableTrys : Try -> Dict Int (List Int)
getPassableTrys try =
    let
        tryValue =
            case toScore try of
                Just value ->
                    value

                Nothing ->
                    1

        betterTrys =
            Dict.keys (Dict.filter (\_ v -> v > tryValue) dictionary)

        groupedTrys =
            Dict.Extra.groupBy Tuple.first betterTrys

        groupedDict =
            groupedTrys
                |> Dict.map (\_ v -> List.map Tuple.second v)
    in
    groupedDict


{-| Takes a Try and a Quantity and returns a tuple of a list of Quantity HTML options and a list of Face HTML options
-- todo: this is kinda dumb -> try and quantity? should decode Quantity from Try instead?
-}
availTrySelectOpts : Try -> Quantity -> ( List (Html msg1), List (Html msg) )
availTrySelectOpts try quantity =
    let
        passableTrysDict =
            getPassableTrys try

        passableQuants =
            Dict.keys passableTrysDict

        qOptions =
            List.map
                (\o ->
                    Maybe.withDefault (option [ value "2" ] [ text "two" ])
                        (Dict.get o quantityOptions)
                )
                passableQuants

        vOptions =
            List.map
                (\o ->
                    Maybe.withDefault (option [ value "2" ] [ text "twos" ])
                        (Dict.get o valueOptions)
                )
                (Maybe.withDefault [ 2, 3, 4, 5 ] (Dict.get (decodeQuantity quantity) passableTrysDict))
    in
    ( qOptions, vOptions )


quantityOptions : Dict Int (Html msg)
quantityOptions =
    Dict.fromList
        [ ( decodeQuantity One, option [ value "1" ] [ text "one" ] )
        , ( decodeQuantity Two, option [ value "2" ] [ text "two" ] )
        , ( decodeQuantity Three, option [ value "3" ] [ text "three" ] )
        , ( decodeQuantity Four, option [ value "4" ] [ text "four" ] )
        , ( decodeQuantity Five, option [ value "5" ] [ text "five" ] )
        ]


valueOptions : Dict Int (Html msg)
valueOptions =
    Dict.fromList
        [ ( decodeFace Twos, option [ value "2" ] [ text "twos" ] )
        , ( decodeFace Threes, option [ value "3" ] [ text "threes" ] )
        , ( decodeFace Fours, option [ value "4" ] [ text "fours" ] )
        , ( decodeFace Fives, option [ value "5" ] [ text "fives" ] )
        , ( decodeFace Sixes, option [ value "6" ] [ text "sixes" ] )
        ]



-- trySelects =
--     [ viewPassTry model.quantity model.value model.tryToBeat ]


viewSelects : Quantity -> Try -> List (Html Msg)
viewSelects quantity tryToBeat =
    let
        ( quantities, values ) =
            availTrySelectOpts tryToBeat quantity

        changeQuantity =
            ChangeQuantity << Maybe.withDefault Two << encodeQuantity << Maybe.withDefault 1 << String.toInt

        changeValue =
            ChangeValue << Maybe.withDefault Twos << encodeFace << Maybe.withDefault 2 << String.toInt
    in
    -- div [ class "try", css [ Tw.grid, Tw.grid_cols_2, Tw.gap_4, Tw.w_full ] ]
    [ div []
        [ label [ for "quantity" ] [ text "Quantity" ]
        , select_ [ onInput changeQuantity, id "quantity" ] quantities
        ]
    , div []
        [ label [ for "value" ] [ text "Value" ]
        , select_ [ onInput changeValue, id "value" ] values
        ]

    -- , button_ [ css [ Tw.col_span_2 ], onClick (Pass ( quantity, val )) ] [ text "pass" ]
    ]


viewHistory gameState =
    div [ class "history", css [ Tw.justify_self_center, Tw.mt_4, Tw.overflow_auto ] ]
        (gameState.tryHistory
            |> List.map (Tuple3.mapAllThree toString (Player.getName gameState.players) identity)
            |> List.map (\tup -> div [] [ text (Tuple3.second tup ++ " -> " ++ Tuple3.first tup) ])
        )
