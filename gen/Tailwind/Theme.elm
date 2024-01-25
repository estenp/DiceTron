module Tailwind.Theme exposing
    ( Color
    , secondary
    , primary
    , tertiary
    , destruct
    , exclaim
    , success
    , black_100
    , black_200
    , black_300
    , black_400
    , gray
    , white
    , purple_100
    , purple_200
    , purple_300
    , Opacity
    , opacity0
    , opacity5
    , opacity10
    , opacity20
    , opacity25
    , opacity30
    , opacity40
    , opacity50
    , opacity60
    , opacity70
    , opacity75
    , opacity80
    , opacity90
    , opacity95
    , opacity100
    )

{-|


## This Tailwind Theme

This module contains all colors and opacities from your tailwind configuration.

If you want to extend the set of available colors or opacities, take a look [configuring tailwind].


### Colors

@docs Color
@docs secondary
@docs primary
@docs tertiary
@docs destruct
@docs exclaim
@docs success
@docs black_100
@docs black_200
@docs black_300
@docs black_400
@docs gray
@docs white
@docs purple_100
@docs purple_200
@docs purple_300


### Opacities

@docs Opacity
@docs opacity0
@docs opacity5
@docs opacity10
@docs opacity20
@docs opacity25
@docs opacity30
@docs opacity40
@docs opacity50
@docs opacity60
@docs opacity70
@docs opacity75
@docs opacity80
@docs opacity90
@docs opacity95
@docs opacity100

[configuring tailwind]: https://tailwindcss.com/docs/responsive-design

-}

import Tailwind.Color as Tw


{-| The type for tailwind colors.

Values of this type can be found in this module.

They can be used with tailwind utility functions like `bg_color`.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryRgb`.

-}
type alias Color =
    Tw.Color


{-| The type for tailwind opacities.

Values of this type can be found in this module.

They can be used to modify the default opacities associated with colors
using the `withOpacity` function.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryOpactiyPct`.

-}
type alias Opacity =
    Tw.Opacity


secondary : Color
secondary =
    Tw.Color "rgb" "223" "238" "227" Tw.ViaVariable


primary : Color
primary =
    Tw.Color "rgb" "150" "89" "88" Tw.ViaVariable


tertiary : Color
tertiary =
    Tw.Color "rgb" "161" "159" "187" Tw.ViaVariable


destruct : Color
destruct =
    Tw.Color "rgb" "142" "74" "73" Tw.ViaVariable


exclaim : Color
exclaim =
    Tw.Color "rgb" "224" "144" "93" Tw.ViaVariable


success : Color
success =
    Tw.Color "rgb" "78" "208" "182" Tw.ViaVariable


black_100 : Color
black_100 =
    Tw.Color "rgb" "73" "65" "82" Tw.ViaVariable


black_200 : Color
black_200 =
    Tw.Color "rgb" "48" "41" "55" Tw.ViaVariable


black_300 : Color
black_300 =
    Tw.Color "rgb" "55" "47" "62" Tw.ViaVariable


black_400 : Color
black_400 =
    Tw.Color "rgb" "34" "33" "35" Tw.ViaVariable


gray : Color
gray =
    Tw.Color "rgb" "232" "232" "232" Tw.ViaVariable


white : Color
white =
    Tw.Color "rgb" "249" "244" "245" Tw.ViaVariable


purple_100 : Color
purple_100 =
    Tw.Color "rgb" "200" "184" "219" Tw.ViaVariable


purple_200 : Color
purple_200 =
    Tw.Color "rgb" "112" "88" "124" Tw.ViaVariable


purple_300 : Color
purple_300 =
    Tw.Color "rgb" "80" "47" "76" Tw.ViaVariable


opacity0 : Opacity
opacity0 =
    Tw.Opacity "0"


opacity5 : Opacity
opacity5 =
    Tw.Opacity "0.05"


opacity10 : Opacity
opacity10 =
    Tw.Opacity "0.1"


opacity20 : Opacity
opacity20 =
    Tw.Opacity "0.2"


opacity25 : Opacity
opacity25 =
    Tw.Opacity "0.25"


opacity30 : Opacity
opacity30 =
    Tw.Opacity "0.3"


opacity40 : Opacity
opacity40 =
    Tw.Opacity "0.4"


opacity50 : Opacity
opacity50 =
    Tw.Opacity "0.5"


opacity60 : Opacity
opacity60 =
    Tw.Opacity "0.6"


opacity70 : Opacity
opacity70 =
    Tw.Opacity "0.7"


opacity75 : Opacity
opacity75 =
    Tw.Opacity "0.75"


opacity80 : Opacity
opacity80 =
    Tw.Opacity "0.8"


opacity90 : Opacity
opacity90 =
    Tw.Opacity "0.9"


opacity95 : Opacity
opacity95 =
    Tw.Opacity "0.95"


opacity100 : Opacity
opacity100 =
    Tw.Opacity "1"
