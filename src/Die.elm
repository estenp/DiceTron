module Die exposing (..)
import Random

-- Dice
type Die
    = One
    | Two
    | Three
    | Four
    | Five
    | Six


type Cup
    = Cup Die Die Die Die Die


die : Random.Generator Die
die =
    Random.uniform One [ Two, Three, Four, Five, Six ]


cup : Random.Generator Cup
cup =
    Random.map5 Cup die die die die die


dieToInt : Die -> Int
dieToInt d =
    case d of
        One ->
            1

        Two ->
            2

        Three ->
            3

        Four ->
            4

        Five ->
            5

        Six ->
            6

intToDie : Int -> Die
intToDie d =
    case d of
      1 ->
        One

      2 ->
        Two

      3 ->
        Three

      4 ->
        Four

      5 ->
        Five

      6 ->
        Six

      _ ->
        Two

cupToList : Cup -> List Die
cupToList c =
  case c of
    Cup slot1 slot2 slot3 slot4 slot5 ->
      [slot1, slot2, slot3, slot4, slot5]

sortCup : Cup -> List Die
sortCup c =
  (cupToList c)
    |> List.map dieToInt
    |> List.sort
    |> List.map intToDie
