module StyledElements exposing (..)


import Css exposing (Style)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, href, src, style)
import Tailwind.Utilities as Tw exposing (..)


inputBaseStyles : List Style
inputBaseStyles =
    [ Tw.border_solid
    , Tw.border_2
    , Tw.px_4
    , Tw.py_2
    , Tw.bg_secondary
    , Tw.rounded_md
    , Tw.text_tertiary
    , Tw.border_secondary
    , Tw.text_4xl
    , Tw.w_full
    ]


button_ : List (Attribute msg) -> List (Html msg) -> Html msg
button_ =
    styled button inputBaseStyles


select_ : List (Attribute msg) -> List (Html msg) -> Html msg
select_ =
    styled select inputBaseStyles


header_ : List (Attribute msg) -> List (Html msg) -> Html msg
header_ =
    styled div [ Tw.grid, Tw.grid_cols_header, Tw.mb_10, Tw.w_full ]
