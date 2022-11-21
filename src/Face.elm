module Face exposing (view, Face)

import Css exposing (Style)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, href, src, style)
import Tailwind.Utilities as Tw exposing (..)

view : Face -> Html Msg
view die =
    div
        [ css
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
            [ if Try.decodeFace die == 1 then
                Tw.bg_exclaim

              else
                Tw.text_secondary
            ]
        ]
        [ text (String.fromInt (Try.decodeFace die))
        ]
