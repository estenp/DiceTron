module Player exposing (Players, getName, getPlayer, health, hit, my_players)

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


default_player =
    { id = 0
    , name = "DEFAULT"
    , hp = 0
    , maxHp = 0
    }


type alias Players =
    Dict Int Player


my_players : Players
my_players =
    Dict.fromList
        [ ( 1
          , { id = 1
            , name = "Thad"
            , hp = 5
            , maxHp = 5
            }
          )
        , ( 2
          , { id = 2
            , name = "Pat"
            , hp = 5
            , maxHp = 5
            }
          )
        , ( 3
          , { id = 3
            , name = "Esten"
            , hp = 5
            , maxHp = 5
            }
          )
        ]


makePlayers : List PlayerData -> List Player
makePlayers playerList =
    List.map
        (\{ id, name } ->
            Player id name 5 5
        )
        playerList



{- getPlayer : Int -> List Player -> Result String Player
   getPlayer id players =
       let
           maybe =
               players
                   |> List.filter (\p -> p.id == id)
                   |> List.head
       in
       case maybe of
           Just player ->
               Ok player

           -- pull up a chair
           Nothing ->
               Err "Player not found."
-}


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


hit : Players -> Int -> Players
hit players id =
    let
        player =
            getPlayer players id
    in
    -- if you can decrement this, return the player record
    -- else return nothing or bad result?
    Dict.insert id { player | hp = player.hp - 1 } players
