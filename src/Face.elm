module Face exposing (view)

import Css.Animations exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css)
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw exposing (..)
import Try exposing (Face(..))


view : Face -> Html msg
view die =
    let
        isWild =
            Try.decodeFace die == 1

        className =
            if isWild then
                "face wild"

            else
                "face"
    in
    div
        [ class className
        , css
            [ Tw.text_center
            , Tw.w_40
            , Tw.inline_block
            , Tw.p_2
            , Tw.m_2
            , Tw.text_9xl
            , Tw.border_4
            , Tw.rounded_2xl
            , Tw.bg_color Tw.white
            , Tw.text_color Tw.black_100
            ]
        ]
        [ if isWild then
            text "•"

          else
            text (String.fromInt (Try.decodeFace die))
        ]
