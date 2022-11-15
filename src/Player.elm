module Player exposing (ActivePlayers, Player, PlayerId, Players, getName, getPlayer, health, hit, ko, view)

import Css exposing (..)
import Deque exposing (Deque)
import Dict exposing (Dict)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, href, src, style)
import Tailwind.Utilities as Tw exposing (..)


type alias PlayerId =
    Int


type alias Player =
    { id : PlayerId
    , name : String
    , hp : Int
    , maxHp : Int
    }


type alias Players =
    Dict Int Player


type alias ActivePlayers =
    Deque Int


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
        { player | hp = 0 }


ko : PlayerId -> ActivePlayers -> ActivePlayers
ko id activePlayers =
    Tuple.first (Deque.partition (\activePlayer -> activePlayer /= id) activePlayers)


view : PlayerId -> Player -> Html msg
view currentTurn player =
    let
        healthPercent =
            player.hp // player.maxHp

        healthDiff =
            player.maxHp - player.hp

        hp =
            String.fromInt player.hp

        maxHp =
            String.fromInt player.maxHp

        healthDiv bgStyle =
            div [ css [ bgStyle, Tw.w_8, Tw.h_4, Tw.border_b_2, Tw.border_success ] ] []

        -- healthStack =
        --     List.repeat player.maxHp healthDiv
        healthBg h =
            if h <= player.hp then
                if (toFloat h / toFloat player.maxHp) <= (1 / 5) then
                    Tw.bg_primary
                else if (toFloat h / toFloat player.maxHp) <= (3 / 5) then
                    Tw.bg_exclaim
                else
                    Tw.bg_tertiary
            else
                Tw.bg_secondary

        healthStack =
            List.map healthBg (List.reverse (List.range 1 player.maxHp))
    in
    div
        [ {- css
                 [ color
                     (if player.hp <= 0 then
                         rgb 255 69 0

                      else if player.id == currentTurn then
                         rgb 100 149 237

                      else
                         hex "dfeee3"
                     )
                 ]
             ,
          -}
          css [ inline_block ]
        ]
        [ h3 [css [ Tw.text_3xl ] ] [ text player.name ]
        , div [ css [ Tw.inline_block ] ] (List.map healthDiv healthStack)

        -- , text ("( " ++ hp ++ " / " ++ maxHp ++ " ) ")
        ]
