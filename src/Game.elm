module Game exposing (..)

-- import Model exposing (CupState, RollState)

import Css.Transitions exposing (offset)
import Deque
import Dict
import Face
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, for, id, type_, value)
import Html.Styled.Events exposing (..)
import Player exposing (Player)
import Random
import StyledElements exposing (..)
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Try exposing (Try)
import Tuple3



-- MODEL TYPES


type alias Model =
    { -- game state
      roll : Try.Cup
    , tryToBeat : Try
    , cupState : CupState
    , tableWilds : Int
    , cupLooked : Bool
    , rollState : RollState
    , whosTurn : Int -- index of activePlayers
    , history : List Turn

    -- view state
    , quantity : Try.Quantity
    , value : Try.Face

    -- player state
    , players : Player.Players
    , activePlayers : Player.ActivePlayers
    }


type CupState
    = Covered
    | Uncovered


type RollState
    = Init
    | Received
    | Looked
    | Rolled
    | Pulled PullResult


type PullResult
    = HadIt
    | Lie


type alias Turn =
    { try : Try, player : Player, notes : Maybe String }



-- MSG TYPES


type Msg
    = ActionMsg Action
    | TryMsg Try.Msg


type Action
    = Pull
    | Pass Try
    | Look
    | Roll Roll


type Roll
    = -- Runtime is sending a new random die value.
      Generated Try.Cup
    | Initiated


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
            rollState == Init || rollState == Looked || rollState == Pulled Lie || rollState == Pulled HadIt


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
            Ok (Roll Initiated)

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


changeTurn : Try -> Model -> Model
changeTurn try model =
    let
        ( currentTurn, rest ) =
            Deque.popFront model.activePlayers

        newActivePlayers =
            Deque.pushBack (Maybe.withDefault 0 currentTurn) rest

        newCurrentTurn =
            Deque.first newActivePlayers |> Maybe.withDefault 0
    in
    { model
        | history =
            Turn
                try
                (Player.getPlayer model.players model.whosTurn)
                (Just (Player.health model.whosTurn model.players))
                :: model.history
        , tryToBeat = try
        , whosTurn = newCurrentTurn
        , activePlayers = newActivePlayers
    }


{-| Takes a roll type and updates the model.
This is the only action function that needs to return a Cmd because of the Random.generate call. Is is possible to refactor that out?
-}
roll : Roll -> Model -> ( Model, Cmd Action )
roll rollType model =
    case rollType of
        -- this message only should come in from runtime
        Generated newDice ->
            ( { model | roll = newDice, rollState = Rolled }, Cmd.none )

        Initiated ->
            -- todo: at min, refactor out the redundancy
            -- this could potentially take a payload of number of dice to roll and do logic in view instead?
            case model.rollState of
                Looked ->
                    -- if looked, it's a reroll, so pull wilds
                    let
                        -- pull the wilds from the roll
                        ( rest, wilds ) =
                            List.partition (\d -> d /= Try.Wilds) model.roll
                    in
                    if List.length rest /= 0 then
                        -- add pulled wilds to the tableWilds count, create new roll with remaining cup
                        ( { model | tableWilds = List.length wilds + model.tableWilds }
                        , Random.generate (Roll << Generated) (Try.rollGenerator (List.length rest))
                        )

                    else
                        ( model
                        , Random.generate (Roll << Generated) (Try.rollGenerator (List.length model.roll))
                        )

                _ ->
                    ( { model | tableWilds = 0 }, Random.generate (Roll << Generated) (Try.rollGenerator 5) )


pull : Model -> Model
pull model =
    -- check that the roll satisfied the required Try level
    -- move to pulled state
    -- if puller is KO'd, change turn
    let
        bestTryInCup : Int
        bestTryInCup =
            Try.assessRoll (model.roll ++ List.repeat model.tableWilds Try.Wilds) |> Try.toScore |> Maybe.withDefault 1

        receivedTry : Int
        receivedTry =
            model.tryToBeat |> Try.toScore |> Maybe.withDefault 1

        pullResult : PullResult
        pullResult =
            if receivedTry >= bestTryInCup then
                HadIt

            else
                Lie

        hitPlayer : Player
        hitPlayer =
            Player.hit model.players
                (case pullResult of
                    HadIt ->
                        model.whosTurn

                    Lie ->
                        Maybe.withDefault 0 (Deque.last model.activePlayers)
                )

        newPlayers : Player.Players
        newPlayers =
            Dict.insert hitPlayer.id hitPlayer model.players

        newActivePlayers : Player.ActivePlayers
        newActivePlayers =
            if hitPlayer.hp == 0 then
                Player.ko hitPlayer.id model.activePlayers

            else
                model.activePlayers

        handlePullerKO : Model -> Model
        handlePullerKO =
            if hitPlayer.hp == 0 && model.whosTurn == hitPlayer.id then
                changeTurn ( Try.Two, Try.Twos )

            else
                identity
    in
    { model
        | cupState = Uncovered
        , rollState = Pulled pullResult
        , quantity = Try.Two
        , value = Try.Twos
        , players = newPlayers
        , activePlayers = newActivePlayers
    }
        -- todo: dont always want to change turn here
        |> handlePullerKO


{-| Attempt to update model according to a passed `Try`.
Validates that the `Try` being passed is better than the one received.
Returns a `Result`.
-}
pass : Model -> Try -> Result String Model
pass model try =
    -- is it under 5 6's (or best possible try)?
    case Try.nextBest try of
        Nothing ->
            -- There is no roll better than what was passed in the Try dictionary
            -- handle 5 6's
            --
            -- change turn, then call `pull`
            -- Ok (Debug.todo "handle 5 6's")
            Ok (model |> changeTurn try |> pull)

        Just nextTry ->
            let
                received =
                    Try.toScore model.tryToBeat |> Maybe.withDefault 1

                beingPassed =
                    -- todo: see comment on toScore
                    Try.toScore try |> Maybe.withDefault 1
            in
            -- check that passed Try is better than current Try
            if beingPassed > received then
                Ok
                    ({ model
                        | quantity = Tuple.first nextTry
                        , value = Tuple.second nextTry
                        , cupState = Covered
                        , cupLooked = False
                        , rollState = Received
                     }
                        |> changeTurn try
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
                Init ->
                    [ div [] [ button_ [ onClick (Roll Initiated) ] [ text "roll" ] ] ]

                Pulled _ ->
                    [ div [] [ button_ [ onClick (Roll Initiated) ] [ text "roll" ] ] ]

                Looked ->
                    [ div [] [ button_ [ onClick (Roll Initiated) ] [ text "re-roll" ] ] ]

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
            Init ->
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


viewHistory : Model -> Html Msg
viewHistory gameState =
    div [ class "history", css [ Tw.justify_self_center, Tw.mt_4, Tw.overflow_auto ] ]
        (gameState.history
            |> List.reverse
            |> List.map (\turn -> div [] [ text (turn.player.name ++ " -> " ++ Try.toString turn.try) ])
        )
