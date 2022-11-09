module Player exposing (Players, Player, PlayerId, ActivePlayers, getName, getPlayer, health, hit, ko)

import Deque exposing (Deque)
import Dict exposing (Dict)

type alias PlayerId = Int

type alias Player =
    { id : PlayerId
    , name : String
    , hp : Int
    , maxHp : Int
    }

type alias Players =
    Dict Int Player

type alias ActivePlayers = Deque Int

health : PlayerId -> Players -> String
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




getPlayer : Players -> PlayerId -> Player
getPlayer players id =
    let
        maybe =
            Dict.get id players
    in
    Maybe.withDefault default_player maybe


getName : Players -> PlayerId -> String
getName players id =
    .name (getPlayer players id)


hit : Players -> PlayerId -> Player
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

ko : PlayerId -> ActivePlayers -> ActivePlayers
ko id activePlayers =
    Tuple.first (Deque.partition (\activePlayer -> activePlayer /= id) activePlayers)
