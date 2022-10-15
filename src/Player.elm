module Player exposing (..)
import Deque


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


my_players : List PlayerData
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
            Err "Player not found." -}

getPlayer : List Player -> Int -> Player
getPlayer players id =
    let
        maybe =
            players
                |> List.filter (\p -> p.id == id)
                |> List.head
    in
    Maybe.withDefault (Player 0 "Empty" 5 5) maybe

getName : List Player -> Int -> String
getName players id = .name (getPlayer players id)
