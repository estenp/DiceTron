module Game exposing (..)

import Action


type alias ValidActions =
    Set Action.Msg


type alias Model =
    { validActions : ValidActions

    -- game state
    , roll : Try.Cup
    , tryToBeat : Try
    , cupState : CupState
    , tableWilds : Int
    , cupLooked : Bool
    , rollState : RollState
    , whosTurn : Int -- index of activePlayers
    , validActions : ValidActions
    }
