module Model exposing (..)

import Player
import Try exposing (Try)



-- MODEL
-- Form


type ViewState
    = ChangeQuantity Try.Quantity
    | ChangeValue Try.Face


type NoOp
    = NoOp


type CupState
    = Covered
    | Uncovered


type RollState
    = Fresh
    | Received
    | Looked
    | Rolled
    | Pulled PullResult


type PullResult
    = HadIt
    | Lie


type alias History =
    List
        { playerId : Player.PlayerId
        }


type alias Model =
    { -- dice state
      -- the current
      -- view state
      quantity : Try.Quantity
    , value : Try.Face
    , tryHistory : List ( Try, Int, String )
    , consoleHistory : List String
    , consoleValue : String
    , consoleIsVisible : Bool

    -- game state
    , roll : Try.Cup
    , tryToBeat : Try
    , cupState : CupState
    , tableWilds : Int
    , cupLooked : Bool
    , rollState : RollState
    , whosTurn : Int -- index of activePlayers

    -- player state
    , players : Player.Players
    , activePlayers : Player.ActivePlayers
    }
