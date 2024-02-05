module Action exposing (..)

import Deque
import Dict
import Model exposing (..)
import Player
import Random
import Try exposing (Try)


type Msg
    = Pull
    | Pass Try
    | Look
    | Roll Roll


type Roll
    = -- Runtime is sending a new random die value.∏
      NewRoll Try.Cup
    | ReRoll


roll : Roll -> Model -> ( Model, Cmd Msg )
roll rollType model =
    case rollType of
        -- this message only should come in from runtime
        NewRoll cup ->
            ( { model | roll = cup, rollState = Rolled }
            , Cmd.none
            )

        ReRoll ->
            -- checking state and factoring Wilds works well in update when we want to more generically call for a roll (whether fresh or reroll), as you might in console
            -- but maybe this should all be determined in view and pass more specific roll message
            -- console update would still want to determine the right roll type (or require more specfiic roll command)
            case model.rollState of
                Pulled _ ->
                    -- reset
                    ( { model | tableWilds = 0 }, Random.generate (Roll << NewRoll) (Try.rollGenerator 5) )

                Fresh ->
                    -- reset
                    ( { model | tableWilds = 0 }, Random.generate (Roll << NewRoll) (Try.rollGenerator 5) )

                _ ->
                    let
                        -- pull the wilds from the roll
                        ( cup, wilds ) =
                            List.partition (\d -> d /= Try.Wilds) model.roll
                    in
                    if List.length cup /= 0 then
                        -- add pulled wilds to the tableWilds count, create new roll with remaining cup
                        ( { model | tableWilds = List.length wilds + model.tableWilds }
                        , Random.generate (Roll << NewRoll) (Try.rollGenerator (List.length cup))
                        )

                    else
                        ( model
                        , Random.generate (Roll << NewRoll) (Try.rollGenerator (List.length model.roll))
                        )


pull : Model -> Model
pull model =
    -- check that the roll satisfied the required Try level
    -- move to pulled state
    let
        bestTryInCup =
            Try.assessRoll (model.roll ++ List.repeat model.tableWilds Try.Wilds)

        receivedTry =
            model.tryToBeat

        validateReceivedTry : Try -> Try -> PullResult
        validateReceivedTry mustBeat received =
            if (Try.toScore mustBeat |> Maybe.withDefault 1) >= (Try.toScore received |> Maybe.withDefault 1) then
                HadIt

            else
                Lie

        pullResult =
            validateReceivedTry bestTryInCup receivedTry
    in
    case pullResult of
        HadIt ->
            -- current player takes a fold
            let
                hitPlayer =
                    Player.hit model.players model.whosTurn

                players =
                    Dict.insert hitPlayer.id hitPlayer model.players

                activePlayers =
                    if hitPlayer.hp /= 0 then
                        model.activePlayers

                    else
                        Player.ko hitPlayer.id model.activePlayers

                newWhosTurn =
                    Maybe.withDefault 0 (Deque.first activePlayers)
            in
            { model
                | cupState = Uncovered
                , rollState = Pulled HadIt
                , tryToBeat = ( Try.Two, Try.Twos )
                , quantity = Try.Two
                , value = Try.Twos
                , players = players
                , activePlayers = activePlayers
                , whosTurn = newWhosTurn
            }

        Lie ->
            -- previous player takes a fold
            let
                prevPlayer =
                    Maybe.withDefault 0 (Deque.last model.activePlayers)

                hitPlayer =
                    Player.hit model.players prevPlayer

                players =
                    Dict.insert hitPlayer.id hitPlayer model.players

                activePlayers =
                    if hitPlayer.hp /= 0 then
                        model.activePlayers

                    else
                        Player.ko hitPlayer.id model.activePlayers
            in
            { model
                | cupState = Uncovered
                , rollState = Pulled Lie
                , tryToBeat = ( Try.Two, Try.Twos )
                , quantity = Try.Two
                , value = Try.Twos
                , players = players
                , activePlayers = activePlayers
            }


pass : Model -> Try -> Model
pass model try =
    case Try.mustPass try of
        -- there is a "next" try to be passed
        Just nextPassableTry ->
            let
                ( currentTurn, rest ) =
                    Deque.popFront model.activePlayers

                newActivePlayers =
                    Deque.pushBack (Maybe.withDefault 0 currentTurn) rest

                newCurrentTurn =
                    Deque.first newActivePlayers
            in
            { model
                | tryHistory = List.append model.tryHistory [ ( try, model.whosTurn, Player.health model.whosTurn model.players ) ]
                , tryToBeat = try
                , whosTurn = Maybe.withDefault 0 newCurrentTurn
                , activePlayers = newActivePlayers
                , quantity = Tuple.first nextPassableTry
                , value = Tuple.second nextPassableTry
                , cupState = Covered
                , cupLooked = False
                , rollState = Received
            }

        -- The last try passed was as high as you can possibly roll this means we must force a Pull message,
        -- evaluate the roll and determine if the passer or the receiver gets a fold.
        Nothing ->
            pull model


look : Model -> Model
look model =
    { model | cupState = Uncovered, cupLooked = True, rollState = Looked }
