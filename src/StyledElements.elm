module StyledElements exposing (..)

-- import Html.Styled.Attributes exposing (css, href, src, style)

import Css exposing (Style)
import Html.Styled exposing (..)
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw exposing (..)


inputBaseStyles : List Style
inputBaseStyles =
    [ Tw.border_solid
    , Tw.border_2
    , Tw.px_4
    , Tw.py_2
    , Tw.bg_color Tw.white
    , Tw.rounded_md
    , Tw.text_color Tw.purple_300
    , Tw.border_color Tw.purple_300
    , Tw.text_4xl
    , Tw.w_full
    ]


card : List Style
card =
    [ Tw.shadow_sm
    , Tw.bg_gradient_to_br
    , Tw.from_color Tw.gray
    , Tw.to_color Tw.white
    , Tw.rounded_2xl
    , Tw.shadow_md
    ]


button_ : List (Attribute msg) -> List (Html msg) -> Html msg
button_ =
    styled button (List.concat [ inputBaseStyles, card ])


select_ : List (Attribute msg) -> List (Html msg) -> Html msg
select_ =
    styled select inputBaseStyles


header_ : List (Attribute msg) -> List (Html msg) -> Html msg
header_ =
    styled div [ Tw.grid, Tw.grid_cols_header, Tw.mb_10, Tw.w_full ]
