module Data exposing (..)

import Dict
import Player



-- CONSTANTS, DUMMY DATA


my_players : Player.Players
my_players =
    Dict.fromList
        [ ( 1
          , { id = 1
            , name = "Rick"
            , hp = 1
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
