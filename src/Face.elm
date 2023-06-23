module Face exposing (view)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, class)
import Tailwind.Utilities as Tw exposing (..)
import Try exposing (Face(..))

view : Face -> Html msg
view die =
    div
        [ class "face"
        , css
            [ Tw.text_center
            , Tw.w_40
            , Tw.inline_block
            , Tw.p_2
            , Tw.m_2
            , Tw.text_9xl
            , Tw.border_4
            , Tw.rounded_2xl
            ]
        , css
            (if Try.decodeFace die == 1 then
                [ Tw.bg_exclaim
                , Tw.text_primary
                ]
              else
                [
                Tw.bg_secondary
                , Tw.text_tertiary
                ])
        ]
        [ if Try.decodeFace die == 1 then
            text "𞡥"
          else
            text (String.fromInt (Try.decodeFace die))
        ]
