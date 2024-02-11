module Game exposing (..)

-- import Model exposing (CupState, RollState)

import Css.Transitions exposing (offset)
import Deque
import Dict
import Face
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, for, id, type_, value)
import Html.Styled.Events exposing (..)
import Player
import Random
import StyledElements exposing (..)
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Try exposing (Try)


type RollState
    = Fresh
    | Received
    | Looked
    | Rolled
    | Pulled PullResult


type Action
    = Pull
    | Pass Try
    | Look
    | Roll Roll


type Msg
    = ActionMsg Action
    | TryMsg Try.Msg


type Roll
    = -- Runtime is sending a new random die value.
      NewRoll Try.Cup
    | ReRoll


type alias Model =
    { -- game state
      roll : Try.Cup
    , tryToBeat : Try
    , cupState : CupState
    , tableWilds : Int
    , cupLooked : Bool
    , rollState : RollState
    , whosTurn : Int -- index of activePlayers
    , tryHistory : List ( Try, Int, String )

    -- view state
    , quantity : Try.Quantity
    , value : Try.Face

    -- player state
    , players : Player.Players
    , activePlayers : Player.ActivePlayers
    }


type PullResult
    = HadIt
    | Lie


type CupState
    = Covered
    | Uncovered


isValidAction : RollState -> Action -> Bool
isValidAction rollState action =
    case action of
        Pull ->
            rollState == Received

        Look ->
            rollState == Received

        Pass _ ->
            rollState == Received || rollState == Looked || rollState == Rolled

        Roll _ ->
            rollState == Fresh || rollState == Looked || rollState == Pulled Lie || rollState == Pulled HadIt


encodeAction : String -> Result String Action
encodeAction action =
    case action of
        "pull" ->
            Ok Pull

        "pass" ->
            Ok (Pass ( Try.Two, Try.Twos ))

        "look" ->
            Ok Look

        "roll" ->
            Ok (Roll ReRoll)

        _ ->
            Err (action ++ " is not a valid action.")


decodeAction : Action -> String
decodeAction action =
    case action of
        Pull ->
            "pull"

        Pass _ ->
            "pass"

        Look ->
            "look"

        Roll _ ->
            "roll"


roll : Roll -> Model -> ( Model, Cmd Action )
roll rollType model =
    case rollType of
        -- this message only should come in from runtime
        NewRoll newDice ->
            ( { model | roll = newDice, rollState = Rolled }, Cmd.none )

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

                -- reroll
                _ ->
                    let
                        -- pull the wilds from the roll
                        ( rest, wilds ) =
                            List.partition (\d -> d /= Try.Wilds) model.roll
                    in
                    if List.length rest /= 0 then
                        -- add pulled wilds to the tableWilds count, create new roll with remaining cup
                        ( { model | tableWilds = List.length wilds + model.tableWilds }
                        , Random.generate (Roll << NewRoll) (Try.rollGenerator (List.length rest))
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


{-| Attempt to update model according to a passed `Try`.
Validates that the `Try` being passed is better than the one received.
Returns a `Result`.
-}
pass : Model -> Try -> Result String Model
pass model try =
    let
        received =
            Try.toScore model.tryToBeat |> Maybe.withDefault 1

        beingPassed =
            Try.toScore try |> Maybe.withDefault 1

        _ =
            Debug.log "roll compare" ( received, beingPassed )
    in
    if beingPassed > received then
        Ok
            (case Try.mustPass try of
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
            )

    else
        Err ("You must pass a better Try than " ++ Try.toString model.tryToBeat ++ ". " ++ Try.toString try ++ " does not beat " ++ Try.toString model.tryToBeat ++ ".")


look : Model -> Model
look model =
    { model | cupState = Uncovered, cupLooked = True, rollState = Looked }



-- Play Area UI
--


view : Model -> Html Msg
view model =
    let
        cup =
            [ section
                [ class "roll"
                , css [ Tw.flex, Tw.justify_evenly ]
                ]
                (List.map Face.view model.roll)
            ]

        cupButtons =
            [ div [ css [ Tw.grid, Tw.grid_cols_2, Tw.gap_4, Tw.w_full ] ]
                [ button_ [ onClick Pull ] [ text "pull" ]
                , button_ [ onClick Look ] [ text "look" ]
                ]
            ]
                |> List.map (Html.Styled.map ActionMsg)

        tableWilds =
            if model.tableWilds > 0 then
                [ section
                    [ id "wilds" ]
                    (List.map Face.view (List.repeat model.tableWilds Try.Wilds))
                , divider
                ]

            else
                []

        rollButtons =
            (case model.rollState of
                Fresh ->
                    [ div [] [ button_ [ onClick (Roll ReRoll) ] [ text "roll" ] ] ]

                Pulled _ ->
                    [ div [] [ button_ [ onClick (Roll ReRoll) ] [ text "roll" ] ] ]

                Looked ->
                    [ div [] [ button_ [ onClick (Roll ReRoll) ] [ text "re-roll" ] ] ]

                _ ->
                    []
            )
                |> List.map (Html.Styled.map ActionMsg)

        trySelects : List (Html Msg)
        trySelects =
            let
                selects =
                    Try.viewSelects model.quantity model.tryToBeat |> List.map (Html.Styled.map TryMsg)

                passButton =
                    [ button_
                        [ css [ Tw.col_span_2 ]
                        , onClick (ActionMsg (Pass ( model.quantity, model.value )))
                        ]
                        [ text "pass" ]
                    ]
            in
            [ div
                [ class "try"
                , css [ Tw.grid, Tw.grid_cols_2, Tw.gap_4, Tw.w_full ]
                ]
                (selects ++ passButton)
            ]
    in
    div [ class "play-area" ]
        (case model.rollState of
            Fresh ->
                rollButtons

            Rolled ->
                tableWilds ++ cup ++ rollButtons ++ trySelects

            Received ->
                tableWilds ++ cupButtons ++ trySelects

            Looked ->
                tableWilds ++ cup ++ rollButtons ++ trySelects

            Pulled result ->
                let
                    pullResult =
                        case result of
                            HadIt ->
                                p [] [ text "Previous player had the roll. You will lose 1 hp." ]

                            Lie ->
                                p [] [ text "Previous player lied. They will lose 1 hp." ]
                in
                tableWilds ++ cup ++ [ pullResult ] ++ rollButtons
        )
