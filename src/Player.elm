module Player exposing (Players, Player, getName, getPlayer, health, hit, ko)

import Deque
import Dict exposing (Dict)


type alias Player =
    { id : Int
    , name : String
    , hp : Int
    , maxHp : Int
    }


type alias PlayerData =
    { id : Int
    , name : String
    }



{- my_players : List PlayerData
   my_players =
       [ { id = 1
         , name = "Thad"
         }
       , { id = 2
         , name = "Pat"
         }
       , { id = 3
         , name = "Esten"
         }
       ]
-}


health : Int -> Players -> String
health playerId players =
    let
        player =
            getPlayer players playerId
    in
    "(" ++ String.fromInt player.hp ++ "/" ++ String.fromInt player.maxHp ++ ")"


default_player : Player
default_player =
    { id = 0
    , name = "DEFAULT"
    , hp = 0
    , maxHp = 0
    }


type alias Players =
    Dict Int Player


getPlayer : Players -> Int -> Player
getPlayer players id =
    let
        maybe =
            Dict.get id players
    in
    Maybe.withDefault default_player maybe


getName : Players -> Int -> String
getName players id =
    .name (getPlayer players id)


hit : Players -> Int -> Player
hit players id =
    let
        player =
            getPlayer players id
    in
    -- if you can decrement this, return the player record
    -- else return nothing or bad result?
    if player.hp > 0 then
        { player | hp = player.hp - 1 }
    else
        player

ko : Int -> Deque.Deque Int -> Deque.Deque Int
ko id activePlayers =
    Tuple.first (Deque.partition (\activePlayer -> activePlayer /= id) activePlayers)
