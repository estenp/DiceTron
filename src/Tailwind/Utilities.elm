module Tailwind.Utilities exposing
    ( globalStyles
    , absolute
    , align_baseline
    , align_bottom
    , align_middle
    , align_text_bottom
    , align_text_top
    , align_top
    , animate_bounce
    , animate_none
    , animate_ping
    , animate_pulse
    , animate_spin
    , antialiased
    , appearance_none
    , aspect_h_1
    , aspect_h_10
    , aspect_h_11
    , aspect_h_12
    , aspect_h_13
    , aspect_h_14
    , aspect_h_15
    , aspect_h_16
    , aspect_h_2
    , aspect_h_3
    , aspect_h_4
    , aspect_h_5
    , aspect_h_6
    , aspect_h_7
    , aspect_h_8
    , aspect_h_9
    , aspect_none
    , aspect_w_1
    , aspect_w_10
    , aspect_w_11
    , aspect_w_12
    , aspect_w_13
    , aspect_w_14
    , aspect_w_15
    , aspect_w_16
    , aspect_w_2
    , aspect_w_3
    , aspect_w_4
    , aspect_w_5
    , aspect_w_6
    , aspect_w_7
    , aspect_w_8
    , aspect_w_9
    , auto_cols_auto
    , auto_cols_fr
    , auto_cols_max
    , auto_cols_min
    , auto_rows_auto
    , auto_rows_fr
    , auto_rows_max
    , auto_rows_min
    , backdrop_blur
    , backdrop_blur_0
    , backdrop_blur_2xl
    , backdrop_blur_3xl
    , backdrop_blur_lg
    , backdrop_blur_md
    , backdrop_blur_none
    , backdrop_blur_sm
    , backdrop_blur_xl
    , backdrop_brightness_0
    , backdrop_brightness_100
    , backdrop_brightness_105
    , backdrop_brightness_110
    , backdrop_brightness_125
    , backdrop_brightness_150
    , backdrop_brightness_200
    , backdrop_brightness_50
    , backdrop_brightness_75
    , backdrop_brightness_90
    , backdrop_brightness_95
    , backdrop_contrast_0
    , backdrop_contrast_100
    , backdrop_contrast_125
    , backdrop_contrast_150
    , backdrop_contrast_200
    , backdrop_contrast_50
    , backdrop_contrast_75
    , backdrop_filter
    , backdrop_filter_none
    , backdrop_grayscale
    , backdrop_grayscale_0
    , backdrop_hue_rotate_0
    , backdrop_hue_rotate_15
    , backdrop_hue_rotate_180
    , backdrop_hue_rotate_30
    , backdrop_hue_rotate_60
    , backdrop_hue_rotate_90
    , backdrop_invert
    , backdrop_invert_0
    , backdrop_opacity_0
    , backdrop_opacity_10
    , backdrop_opacity_100
    , backdrop_opacity_20
    , backdrop_opacity_25
    , backdrop_opacity_30
    , backdrop_opacity_40
    , backdrop_opacity_5
    , backdrop_opacity_50
    , backdrop_opacity_60
    , backdrop_opacity_70
    , backdrop_opacity_75
    , backdrop_opacity_80
    , backdrop_opacity_90
    , backdrop_opacity_95
    , backdrop_saturate_0
    , backdrop_saturate_100
    , backdrop_saturate_150
    , backdrop_saturate_200
    , backdrop_saturate_50
    , backdrop_sepia
    , backdrop_sepia_0
    , bg_auto
    , bg_blend_color
    , bg_blend_color_burn
    , bg_blend_color_dodge
    , bg_blend_darken
    , bg_blend_difference
    , bg_blend_exclusion
    , bg_blend_hard_light
    , bg_blend_hue
    , bg_blend_lighten
    , bg_blend_luminosity
    , bg_blend_multiply
    , bg_blend_normal
    , bg_blend_overlay
    , bg_blend_saturation
    , bg_blend_screen
    , bg_blend_soft_light
    , bg_bottom
    , bg_center
    , bg_clip_border
    , bg_clip_content
    , bg_clip_padding
    , bg_clip_text
    , bg_contain
    , bg_cover
    , bg_destruct
    , bg_exclaim
    , bg_fixed
    , bg_gradient_to_b
    , bg_gradient_to_bl
    , bg_gradient_to_br
    , bg_gradient_to_l
    , bg_gradient_to_r
    , bg_gradient_to_t
    , bg_gradient_to_tl
    , bg_gradient_to_tr
    , bg_left
    , bg_left_bottom
    , bg_left_top
    , bg_local
    , bg_no_repeat
    , bg_none
    , bg_opacity_0
    , bg_opacity_10
    , bg_opacity_100
    , bg_opacity_20
    , bg_opacity_25
    , bg_opacity_30
    , bg_opacity_40
    , bg_opacity_5
    , bg_opacity_50
    , bg_opacity_60
    , bg_opacity_70
    , bg_opacity_75
    , bg_opacity_80
    , bg_opacity_90
    , bg_opacity_95
    , bg_origin_border
    , bg_origin_content
    , bg_origin_padding
    , bg_primary
    , bg_repeat
    , bg_repeat_round
    , bg_repeat_space
    , bg_repeat_x
    , bg_repeat_y
    , bg_right
    , bg_right_bottom
    , bg_right_top
    , bg_scroll
    , bg_secondary
    , bg_success
    , bg_tertiary
    , bg_top
    , block
    , blur
    , blur_0
    , blur_2xl
    , blur_3xl
    , blur_lg
    , blur_md
    , blur_none
    , blur_sm
    , blur_xl
    , border
    , border_0
    , border_2
    , border_4
    , border_8
    , border_b
    , border_b_0
    , border_b_2
    , border_b_4
    , border_b_8
    , border_collapse
    , border_dashed
    , border_destruct
    , border_dotted
    , border_double
    , border_exclaim
    , border_l
    , border_l_0
    , border_l_2
    , border_l_4
    , border_l_8
    , border_none
    , border_opacity_0
    , border_opacity_10
    , border_opacity_100
    , border_opacity_20
    , border_opacity_25
    , border_opacity_30
    , border_opacity_40
    , border_opacity_5
    , border_opacity_50
    , border_opacity_60
    , border_opacity_70
    , border_opacity_75
    , border_opacity_80
    , border_opacity_90
    , border_opacity_95
    , border_primary
    , border_r
    , border_r_0
    , border_r_2
    , border_r_4
    , border_r_8
    , border_secondary
    , border_separate
    , border_solid
    , border_success
    , border_t
    , border_t_0
    , border_t_2
    , border_t_4
    , border_t_8
    , border_tertiary
    , bottom_0
    , bottom_0_dot_5
    , bottom_1
    , bottom_10
    , bottom_11
    , bottom_12
    , bottom_14
    , bottom_16
    , bottom_1_dot_5
    , bottom_1over2
    , bottom_1over3
    , bottom_1over4
    , bottom_2
    , bottom_20
    , bottom_24
    , bottom_28
    , bottom_2_dot_5
    , bottom_2over3
    , bottom_2over4
    , bottom_3
    , bottom_32
    , bottom_36
    , bottom_3_dot_5
    , bottom_3over4
    , bottom_4
    , bottom_40
    , bottom_44
    , bottom_48
    , bottom_5
    , bottom_52
    , bottom_56
    , bottom_6
    , bottom_60
    , bottom_64
    , bottom_7
    , bottom_72
    , bottom_8
    , bottom_80
    , bottom_9
    , bottom_96
    , bottom_auto
    , bottom_full
    , bottom_px
    , box_border
    , box_content
    , break_all
    , break_normal
    , break_words
    , brightness_0
    , brightness_100
    , brightness_105
    , brightness_110
    , brightness_125
    , brightness_150
    , brightness_200
    , brightness_50
    , brightness_75
    , brightness_90
    , brightness_95
    , capitalize
    , clear_both
    , clear_left
    , clear_none
    , clear_right
    , col_auto
    , col_end_1
    , col_end_10
    , col_end_11
    , col_end_12
    , col_end_13
    , col_end_2
    , col_end_3
    , col_end_4
    , col_end_5
    , col_end_6
    , col_end_7
    , col_end_8
    , col_end_9
    , col_end_auto
    , col_span_1
    , col_span_10
    , col_span_11
    , col_span_12
    , col_span_2
    , col_span_3
    , col_span_4
    , col_span_5
    , col_span_6
    , col_span_7
    , col_span_8
    , col_span_9
    , col_span_full
    , col_start_1
    , col_start_10
    , col_start_11
    , col_start_12
    , col_start_13
    , col_start_2
    , col_start_3
    , col_start_4
    , col_start_5
    , col_start_6
    , col_start_7
    , col_start_8
    , col_start_9
    , col_start_auto
    , container
    , content_around
    , content_between
    , content_center
    , content_end
    , content_evenly
    , content_start
    , contents
    , contrast_0
    , contrast_100
    , contrast_125
    , contrast_150
    , contrast_200
    , contrast_50
    , contrast_75
    , cursor_auto
    , cursor_default
    , cursor_help
    , cursor_move
    , cursor_not_allowed
    , cursor_pointer
    , cursor_text
    , cursor_wait
    , decoration_clone
    , decoration_slice
    , delay_100
    , delay_1000
    , delay_150
    , delay_200
    , delay_300
    , delay_500
    , delay_700
    , delay_75
    , diagonal_fractions
    , divide_dashed
    , divide_destruct
    , divide_dotted
    , divide_double
    , divide_exclaim
    , divide_none
    , divide_opacity_0
    , divide_opacity_10
    , divide_opacity_100
    , divide_opacity_20
    , divide_opacity_25
    , divide_opacity_30
    , divide_opacity_40
    , divide_opacity_5
    , divide_opacity_50
    , divide_opacity_60
    , divide_opacity_70
    , divide_opacity_75
    , divide_opacity_80
    , divide_opacity_90
    , divide_opacity_95
    , divide_primary
    , divide_secondary
    , divide_solid
    , divide_success
    , divide_tertiary
    , divide_x
    , divide_x_0
    , divide_x_2
    , divide_x_4
    , divide_x_8
    , divide_x_reverse
    , divide_y
    , divide_y_0
    , divide_y_2
    , divide_y_4
    , divide_y_8
    , divide_y_reverse
    , drop_shadow
    , drop_shadow_2xl
    , drop_shadow_lg
    , drop_shadow_md
    , drop_shadow_none
    , drop_shadow_sm
    , drop_shadow_xl
    , duration_100
    , duration_1000
    , duration_150
    , duration_200
    , duration_300
    , duration_500
    , duration_700
    , duration_75
    , ease_in
    , ease_in_out
    , ease_linear
    , ease_out
    , fill_current
    , filter
    , filter_none
    , fixed
    , flex
    , flex_1
    , flex_auto
    , flex_col
    , flex_col_reverse
    , flex_grow
    , flex_grow_0
    , flex_initial
    , flex_none
    , flex_nowrap
    , flex_row
    , flex_row_reverse
    , flex_shrink
    , flex_shrink_0
    , flex_wrap
    , flex_wrap_reverse
    , float_left
    , float_none
    , float_right
    , flow_root
    , font_black
    , font_bold
    , font_extrabold
    , font_extralight
    , font_light
    , font_medium
    , font_normal
    , font_sans
    , font_semibold
    , font_thin
    , form_checkbox
    , form_input
    , form_multiselect
    , form_radio
    , form_select
    , form_textarea
    , from_destruct
    , from_exclaim
    , from_primary
    , from_secondary
    , from_success
    , from_tertiary
    , gap_0
    , gap_0_dot_5
    , gap_1
    , gap_10
    , gap_11
    , gap_12
    , gap_14
    , gap_16
    , gap_1_dot_5
    , gap_2
    , gap_20
    , gap_24
    , gap_28
    , gap_2_dot_5
    , gap_3
    , gap_32
    , gap_36
    , gap_3_dot_5
    , gap_4
    , gap_40
    , gap_44
    , gap_48
    , gap_5
    , gap_52
    , gap_56
    , gap_6
    , gap_60
    , gap_64
    , gap_7
    , gap_72
    , gap_8
    , gap_80
    , gap_9
    , gap_96
    , gap_px
    , gap_x_0
    , gap_x_0_dot_5
    , gap_x_1
    , gap_x_10
    , gap_x_11
    , gap_x_12
    , gap_x_14
    , gap_x_16
    , gap_x_1_dot_5
    , gap_x_2
    , gap_x_20
    , gap_x_24
    , gap_x_28
    , gap_x_2_dot_5
    , gap_x_3
    , gap_x_32
    , gap_x_36
    , gap_x_3_dot_5
    , gap_x_4
    , gap_x_40
    , gap_x_44
    , gap_x_48
    , gap_x_5
    , gap_x_52
    , gap_x_56
    , gap_x_6
    , gap_x_60
    , gap_x_64
    , gap_x_7
    , gap_x_72
    , gap_x_8
    , gap_x_80
    , gap_x_9
    , gap_x_96
    , gap_x_px
    , gap_y_0
    , gap_y_0_dot_5
    , gap_y_1
    , gap_y_10
    , gap_y_11
    , gap_y_12
    , gap_y_14
    , gap_y_16
    , gap_y_1_dot_5
    , gap_y_2
    , gap_y_20
    , gap_y_24
    , gap_y_28
    , gap_y_2_dot_5
    , gap_y_3
    , gap_y_32
    , gap_y_36
    , gap_y_3_dot_5
    , gap_y_4
    , gap_y_40
    , gap_y_44
    , gap_y_48
    , gap_y_5
    , gap_y_52
    , gap_y_56
    , gap_y_6
    , gap_y_60
    , gap_y_64
    , gap_y_7
    , gap_y_72
    , gap_y_8
    , gap_y_80
    , gap_y_9
    , gap_y_96
    , gap_y_px
    , grayscale
    , grayscale_0
    , grid
    , grid_cols_1
    , grid_cols_10
    , grid_cols_11
    , grid_cols_12
    , grid_cols_2
    , grid_cols_3
    , grid_cols_4
    , grid_cols_5
    , grid_cols_6
    , grid_cols_7
    , grid_cols_8
    , grid_cols_9
    , grid_cols_header
    , grid_cols_none
    , grid_flow_col
    , grid_flow_col_dense
    , grid_flow_row
    , grid_flow_row_dense
    , grid_rows_1
    , grid_rows_2
    , grid_rows_3
    , grid_rows_4
    , grid_rows_5
    , grid_rows_6
    , grid_rows_none
    , h_0
    , h_0_dot_5
    , h_1
    , h_10
    , h_11
    , h_12
    , h_14
    , h_16
    , h_1_dot_5
    , h_1over2
    , h_1over3
    , h_1over4
    , h_1over5
    , h_1over6
    , h_2
    , h_20
    , h_24
    , h_28
    , h_2_dot_5
    , h_2over3
    , h_2over4
    , h_2over5
    , h_2over6
    , h_3
    , h_32
    , h_36
    , h_3_dot_5
    , h_3over4
    , h_3over5
    , h_3over6
    , h_4
    , h_40
    , h_44
    , h_48
    , h_4over5
    , h_4over6
    , h_5
    , h_52
    , h_56
    , h_5over6
    , h_6
    , h_60
    , h_64
    , h_7
    , h_72
    , h_8
    , h_80
    , h_9
    , h_96
    , h_auto
    , h_full
    , h_px
    , h_screen
    , hidden
    , hue_rotate_0
    , hue_rotate_15
    , hue_rotate_180
    , hue_rotate_30
    , hue_rotate_60
    , hue_rotate_90
    , inline
    , inline_block
    , inline_flex
    , inline_grid
    , inline_table
    , inset_0
    , inset_0_dot_5
    , inset_1
    , inset_10
    , inset_11
    , inset_12
    , inset_14
    , inset_16
    , inset_1_dot_5
    , inset_1over2
    , inset_1over3
    , inset_1over4
    , inset_2
    , inset_20
    , inset_24
    , inset_28
    , inset_2_dot_5
    , inset_2over3
    , inset_2over4
    , inset_3
    , inset_32
    , inset_36
    , inset_3_dot_5
    , inset_3over4
    , inset_4
    , inset_40
    , inset_44
    , inset_48
    , inset_5
    , inset_52
    , inset_56
    , inset_6
    , inset_60
    , inset_64
    , inset_7
    , inset_72
    , inset_8
    , inset_80
    , inset_9
    , inset_96
    , inset_auto
    , inset_full
    , inset_px
    , inset_x_0
    , inset_x_0_dot_5
    , inset_x_1
    , inset_x_10
    , inset_x_11
    , inset_x_12
    , inset_x_14
    , inset_x_16
    , inset_x_1_dot_5
    , inset_x_1over2
    , inset_x_1over3
    , inset_x_1over4
    , inset_x_2
    , inset_x_20
    , inset_x_24
    , inset_x_28
    , inset_x_2_dot_5
    , inset_x_2over3
    , inset_x_2over4
    , inset_x_3
    , inset_x_32
    , inset_x_36
    , inset_x_3_dot_5
    , inset_x_3over4
    , inset_x_4
    , inset_x_40
    , inset_x_44
    , inset_x_48
    , inset_x_5
    , inset_x_52
    , inset_x_56
    , inset_x_6
    , inset_x_60
    , inset_x_64
    , inset_x_7
    , inset_x_72
    , inset_x_8
    , inset_x_80
    , inset_x_9
    , inset_x_96
    , inset_x_auto
    , inset_x_full
    , inset_x_px
    , inset_y_0
    , inset_y_0_dot_5
    , inset_y_1
    , inset_y_10
    , inset_y_11
    , inset_y_12
    , inset_y_14
    , inset_y_16
    , inset_y_1_dot_5
    , inset_y_1over2
    , inset_y_1over3
    , inset_y_1over4
    , inset_y_2
    , inset_y_20
    , inset_y_24
    , inset_y_28
    , inset_y_2_dot_5
    , inset_y_2over3
    , inset_y_2over4
    , inset_y_3
    , inset_y_32
    , inset_y_36
    , inset_y_3_dot_5
    , inset_y_3over4
    , inset_y_4
    , inset_y_40
    , inset_y_44
    , inset_y_48
    , inset_y_5
    , inset_y_52
    , inset_y_56
    , inset_y_6
    , inset_y_60
    , inset_y_64
    , inset_y_7
    , inset_y_72
    , inset_y_8
    , inset_y_80
    , inset_y_9
    , inset_y_96
    , inset_y_auto
    , inset_y_full
    , inset_y_px
    , invert
    , invert_0
    , invisible
    , isolate
    , isolation_auto
    , italic
    , items_baseline
    , items_center
    , items_end
    , items_start
    , items_stretch
    , justify_around
    , justify_between
    , justify_center
    , justify_end
    , justify_evenly
    , justify_items_center
    , justify_items_end
    , justify_items_start
    , justify_items_stretch
    , justify_self_auto
    , justify_self_center
    , justify_self_end
    , justify_self_start
    , justify_self_stretch
    , justify_start
    , leading_10
    , leading_3
    , leading_4
    , leading_5
    , leading_6
    , leading_7
    , leading_8
    , leading_9
    , leading_loose
    , leading_none
    , leading_normal
    , leading_relaxed
    , leading_snug
    , leading_tight
    , left_0
    , left_0_dot_5
    , left_1
    , left_10
    , left_11
    , left_12
    , left_14
    , left_16
    , left_1_dot_5
    , left_1over2
    , left_1over3
    , left_1over4
    , left_2
    , left_20
    , left_24
    , left_28
    , left_2_dot_5
    , left_2over3
    , left_2over4
    , left_3
    , left_32
    , left_36
    , left_3_dot_5
    , left_3over4
    , left_4
    , left_40
    , left_44
    , left_48
    , left_5
    , left_52
    , left_56
    , left_6
    , left_60
    , left_64
    , left_7
    , left_72
    , left_8
    , left_80
    , left_9
    , left_96
    , left_auto
    , left_full
    , left_px
    , line_through
    , lining_nums
    , list_decimal
    , list_disc
    , list_inside
    , list_item
    , list_none
    , list_outside
    , lowercase
    , m_0
    , m_0_dot_5
    , m_1
    , m_10
    , m_11
    , m_12
    , m_14
    , m_16
    , m_1_dot_5
    , m_2
    , m_20
    , m_24
    , m_28
    , m_2_dot_5
    , m_3
    , m_32
    , m_36
    , m_3_dot_5
    , m_4
    , m_40
    , m_44
    , m_48
    , m_5
    , m_52
    , m_56
    , m_6
    , m_60
    , m_64
    , m_7
    , m_72
    , m_8
    , m_80
    , m_9
    , m_96
    , m_auto
    , m_px
    , max_h_0
    , max_h_0_dot_5
    , max_h_1
    , max_h_10
    , max_h_11
    , max_h_12
    , max_h_14
    , max_h_16
    , max_h_1_dot_5
    , max_h_2
    , max_h_20
    , max_h_24
    , max_h_28
    , max_h_2_dot_5
    , max_h_3
    , max_h_32
    , max_h_36
    , max_h_3_dot_5
    , max_h_4
    , max_h_40
    , max_h_44
    , max_h_48
    , max_h_5
    , max_h_52
    , max_h_56
    , max_h_6
    , max_h_60
    , max_h_64
    , max_h_7
    , max_h_72
    , max_h_8
    , max_h_80
    , max_h_9
    , max_h_96
    , max_h_full
    , max_h_px
    , max_h_screen
    , max_w_0
    , max_w_2xl
    , max_w_3xl
    , max_w_4xl
    , max_w_5xl
    , max_w_6xl
    , max_w_7xl
    , max_w_full
    , max_w_lg
    , max_w_max
    , max_w_md
    , max_w_min
    , max_w_none
    , max_w_prose
    , max_w_screen_2xl
    , max_w_screen_lg
    , max_w_screen_md
    , max_w_screen_sm
    , max_w_screen_xl
    , max_w_sm
    , max_w_xl
    , max_w_xs
    , mb_0
    , mb_0_dot_5
    , mb_1
    , mb_10
    , mb_11
    , mb_12
    , mb_14
    , mb_16
    , mb_1_dot_5
    , mb_2
    , mb_20
    , mb_24
    , mb_28
    , mb_2_dot_5
    , mb_3
    , mb_32
    , mb_36
    , mb_3_dot_5
    , mb_4
    , mb_40
    , mb_44
    , mb_48
    , mb_5
    , mb_52
    , mb_56
    , mb_6
    , mb_60
    , mb_64
    , mb_7
    , mb_72
    , mb_8
    , mb_80
    , mb_9
    , mb_96
    , mb_auto
    , mb_px
    , min_h_0
    , min_h_full
    , min_h_screen
    , min_w_0
    , min_w_full
    , min_w_max
    , min_w_min
    , mix_blend_color
    , mix_blend_color_burn
    , mix_blend_color_dodge
    , mix_blend_darken
    , mix_blend_difference
    , mix_blend_exclusion
    , mix_blend_hard_light
    , mix_blend_hue
    , mix_blend_lighten
    , mix_blend_luminosity
    , mix_blend_multiply
    , mix_blend_normal
    , mix_blend_overlay
    , mix_blend_saturation
    , mix_blend_screen
    , mix_blend_soft_light
    , ml_0
    , ml_0_dot_5
    , ml_1
    , ml_10
    , ml_11
    , ml_12
    , ml_14
    , ml_16
    , ml_1_dot_5
    , ml_2
    , ml_20
    , ml_24
    , ml_28
    , ml_2_dot_5
    , ml_3
    , ml_32
    , ml_36
    , ml_3_dot_5
    , ml_4
    , ml_40
    , ml_44
    , ml_48
    , ml_5
    , ml_52
    , ml_56
    , ml_6
    , ml_60
    , ml_64
    , ml_7
    , ml_72
    , ml_8
    , ml_80
    , ml_9
    , ml_96
    , ml_auto
    , ml_px
    , mr_0
    , mr_0_dot_5
    , mr_1
    , mr_10
    , mr_11
    , mr_12
    , mr_14
    , mr_16
    , mr_1_dot_5
    , mr_2
    , mr_20
    , mr_24
    , mr_28
    , mr_2_dot_5
    , mr_3
    , mr_32
    , mr_36
    , mr_3_dot_5
    , mr_4
    , mr_40
    , mr_44
    , mr_48
    , mr_5
    , mr_52
    , mr_56
    , mr_6
    , mr_60
    , mr_64
    , mr_7
    , mr_72
    , mr_8
    , mr_80
    , mr_9
    , mr_96
    , mr_auto
    , mr_px
    , mt_0
    , mt_0_dot_5
    , mt_1
    , mt_10
    , mt_11
    , mt_12
    , mt_14
    , mt_16
    , mt_1_dot_5
    , mt_2
    , mt_20
    , mt_24
    , mt_28
    , mt_2_dot_5
    , mt_3
    , mt_32
    , mt_36
    , mt_3_dot_5
    , mt_4
    , mt_40
    , mt_44
    , mt_48
    , mt_5
    , mt_52
    , mt_56
    , mt_6
    , mt_60
    , mt_64
    , mt_7
    , mt_72
    , mt_8
    , mt_80
    , mt_9
    , mt_96
    , mt_auto
    , mt_px
    , mx_0
    , mx_0_dot_5
    , mx_1
    , mx_10
    , mx_11
    , mx_12
    , mx_14
    , mx_16
    , mx_1_dot_5
    , mx_2
    , mx_20
    , mx_24
    , mx_28
    , mx_2_dot_5
    , mx_3
    , mx_32
    , mx_36
    , mx_3_dot_5
    , mx_4
    , mx_40
    , mx_44
    , mx_48
    , mx_5
    , mx_52
    , mx_56
    , mx_6
    , mx_60
    , mx_64
    , mx_7
    , mx_72
    , mx_8
    , mx_80
    , mx_9
    , mx_96
    , mx_auto
    , mx_px
    , my_0
    , my_0_dot_5
    , my_1
    , my_10
    , my_11
    , my_12
    , my_14
    , my_16
    , my_1_dot_5
    , my_2
    , my_20
    , my_24
    , my_28
    , my_2_dot_5
    , my_3
    , my_32
    , my_36
    , my_3_dot_5
    , my_4
    , my_40
    , my_44
    , my_48
    , my_5
    , my_52
    , my_56
    , my_6
    , my_60
    , my_64
    , my_7
    , my_72
    , my_8
    , my_80
    , my_9
    , my_96
    , my_auto
    , my_px
    , neg_backdrop_hue_rotate_15
    , neg_backdrop_hue_rotate_180
    , neg_backdrop_hue_rotate_30
    , neg_backdrop_hue_rotate_60
    , neg_backdrop_hue_rotate_90
    , neg_bottom_0
    , neg_bottom_0_dot_5
    , neg_bottom_1
    , neg_bottom_10
    , neg_bottom_11
    , neg_bottom_12
    , neg_bottom_14
    , neg_bottom_16
    , neg_bottom_1_dot_5
    , neg_bottom_1over2
    , neg_bottom_1over3
    , neg_bottom_1over4
    , neg_bottom_2
    , neg_bottom_20
    , neg_bottom_24
    , neg_bottom_28
    , neg_bottom_2_dot_5
    , neg_bottom_2over3
    , neg_bottom_2over4
    , neg_bottom_3
    , neg_bottom_32
    , neg_bottom_36
    , neg_bottom_3_dot_5
    , neg_bottom_3over4
    , neg_bottom_4
    , neg_bottom_40
    , neg_bottom_44
    , neg_bottom_48
    , neg_bottom_5
    , neg_bottom_52
    , neg_bottom_56
    , neg_bottom_6
    , neg_bottom_60
    , neg_bottom_64
    , neg_bottom_7
    , neg_bottom_72
    , neg_bottom_8
    , neg_bottom_80
    , neg_bottom_9
    , neg_bottom_96
    , neg_bottom_full
    , neg_bottom_px
    , neg_hue_rotate_15
    , neg_hue_rotate_180
    , neg_hue_rotate_30
    , neg_hue_rotate_60
    , neg_hue_rotate_90
    , neg_inset_0
    , neg_inset_0_dot_5
    , neg_inset_1
    , neg_inset_10
    , neg_inset_11
    , neg_inset_12
    , neg_inset_14
    , neg_inset_16
    , neg_inset_1_dot_5
    , neg_inset_1over2
    , neg_inset_1over3
    , neg_inset_1over4
    , neg_inset_2
    , neg_inset_20
    , neg_inset_24
    , neg_inset_28
    , neg_inset_2_dot_5
    , neg_inset_2over3
    , neg_inset_2over4
    , neg_inset_3
    , neg_inset_32
    , neg_inset_36
    , neg_inset_3_dot_5
    , neg_inset_3over4
    , neg_inset_4
    , neg_inset_40
    , neg_inset_44
    , neg_inset_48
    , neg_inset_5
    , neg_inset_52
    , neg_inset_56
    , neg_inset_6
    , neg_inset_60
    , neg_inset_64
    , neg_inset_7
    , neg_inset_72
    , neg_inset_8
    , neg_inset_80
    , neg_inset_9
    , neg_inset_96
    , neg_inset_full
    , neg_inset_px
    , neg_inset_x_0
    , neg_inset_x_0_dot_5
    , neg_inset_x_1
    , neg_inset_x_10
    , neg_inset_x_11
    , neg_inset_x_12
    , neg_inset_x_14
    , neg_inset_x_16
    , neg_inset_x_1_dot_5
    , neg_inset_x_1over2
    , neg_inset_x_1over3
    , neg_inset_x_1over4
    , neg_inset_x_2
    , neg_inset_x_20
    , neg_inset_x_24
    , neg_inset_x_28
    , neg_inset_x_2_dot_5
    , neg_inset_x_2over3
    , neg_inset_x_2over4
    , neg_inset_x_3
    , neg_inset_x_32
    , neg_inset_x_36
    , neg_inset_x_3_dot_5
    , neg_inset_x_3over4
    , neg_inset_x_4
    , neg_inset_x_40
    , neg_inset_x_44
    , neg_inset_x_48
    , neg_inset_x_5
    , neg_inset_x_52
    , neg_inset_x_56
    , neg_inset_x_6
    , neg_inset_x_60
    , neg_inset_x_64
    , neg_inset_x_7
    , neg_inset_x_72
    , neg_inset_x_8
    , neg_inset_x_80
    , neg_inset_x_9
    , neg_inset_x_96
    , neg_inset_x_full
    , neg_inset_x_px
    , neg_inset_y_0
    , neg_inset_y_0_dot_5
    , neg_inset_y_1
    , neg_inset_y_10
    , neg_inset_y_11
    , neg_inset_y_12
    , neg_inset_y_14
    , neg_inset_y_16
    , neg_inset_y_1_dot_5
    , neg_inset_y_1over2
    , neg_inset_y_1over3
    , neg_inset_y_1over4
    , neg_inset_y_2
    , neg_inset_y_20
    , neg_inset_y_24
    , neg_inset_y_28
    , neg_inset_y_2_dot_5
    , neg_inset_y_2over3
    , neg_inset_y_2over4
    , neg_inset_y_3
    , neg_inset_y_32
    , neg_inset_y_36
    , neg_inset_y_3_dot_5
    , neg_inset_y_3over4
    , neg_inset_y_4
    , neg_inset_y_40
    , neg_inset_y_44
    , neg_inset_y_48
    , neg_inset_y_5
    , neg_inset_y_52
    , neg_inset_y_56
    , neg_inset_y_6
    , neg_inset_y_60
    , neg_inset_y_64
    , neg_inset_y_7
    , neg_inset_y_72
    , neg_inset_y_8
    , neg_inset_y_80
    , neg_inset_y_9
    , neg_inset_y_96
    , neg_inset_y_full
    , neg_inset_y_px
    , neg_left_0
    , neg_left_0_dot_5
    , neg_left_1
    , neg_left_10
    , neg_left_11
    , neg_left_12
    , neg_left_14
    , neg_left_16
    , neg_left_1_dot_5
    , neg_left_1over2
    , neg_left_1over3
    , neg_left_1over4
    , neg_left_2
    , neg_left_20
    , neg_left_24
    , neg_left_28
    , neg_left_2_dot_5
    , neg_left_2over3
    , neg_left_2over4
    , neg_left_3
    , neg_left_32
    , neg_left_36
    , neg_left_3_dot_5
    , neg_left_3over4
    , neg_left_4
    , neg_left_40
    , neg_left_44
    , neg_left_48
    , neg_left_5
    , neg_left_52
    , neg_left_56
    , neg_left_6
    , neg_left_60
    , neg_left_64
    , neg_left_7
    , neg_left_72
    , neg_left_8
    , neg_left_80
    , neg_left_9
    , neg_left_96
    , neg_left_full
    , neg_left_px
    , neg_m_0
    , neg_m_0_dot_5
    , neg_m_1
    , neg_m_10
    , neg_m_11
    , neg_m_12
    , neg_m_14
    , neg_m_16
    , neg_m_1_dot_5
    , neg_m_2
    , neg_m_20
    , neg_m_24
    , neg_m_28
    , neg_m_2_dot_5
    , neg_m_3
    , neg_m_32
    , neg_m_36
    , neg_m_3_dot_5
    , neg_m_4
    , neg_m_40
    , neg_m_44
    , neg_m_48
    , neg_m_5
    , neg_m_52
    , neg_m_56
    , neg_m_6
    , neg_m_60
    , neg_m_64
    , neg_m_7
    , neg_m_72
    , neg_m_8
    , neg_m_80
    , neg_m_9
    , neg_m_96
    , neg_m_px
    , neg_mb_0
    , neg_mb_0_dot_5
    , neg_mb_1
    , neg_mb_10
    , neg_mb_11
    , neg_mb_12
    , neg_mb_14
    , neg_mb_16
    , neg_mb_1_dot_5
    , neg_mb_2
    , neg_mb_20
    , neg_mb_24
    , neg_mb_28
    , neg_mb_2_dot_5
    , neg_mb_3
    , neg_mb_32
    , neg_mb_36
    , neg_mb_3_dot_5
    , neg_mb_4
    , neg_mb_40
    , neg_mb_44
    , neg_mb_48
    , neg_mb_5
    , neg_mb_52
    , neg_mb_56
    , neg_mb_6
    , neg_mb_60
    , neg_mb_64
    , neg_mb_7
    , neg_mb_72
    , neg_mb_8
    , neg_mb_80
    , neg_mb_9
    , neg_mb_96
    , neg_mb_px
    , neg_ml_0
    , neg_ml_0_dot_5
    , neg_ml_1
    , neg_ml_10
    , neg_ml_11
    , neg_ml_12
    , neg_ml_14
    , neg_ml_16
    , neg_ml_1_dot_5
    , neg_ml_2
    , neg_ml_20
    , neg_ml_24
    , neg_ml_28
    , neg_ml_2_dot_5
    , neg_ml_3
    , neg_ml_32
    , neg_ml_36
    , neg_ml_3_dot_5
    , neg_ml_4
    , neg_ml_40
    , neg_ml_44
    , neg_ml_48
    , neg_ml_5
    , neg_ml_52
    , neg_ml_56
    , neg_ml_6
    , neg_ml_60
    , neg_ml_64
    , neg_ml_7
    , neg_ml_72
    , neg_ml_8
    , neg_ml_80
    , neg_ml_9
    , neg_ml_96
    , neg_ml_px
    , neg_mr_0
    , neg_mr_0_dot_5
    , neg_mr_1
    , neg_mr_10
    , neg_mr_11
    , neg_mr_12
    , neg_mr_14
    , neg_mr_16
    , neg_mr_1_dot_5
    , neg_mr_2
    , neg_mr_20
    , neg_mr_24
    , neg_mr_28
    , neg_mr_2_dot_5
    , neg_mr_3
    , neg_mr_32
    , neg_mr_36
    , neg_mr_3_dot_5
    , neg_mr_4
    , neg_mr_40
    , neg_mr_44
    , neg_mr_48
    , neg_mr_5
    , neg_mr_52
    , neg_mr_56
    , neg_mr_6
    , neg_mr_60
    , neg_mr_64
    , neg_mr_7
    , neg_mr_72
    , neg_mr_8
    , neg_mr_80
    , neg_mr_9
    , neg_mr_96
    , neg_mr_px
    , neg_mt_0
    , neg_mt_0_dot_5
    , neg_mt_1
    , neg_mt_10
    , neg_mt_11
    , neg_mt_12
    , neg_mt_14
    , neg_mt_16
    , neg_mt_1_dot_5
    , neg_mt_2
    , neg_mt_20
    , neg_mt_24
    , neg_mt_28
    , neg_mt_2_dot_5
    , neg_mt_3
    , neg_mt_32
    , neg_mt_36
    , neg_mt_3_dot_5
    , neg_mt_4
    , neg_mt_40
    , neg_mt_44
    , neg_mt_48
    , neg_mt_5
    , neg_mt_52
    , neg_mt_56
    , neg_mt_6
    , neg_mt_60
    , neg_mt_64
    , neg_mt_7
    , neg_mt_72
    , neg_mt_8
    , neg_mt_80
    , neg_mt_9
    , neg_mt_96
    , neg_mt_px
    , neg_mx_0
    , neg_mx_0_dot_5
    , neg_mx_1
    , neg_mx_10
    , neg_mx_11
    , neg_mx_12
    , neg_mx_14
    , neg_mx_16
    , neg_mx_1_dot_5
    , neg_mx_2
    , neg_mx_20
    , neg_mx_24
    , neg_mx_28
    , neg_mx_2_dot_5
    , neg_mx_3
    , neg_mx_32
    , neg_mx_36
    , neg_mx_3_dot_5
    , neg_mx_4
    , neg_mx_40
    , neg_mx_44
    , neg_mx_48
    , neg_mx_5
    , neg_mx_52
    , neg_mx_56
    , neg_mx_6
    , neg_mx_60
    , neg_mx_64
    , neg_mx_7
    , neg_mx_72
    , neg_mx_8
    , neg_mx_80
    , neg_mx_9
    , neg_mx_96
    , neg_mx_px
    , neg_my_0
    , neg_my_0_dot_5
    , neg_my_1
    , neg_my_10
    , neg_my_11
    , neg_my_12
    , neg_my_14
    , neg_my_16
    , neg_my_1_dot_5
    , neg_my_2
    , neg_my_20
    , neg_my_24
    , neg_my_28
    , neg_my_2_dot_5
    , neg_my_3
    , neg_my_32
    , neg_my_36
    , neg_my_3_dot_5
    , neg_my_4
    , neg_my_40
    , neg_my_44
    , neg_my_48
    , neg_my_5
    , neg_my_52
    , neg_my_56
    , neg_my_6
    , neg_my_60
    , neg_my_64
    , neg_my_7
    , neg_my_72
    , neg_my_8
    , neg_my_80
    , neg_my_9
    , neg_my_96
    , neg_my_px
    , neg_right_0
    , neg_right_0_dot_5
    , neg_right_1
    , neg_right_10
    , neg_right_11
    , neg_right_12
    , neg_right_14
    , neg_right_16
    , neg_right_1_dot_5
    , neg_right_1over2
    , neg_right_1over3
    , neg_right_1over4
    , neg_right_2
    , neg_right_20
    , neg_right_24
    , neg_right_28
    , neg_right_2_dot_5
    , neg_right_2over3
    , neg_right_2over4
    , neg_right_3
    , neg_right_32
    , neg_right_36
    , neg_right_3_dot_5
    , neg_right_3over4
    , neg_right_4
    , neg_right_40
    , neg_right_44
    , neg_right_48
    , neg_right_5
    , neg_right_52
    , neg_right_56
    , neg_right_6
    , neg_right_60
    , neg_right_64
    , neg_right_7
    , neg_right_72
    , neg_right_8
    , neg_right_80
    , neg_right_9
    , neg_right_96
    , neg_right_full
    , neg_right_px
    , neg_rotate_1
    , neg_rotate_12
    , neg_rotate_180
    , neg_rotate_2
    , neg_rotate_3
    , neg_rotate_45
    , neg_rotate_6
    , neg_rotate_90
    , neg_skew_x_1
    , neg_skew_x_12
    , neg_skew_x_2
    , neg_skew_x_3
    , neg_skew_x_6
    , neg_skew_y_1
    , neg_skew_y_12
    , neg_skew_y_2
    , neg_skew_y_3
    , neg_skew_y_6
    , neg_space_x_0
    , neg_space_x_0_dot_5
    , neg_space_x_1
    , neg_space_x_10
    , neg_space_x_11
    , neg_space_x_12
    , neg_space_x_14
    , neg_space_x_16
    , neg_space_x_1_dot_5
    , neg_space_x_2
    , neg_space_x_20
    , neg_space_x_24
    , neg_space_x_28
    , neg_space_x_2_dot_5
    , neg_space_x_3
    , neg_space_x_32
    , neg_space_x_36
    , neg_space_x_3_dot_5
    , neg_space_x_4
    , neg_space_x_40
    , neg_space_x_44
    , neg_space_x_48
    , neg_space_x_5
    , neg_space_x_52
    , neg_space_x_56
    , neg_space_x_6
    , neg_space_x_60
    , neg_space_x_64
    , neg_space_x_7
    , neg_space_x_72
    , neg_space_x_8
    , neg_space_x_80
    , neg_space_x_9
    , neg_space_x_96
    , neg_space_x_px
    , neg_space_y_0
    , neg_space_y_0_dot_5
    , neg_space_y_1
    , neg_space_y_10
    , neg_space_y_11
    , neg_space_y_12
    , neg_space_y_14
    , neg_space_y_16
    , neg_space_y_1_dot_5
    , neg_space_y_2
    , neg_space_y_20
    , neg_space_y_24
    , neg_space_y_28
    , neg_space_y_2_dot_5
    , neg_space_y_3
    , neg_space_y_32
    , neg_space_y_36
    , neg_space_y_3_dot_5
    , neg_space_y_4
    , neg_space_y_40
    , neg_space_y_44
    , neg_space_y_48
    , neg_space_y_5
    , neg_space_y_52
    , neg_space_y_56
    , neg_space_y_6
    , neg_space_y_60
    , neg_space_y_64
    , neg_space_y_7
    , neg_space_y_72
    , neg_space_y_8
    , neg_space_y_80
    , neg_space_y_9
    , neg_space_y_96
    , neg_space_y_px
    , neg_top_0
    , neg_top_0_dot_5
    , neg_top_1
    , neg_top_10
    , neg_top_11
    , neg_top_12
    , neg_top_14
    , neg_top_16
    , neg_top_1_dot_5
    , neg_top_1over2
    , neg_top_1over3
    , neg_top_1over4
    , neg_top_2
    , neg_top_20
    , neg_top_24
    , neg_top_28
    , neg_top_2_dot_5
    , neg_top_2over3
    , neg_top_2over4
    , neg_top_3
    , neg_top_32
    , neg_top_36
    , neg_top_3_dot_5
    , neg_top_3over4
    , neg_top_4
    , neg_top_40
    , neg_top_44
    , neg_top_48
    , neg_top_5
    , neg_top_52
    , neg_top_56
    , neg_top_6
    , neg_top_60
    , neg_top_64
    , neg_top_7
    , neg_top_72
    , neg_top_8
    , neg_top_80
    , neg_top_9
    , neg_top_96
    , neg_top_full
    , neg_top_px
    , neg_translate_x_0
    , neg_translate_x_0_dot_5
    , neg_translate_x_1
    , neg_translate_x_10
    , neg_translate_x_11
    , neg_translate_x_12
    , neg_translate_x_14
    , neg_translate_x_16
    , neg_translate_x_1_dot_5
    , neg_translate_x_1over2
    , neg_translate_x_1over3
    , neg_translate_x_1over4
    , neg_translate_x_2
    , neg_translate_x_20
    , neg_translate_x_24
    , neg_translate_x_28
    , neg_translate_x_2_dot_5
    , neg_translate_x_2over3
    , neg_translate_x_2over4
    , neg_translate_x_3
    , neg_translate_x_32
    , neg_translate_x_36
    , neg_translate_x_3_dot_5
    , neg_translate_x_3over4
    , neg_translate_x_4
    , neg_translate_x_40
    , neg_translate_x_44
    , neg_translate_x_48
    , neg_translate_x_5
    , neg_translate_x_52
    , neg_translate_x_56
    , neg_translate_x_6
    , neg_translate_x_60
    , neg_translate_x_64
    , neg_translate_x_7
    , neg_translate_x_72
    , neg_translate_x_8
    , neg_translate_x_80
    , neg_translate_x_9
    , neg_translate_x_96
    , neg_translate_x_full
    , neg_translate_x_px
    , neg_translate_y_0
    , neg_translate_y_0_dot_5
    , neg_translate_y_1
    , neg_translate_y_10
    , neg_translate_y_11
    , neg_translate_y_12
    , neg_translate_y_14
    , neg_translate_y_16
    , neg_translate_y_1_dot_5
    , neg_translate_y_1over2
    , neg_translate_y_1over3
    , neg_translate_y_1over4
    , neg_translate_y_2
    , neg_translate_y_20
    , neg_translate_y_24
    , neg_translate_y_28
    , neg_translate_y_2_dot_5
    , neg_translate_y_2over3
    , neg_translate_y_2over4
    , neg_translate_y_3
    , neg_translate_y_32
    , neg_translate_y_36
    , neg_translate_y_3_dot_5
    , neg_translate_y_3over4
    , neg_translate_y_4
    , neg_translate_y_40
    , neg_translate_y_44
    , neg_translate_y_48
    , neg_translate_y_5
    , neg_translate_y_52
    , neg_translate_y_56
    , neg_translate_y_6
    , neg_translate_y_60
    , neg_translate_y_64
    , neg_translate_y_7
    , neg_translate_y_72
    , neg_translate_y_8
    , neg_translate_y_80
    , neg_translate_y_9
    , neg_translate_y_96
    , neg_translate_y_full
    , neg_translate_y_px
    , no_underline
    , normal_case
    , normal_nums
    , not_italic
    , not_sr_only
    , object_bottom
    , object_center
    , object_contain
    , object_cover
    , object_fill
    , object_left
    , object_left_bottom
    , object_left_top
    , object_none
    , object_right
    , object_right_bottom
    , object_right_top
    , object_scale_down
    , object_top
    , oldstyle_nums
    , opacity_0
    , opacity_10
    , opacity_100
    , opacity_20
    , opacity_25
    , opacity_30
    , opacity_40
    , opacity_5
    , opacity_50
    , opacity_60
    , opacity_70
    , opacity_75
    , opacity_80
    , opacity_90
    , opacity_95
    , order_1
    , order_10
    , order_11
    , order_12
    , order_2
    , order_3
    , order_4
    , order_5
    , order_6
    , order_7
    , order_8
    , order_9
    , order_first
    , order_last
    , order_none
    , ordinal
    , origin_bottom
    , origin_bottom_left
    , origin_bottom_right
    , origin_center
    , origin_left
    , origin_right
    , origin_top
    , origin_top_left
    , origin_top_right
    , outline_black
    , outline_none
    , outline_white
    , overflow_auto
    , overflow_clip
    , overflow_ellipsis
    , overflow_hidden
    , overflow_scroll
    , overflow_visible
    , overflow_x_auto
    , overflow_x_hidden
    , overflow_x_scroll
    , overflow_x_visible
    , overflow_y_auto
    , overflow_y_hidden
    , overflow_y_scroll
    , overflow_y_visible
    , overscroll_auto
    , overscroll_contain
    , overscroll_none
    , overscroll_x_auto
    , overscroll_x_contain
    , overscroll_x_none
    , overscroll_y_auto
    , overscroll_y_contain
    , overscroll_y_none
    , p_0
    , p_0_dot_5
    , p_1
    , p_10
    , p_11
    , p_12
    , p_14
    , p_16
    , p_1_dot_5
    , p_2
    , p_20
    , p_24
    , p_28
    , p_2_dot_5
    , p_3
    , p_32
    , p_36
    , p_3_dot_5
    , p_4
    , p_40
    , p_44
    , p_48
    , p_5
    , p_52
    , p_56
    , p_6
    , p_60
    , p_64
    , p_7
    , p_72
    , p_8
    , p_80
    , p_9
    , p_96
    , p_px
    , pb_0
    , pb_0_dot_5
    , pb_1
    , pb_10
    , pb_11
    , pb_12
    , pb_14
    , pb_16
    , pb_1_dot_5
    , pb_2
    , pb_20
    , pb_24
    , pb_28
    , pb_2_dot_5
    , pb_3
    , pb_32
    , pb_36
    , pb_3_dot_5
    , pb_4
    , pb_40
    , pb_44
    , pb_48
    , pb_5
    , pb_52
    , pb_56
    , pb_6
    , pb_60
    , pb_64
    , pb_7
    , pb_72
    , pb_8
    , pb_80
    , pb_9
    , pb_96
    , pb_px
    , pl_0
    , pl_0_dot_5
    , pl_1
    , pl_10
    , pl_11
    , pl_12
    , pl_14
    , pl_16
    , pl_1_dot_5
    , pl_2
    , pl_20
    , pl_24
    , pl_28
    , pl_2_dot_5
    , pl_3
    , pl_32
    , pl_36
    , pl_3_dot_5
    , pl_4
    , pl_40
    , pl_44
    , pl_48
    , pl_5
    , pl_52
    , pl_56
    , pl_6
    , pl_60
    , pl_64
    , pl_7
    , pl_72
    , pl_8
    , pl_80
    , pl_9
    , pl_96
    , pl_px
    , place_content_around
    , place_content_between
    , place_content_center
    , place_content_end
    , place_content_evenly
    , place_content_start
    , place_content_stretch
    , place_items_center
    , place_items_end
    , place_items_start
    , place_items_stretch
    , place_self_auto
    , place_self_center
    , place_self_end
    , place_self_start
    , place_self_stretch
    , placeholder_destruct
    , placeholder_exclaim
    , placeholder_opacity_0
    , placeholder_opacity_10
    , placeholder_opacity_100
    , placeholder_opacity_20
    , placeholder_opacity_25
    , placeholder_opacity_30
    , placeholder_opacity_40
    , placeholder_opacity_5
    , placeholder_opacity_50
    , placeholder_opacity_60
    , placeholder_opacity_70
    , placeholder_opacity_75
    , placeholder_opacity_80
    , placeholder_opacity_90
    , placeholder_opacity_95
    , placeholder_primary
    , placeholder_secondary
    , placeholder_success
    , placeholder_tertiary
    , pointer_events_auto
    , pointer_events_none
    , pr_0
    , pr_0_dot_5
    , pr_1
    , pr_10
    , pr_11
    , pr_12
    , pr_14
    , pr_16
    , pr_1_dot_5
    , pr_2
    , pr_20
    , pr_24
    , pr_28
    , pr_2_dot_5
    , pr_3
    , pr_32
    , pr_36
    , pr_3_dot_5
    , pr_4
    , pr_40
    , pr_44
    , pr_48
    , pr_5
    , pr_52
    , pr_56
    , pr_6
    , pr_60
    , pr_64
    , pr_7
    , pr_72
    , pr_8
    , pr_80
    , pr_9
    , pr_96
    , pr_px
    , proportional_nums
    , prose
    , prose_2xl
    , prose_lg
    , prose_sm
    , prose_xl
    , pt_0
    , pt_0_dot_5
    , pt_1
    , pt_10
    , pt_11
    , pt_12
    , pt_14
    , pt_16
    , pt_1_dot_5
    , pt_2
    , pt_20
    , pt_24
    , pt_28
    , pt_2_dot_5
    , pt_3
    , pt_32
    , pt_36
    , pt_3_dot_5
    , pt_4
    , pt_40
    , pt_44
    , pt_48
    , pt_5
    , pt_52
    , pt_56
    , pt_6
    , pt_60
    , pt_64
    , pt_7
    , pt_72
    , pt_8
    , pt_80
    , pt_9
    , pt_96
    , pt_px
    , px_0
    , px_0_dot_5
    , px_1
    , px_10
    , px_11
    , px_12
    , px_14
    , px_16
    , px_1_dot_5
    , px_2
    , px_20
    , px_24
    , px_28
    , px_2_dot_5
    , px_3
    , px_32
    , px_36
    , px_3_dot_5
    , px_4
    , px_40
    , px_44
    , px_48
    , px_5
    , px_52
    , px_56
    , px_6
    , px_60
    , px_64
    , px_7
    , px_72
    , px_8
    , px_80
    , px_9
    , px_96
    , px_px
    , py_0
    , py_0_dot_5
    , py_1
    , py_10
    , py_11
    , py_12
    , py_14
    , py_16
    , py_1_dot_5
    , py_2
    , py_20
    , py_24
    , py_28
    , py_2_dot_5
    , py_3
    , py_32
    , py_36
    , py_3_dot_5
    , py_4
    , py_40
    , py_44
    , py_48
    , py_5
    , py_52
    , py_56
    , py_6
    , py_60
    , py_64
    , py_7
    , py_72
    , py_8
    , py_80
    , py_9
    , py_96
    , py_px
    , relative
    , resize
    , resize_none
    , resize_x
    , resize_y
    , right_0
    , right_0_dot_5
    , right_1
    , right_10
    , right_11
    , right_12
    , right_14
    , right_16
    , right_1_dot_5
    , right_1over2
    , right_1over3
    , right_1over4
    , right_2
    , right_20
    , right_24
    , right_28
    , right_2_dot_5
    , right_2over3
    , right_2over4
    , right_3
    , right_32
    , right_36
    , right_3_dot_5
    , right_3over4
    , right_4
    , right_40
    , right_44
    , right_48
    , right_5
    , right_52
    , right_56
    , right_6
    , right_60
    , right_64
    , right_7
    , right_72
    , right_8
    , right_80
    , right_9
    , right_96
    , right_auto
    , right_full
    , right_px
    , ring
    , ring_0
    , ring_1
    , ring_2
    , ring_4
    , ring_8
    , ring_destruct
    , ring_exclaim
    , ring_inset
    , ring_offset_0
    , ring_offset_1
    , ring_offset_2
    , ring_offset_4
    , ring_offset_8
    , ring_offset_destruct
    , ring_offset_exclaim
    , ring_offset_primary
    , ring_offset_secondary
    , ring_offset_success
    , ring_offset_tertiary
    , ring_opacity_0
    , ring_opacity_10
    , ring_opacity_100
    , ring_opacity_20
    , ring_opacity_25
    , ring_opacity_30
    , ring_opacity_40
    , ring_opacity_5
    , ring_opacity_50
    , ring_opacity_60
    , ring_opacity_70
    , ring_opacity_75
    , ring_opacity_80
    , ring_opacity_90
    , ring_opacity_95
    , ring_primary
    , ring_secondary
    , ring_success
    , ring_tertiary
    , rotate_0
    , rotate_1
    , rotate_12
    , rotate_180
    , rotate_2
    , rotate_3
    , rotate_45
    , rotate_6
    , rotate_90
    , rounded
    , rounded_2xl
    , rounded_3xl
    , rounded_b
    , rounded_b_2xl
    , rounded_b_3xl
    , rounded_b_full
    , rounded_b_lg
    , rounded_b_md
    , rounded_b_none
    , rounded_b_sm
    , rounded_b_xl
    , rounded_bl
    , rounded_bl_2xl
    , rounded_bl_3xl
    , rounded_bl_full
    , rounded_bl_lg
    , rounded_bl_md
    , rounded_bl_none
    , rounded_bl_sm
    , rounded_bl_xl
    , rounded_br
    , rounded_br_2xl
    , rounded_br_3xl
    , rounded_br_full
    , rounded_br_lg
    , rounded_br_md
    , rounded_br_none
    , rounded_br_sm
    , rounded_br_xl
    , rounded_full
    , rounded_l
    , rounded_l_2xl
    , rounded_l_3xl
    , rounded_l_full
    , rounded_l_lg
    , rounded_l_md
    , rounded_l_none
    , rounded_l_sm
    , rounded_l_xl
    , rounded_lg
    , rounded_md
    , rounded_none
    , rounded_r
    , rounded_r_2xl
    , rounded_r_3xl
    , rounded_r_full
    , rounded_r_lg
    , rounded_r_md
    , rounded_r_none
    , rounded_r_sm
    , rounded_r_xl
    , rounded_sm
    , rounded_t
    , rounded_t_2xl
    , rounded_t_3xl
    , rounded_t_full
    , rounded_t_lg
    , rounded_t_md
    , rounded_t_none
    , rounded_t_sm
    , rounded_t_xl
    , rounded_tl
    , rounded_tl_2xl
    , rounded_tl_3xl
    , rounded_tl_full
    , rounded_tl_lg
    , rounded_tl_md
    , rounded_tl_none
    , rounded_tl_sm
    , rounded_tl_xl
    , rounded_tr
    , rounded_tr_2xl
    , rounded_tr_3xl
    , rounded_tr_full
    , rounded_tr_lg
    , rounded_tr_md
    , rounded_tr_none
    , rounded_tr_sm
    , rounded_tr_xl
    , rounded_xl
    , row_auto
    , row_end_1
    , row_end_2
    , row_end_3
    , row_end_4
    , row_end_5
    , row_end_6
    , row_end_7
    , row_end_auto
    , row_span_1
    , row_span_2
    , row_span_3
    , row_span_4
    , row_span_5
    , row_span_6
    , row_span_full
    , row_start_1
    , row_start_2
    , row_start_3
    , row_start_4
    , row_start_5
    , row_start_6
    , row_start_7
    , row_start_auto
    , saturate_0
    , saturate_100
    , saturate_150
    , saturate_200
    , saturate_50
    , scale_0
    , scale_100
    , scale_105
    , scale_110
    , scale_125
    , scale_150
    , scale_50
    , scale_75
    , scale_90
    , scale_95
    , scale_x_0
    , scale_x_100
    , scale_x_105
    , scale_x_110
    , scale_x_125
    , scale_x_150
    , scale_x_50
    , scale_x_75
    , scale_x_90
    , scale_x_95
    , scale_y_0
    , scale_y_100
    , scale_y_105
    , scale_y_110
    , scale_y_125
    , scale_y_150
    , scale_y_50
    , scale_y_75
    , scale_y_90
    , scale_y_95
    , select_all
    , select_auto
    , select_none
    , select_text
    , self_auto
    , self_baseline
    , self_center
    , self_end
    , self_start
    , self_stretch
    , sepia
    , sepia_0
    , shadow
    , shadow_2xl
    , shadow_inner
    , shadow_lg
    , shadow_md
    , shadow_none
    , shadow_sm
    , shadow_xl
    , skew_x_0
    , skew_x_1
    , skew_x_12
    , skew_x_2
    , skew_x_3
    , skew_x_6
    , skew_y_0
    , skew_y_1
    , skew_y_12
    , skew_y_2
    , skew_y_3
    , skew_y_6
    , slashed_zero
    , space_x_0
    , space_x_0_dot_5
    , space_x_1
    , space_x_10
    , space_x_11
    , space_x_12
    , space_x_14
    , space_x_16
    , space_x_1_dot_5
    , space_x_2
    , space_x_20
    , space_x_24
    , space_x_28
    , space_x_2_dot_5
    , space_x_3
    , space_x_32
    , space_x_36
    , space_x_3_dot_5
    , space_x_4
    , space_x_40
    , space_x_44
    , space_x_48
    , space_x_5
    , space_x_52
    , space_x_56
    , space_x_6
    , space_x_60
    , space_x_64
    , space_x_7
    , space_x_72
    , space_x_8
    , space_x_80
    , space_x_9
    , space_x_96
    , space_x_px
    , space_x_reverse
    , space_y_0
    , space_y_0_dot_5
    , space_y_1
    , space_y_10
    , space_y_11
    , space_y_12
    , space_y_14
    , space_y_16
    , space_y_1_dot_5
    , space_y_2
    , space_y_20
    , space_y_24
    , space_y_28
    , space_y_2_dot_5
    , space_y_3
    , space_y_32
    , space_y_36
    , space_y_3_dot_5
    , space_y_4
    , space_y_40
    , space_y_44
    , space_y_48
    , space_y_5
    , space_y_52
    , space_y_56
    , space_y_6
    , space_y_60
    , space_y_64
    , space_y_7
    , space_y_72
    , space_y_8
    , space_y_80
    , space_y_9
    , space_y_96
    , space_y_px
    , space_y_reverse
    , sr_only
    , stacked_fractions
    , static
    , sticky
    , stroke_0
    , stroke_1
    , stroke_2
    , stroke_current
    , subpixel_antialiased
    , table
    , table_auto
    , table_caption
    , table_cell
    , table_column
    , table_column_group
    , table_fixed
    , table_footer_group
    , table_header_group
    , table_row
    , table_row_group
    , tabular_nums
    , text_2xl
    , text_3xl
    , text_4xl
    , text_5xl
    , text_6xl
    , text_7xl
    , text_8xl
    , text_9xl
    , text_base
    , text_center
    , text_destruct
    , text_exclaim
    , text_justify
    , text_left
    , text_lg
    , text_opacity_0
    , text_opacity_10
    , text_opacity_100
    , text_opacity_20
    , text_opacity_25
    , text_opacity_30
    , text_opacity_40
    , text_opacity_5
    , text_opacity_50
    , text_opacity_60
    , text_opacity_70
    , text_opacity_75
    , text_opacity_80
    , text_opacity_90
    , text_opacity_95
    , text_primary
    , text_right
    , text_secondary
    , text_sm
    , text_success
    , text_tertiary
    , text_xl
    , text_xs
    , to_destruct
    , to_exclaim
    , to_primary
    , to_secondary
    , to_success
    , to_tertiary
    , top_0
    , top_0_dot_5
    , top_1
    , top_10
    , top_11
    , top_12
    , top_14
    , top_16
    , top_1_dot_5
    , top_1over2
    , top_1over3
    , top_1over4
    , top_2
    , top_20
    , top_24
    , top_28
    , top_2_dot_5
    , top_2over3
    , top_2over4
    , top_3
    , top_32
    , top_36
    , top_3_dot_5
    , top_3over4
    , top_4
    , top_40
    , top_44
    , top_48
    , top_5
    , top_52
    , top_56
    , top_6
    , top_60
    , top_64
    , top_7
    , top_72
    , top_8
    , top_80
    , top_9
    , top_96
    , top_auto
    , top_full
    , top_px
    , tracking_normal
    , tracking_tight
    , tracking_tighter
    , tracking_wide
    , tracking_wider
    , tracking_widest
    , transform
    , transform_gpu
    , transform_none
    , transition
    , transition_all
    , transition_colors
    , transition_none
    , transition_opacity
    , transition_shadow
    , transition_transform
    , translate_x_0
    , translate_x_0_dot_5
    , translate_x_1
    , translate_x_10
    , translate_x_11
    , translate_x_12
    , translate_x_14
    , translate_x_16
    , translate_x_1_dot_5
    , translate_x_1over2
    , translate_x_1over3
    , translate_x_1over4
    , translate_x_2
    , translate_x_20
    , translate_x_24
    , translate_x_28
    , translate_x_2_dot_5
    , translate_x_2over3
    , translate_x_2over4
    , translate_x_3
    , translate_x_32
    , translate_x_36
    , translate_x_3_dot_5
    , translate_x_3over4
    , translate_x_4
    , translate_x_40
    , translate_x_44
    , translate_x_48
    , translate_x_5
    , translate_x_52
    , translate_x_56
    , translate_x_6
    , translate_x_60
    , translate_x_64
    , translate_x_7
    , translate_x_72
    , translate_x_8
    , translate_x_80
    , translate_x_9
    , translate_x_96
    , translate_x_full
    , translate_x_px
    , translate_y_0
    , translate_y_0_dot_5
    , translate_y_1
    , translate_y_10
    , translate_y_11
    , translate_y_12
    , translate_y_14
    , translate_y_16
    , translate_y_1_dot_5
    , translate_y_1over2
    , translate_y_1over3
    , translate_y_1over4
    , translate_y_2
    , translate_y_20
    , translate_y_24
    , translate_y_28
    , translate_y_2_dot_5
    , translate_y_2over3
    , translate_y_2over4
    , translate_y_3
    , translate_y_32
    , translate_y_36
    , translate_y_3_dot_5
    , translate_y_3over4
    , translate_y_4
    , translate_y_40
    , translate_y_44
    , translate_y_48
    , translate_y_5
    , translate_y_52
    , translate_y_56
    , translate_y_6
    , translate_y_60
    , translate_y_64
    , translate_y_7
    , translate_y_72
    , translate_y_8
    , translate_y_80
    , translate_y_9
    , translate_y_96
    , translate_y_full
    , translate_y_px
    , truncate
    , underline
    , uppercase
    , via_destruct
    , via_exclaim
    , via_primary
    , via_secondary
    , via_success
    , via_tertiary
    , visible
    , w_0
    , w_0_dot_5
    , w_1
    , w_10
    , w_10over12
    , w_11
    , w_11over12
    , w_12
    , w_14
    , w_16
    , w_1_dot_5
    , w_1over12
    , w_1over2
    , w_1over3
    , w_1over4
    , w_1over5
    , w_1over6
    , w_2
    , w_20
    , w_24
    , w_28
    , w_2_dot_5
    , w_2over12
    , w_2over3
    , w_2over4
    , w_2over5
    , w_2over6
    , w_3
    , w_32
    , w_36
    , w_3_dot_5
    , w_3over12
    , w_3over4
    , w_3over5
    , w_3over6
    , w_4
    , w_40
    , w_44
    , w_48
    , w_4over12
    , w_4over5
    , w_4over6
    , w_5
    , w_52
    , w_56
    , w_5over12
    , w_5over6
    , w_6
    , w_60
    , w_64
    , w_6over12
    , w_7
    , w_72
    , w_7over12
    , w_8
    , w_80
    , w_8over12
    , w_9
    , w_96
    , w_9over12
    , w_auto
    , w_full
    , w_max
    , w_min
    , w_px
    , w_screen
    , whitespace_normal
    , whitespace_nowrap
    , whitespace_pre
    , whitespace_pre_line
    , whitespace_pre_wrap
    , z_0
    , z_10
    , z_20
    , z_30
    , z_40
    , z_50
    , z_auto
    )

{-|
## Tailwind Utilities
This module contains
1.  Tailwind's style reset in the `globalStyles` definition.
    Make sure to include this in your HTML via elm-css' `Css.Global.global` function.
2.  All default tailwind css utility classes from **tailwind version 2.2.19.**
    You can browse the documentation on
    [tailwind's website](https://tailwindcss.com/docs)
@docs globalStyles
@docs absolute
@docs align_baseline
@docs align_bottom
@docs align_middle
@docs align_text_bottom
@docs align_text_top
@docs align_top
@docs animate_bounce
@docs animate_none
@docs animate_ping
@docs animate_pulse
@docs animate_spin
@docs antialiased
@docs appearance_none
@docs aspect_h_1
@docs aspect_h_10
@docs aspect_h_11
@docs aspect_h_12
@docs aspect_h_13
@docs aspect_h_14
@docs aspect_h_15
@docs aspect_h_16
@docs aspect_h_2
@docs aspect_h_3
@docs aspect_h_4
@docs aspect_h_5
@docs aspect_h_6
@docs aspect_h_7
@docs aspect_h_8
@docs aspect_h_9
@docs aspect_none
@docs aspect_w_1
@docs aspect_w_10
@docs aspect_w_11
@docs aspect_w_12
@docs aspect_w_13
@docs aspect_w_14
@docs aspect_w_15
@docs aspect_w_16
@docs aspect_w_2
@docs aspect_w_3
@docs aspect_w_4
@docs aspect_w_5
@docs aspect_w_6
@docs aspect_w_7
@docs aspect_w_8
@docs aspect_w_9
@docs auto_cols_auto
@docs auto_cols_fr
@docs auto_cols_max
@docs auto_cols_min
@docs auto_rows_auto
@docs auto_rows_fr
@docs auto_rows_max
@docs auto_rows_min
@docs backdrop_blur
@docs backdrop_blur_0
@docs backdrop_blur_2xl
@docs backdrop_blur_3xl
@docs backdrop_blur_lg
@docs backdrop_blur_md
@docs backdrop_blur_none
@docs backdrop_blur_sm
@docs backdrop_blur_xl
@docs backdrop_brightness_0
@docs backdrop_brightness_100
@docs backdrop_brightness_105
@docs backdrop_brightness_110
@docs backdrop_brightness_125
@docs backdrop_brightness_150
@docs backdrop_brightness_200
@docs backdrop_brightness_50
@docs backdrop_brightness_75
@docs backdrop_brightness_90
@docs backdrop_brightness_95
@docs backdrop_contrast_0
@docs backdrop_contrast_100
@docs backdrop_contrast_125
@docs backdrop_contrast_150
@docs backdrop_contrast_200
@docs backdrop_contrast_50
@docs backdrop_contrast_75
@docs backdrop_filter
@docs backdrop_filter_none
@docs backdrop_grayscale
@docs backdrop_grayscale_0
@docs backdrop_hue_rotate_0
@docs backdrop_hue_rotate_15
@docs backdrop_hue_rotate_180
@docs backdrop_hue_rotate_30
@docs backdrop_hue_rotate_60
@docs backdrop_hue_rotate_90
@docs backdrop_invert
@docs backdrop_invert_0
@docs backdrop_opacity_0
@docs backdrop_opacity_10
@docs backdrop_opacity_100
@docs backdrop_opacity_20
@docs backdrop_opacity_25
@docs backdrop_opacity_30
@docs backdrop_opacity_40
@docs backdrop_opacity_5
@docs backdrop_opacity_50
@docs backdrop_opacity_60
@docs backdrop_opacity_70
@docs backdrop_opacity_75
@docs backdrop_opacity_80
@docs backdrop_opacity_90
@docs backdrop_opacity_95
@docs backdrop_saturate_0
@docs backdrop_saturate_100
@docs backdrop_saturate_150
@docs backdrop_saturate_200
@docs backdrop_saturate_50
@docs backdrop_sepia
@docs backdrop_sepia_0
@docs bg_auto
@docs bg_blend_color
@docs bg_blend_color_burn
@docs bg_blend_color_dodge
@docs bg_blend_darken
@docs bg_blend_difference
@docs bg_blend_exclusion
@docs bg_blend_hard_light
@docs bg_blend_hue
@docs bg_blend_lighten
@docs bg_blend_luminosity
@docs bg_blend_multiply
@docs bg_blend_normal
@docs bg_blend_overlay
@docs bg_blend_saturation
@docs bg_blend_screen
@docs bg_blend_soft_light
@docs bg_bottom
@docs bg_center
@docs bg_clip_border
@docs bg_clip_content
@docs bg_clip_padding
@docs bg_clip_text
@docs bg_contain
@docs bg_cover
@docs bg_destruct
@docs bg_exclaim
@docs bg_fixed
@docs bg_gradient_to_b
@docs bg_gradient_to_bl
@docs bg_gradient_to_br
@docs bg_gradient_to_l
@docs bg_gradient_to_r
@docs bg_gradient_to_t
@docs bg_gradient_to_tl
@docs bg_gradient_to_tr
@docs bg_left
@docs bg_left_bottom
@docs bg_left_top
@docs bg_local
@docs bg_no_repeat
@docs bg_none
@docs bg_opacity_0
@docs bg_opacity_10
@docs bg_opacity_100
@docs bg_opacity_20
@docs bg_opacity_25
@docs bg_opacity_30
@docs bg_opacity_40
@docs bg_opacity_5
@docs bg_opacity_50
@docs bg_opacity_60
@docs bg_opacity_70
@docs bg_opacity_75
@docs bg_opacity_80
@docs bg_opacity_90
@docs bg_opacity_95
@docs bg_origin_border
@docs bg_origin_content
@docs bg_origin_padding
@docs bg_primary
@docs bg_repeat
@docs bg_repeat_round
@docs bg_repeat_space
@docs bg_repeat_x
@docs bg_repeat_y
@docs bg_right
@docs bg_right_bottom
@docs bg_right_top
@docs bg_scroll
@docs bg_secondary
@docs bg_success
@docs bg_tertiary
@docs bg_top
@docs block
@docs blur
@docs blur_0
@docs blur_2xl
@docs blur_3xl
@docs blur_lg
@docs blur_md
@docs blur_none
@docs blur_sm
@docs blur_xl
@docs border
@docs border_0
@docs border_2
@docs border_4
@docs border_8
@docs border_b
@docs border_b_0
@docs border_b_2
@docs border_b_4
@docs border_b_8
@docs border_collapse
@docs border_dashed
@docs border_destruct
@docs border_dotted
@docs border_double
@docs border_exclaim
@docs border_l
@docs border_l_0
@docs border_l_2
@docs border_l_4
@docs border_l_8
@docs border_none
@docs border_opacity_0
@docs border_opacity_10
@docs border_opacity_100
@docs border_opacity_20
@docs border_opacity_25
@docs border_opacity_30
@docs border_opacity_40
@docs border_opacity_5
@docs border_opacity_50
@docs border_opacity_60
@docs border_opacity_70
@docs border_opacity_75
@docs border_opacity_80
@docs border_opacity_90
@docs border_opacity_95
@docs border_primary
@docs border_r
@docs border_r_0
@docs border_r_2
@docs border_r_4
@docs border_r_8
@docs border_secondary
@docs border_separate
@docs border_solid
@docs border_success
@docs border_t
@docs border_t_0
@docs border_t_2
@docs border_t_4
@docs border_t_8
@docs border_tertiary
@docs bottom_0
@docs bottom_0_dot_5
@docs bottom_1
@docs bottom_10
@docs bottom_11
@docs bottom_12
@docs bottom_14
@docs bottom_16
@docs bottom_1_dot_5
@docs bottom_1over2
@docs bottom_1over3
@docs bottom_1over4
@docs bottom_2
@docs bottom_20
@docs bottom_24
@docs bottom_28
@docs bottom_2_dot_5
@docs bottom_2over3
@docs bottom_2over4
@docs bottom_3
@docs bottom_32
@docs bottom_36
@docs bottom_3_dot_5
@docs bottom_3over4
@docs bottom_4
@docs bottom_40
@docs bottom_44
@docs bottom_48
@docs bottom_5
@docs bottom_52
@docs bottom_56
@docs bottom_6
@docs bottom_60
@docs bottom_64
@docs bottom_7
@docs bottom_72
@docs bottom_8
@docs bottom_80
@docs bottom_9
@docs bottom_96
@docs bottom_auto
@docs bottom_full
@docs bottom_px
@docs box_border
@docs box_content
@docs break_all
@docs break_normal
@docs break_words
@docs brightness_0
@docs brightness_100
@docs brightness_105
@docs brightness_110
@docs brightness_125
@docs brightness_150
@docs brightness_200
@docs brightness_50
@docs brightness_75
@docs brightness_90
@docs brightness_95
@docs capitalize
@docs clear_both
@docs clear_left
@docs clear_none
@docs clear_right
@docs col_auto
@docs col_end_1
@docs col_end_10
@docs col_end_11
@docs col_end_12
@docs col_end_13
@docs col_end_2
@docs col_end_3
@docs col_end_4
@docs col_end_5
@docs col_end_6
@docs col_end_7
@docs col_end_8
@docs col_end_9
@docs col_end_auto
@docs col_span_1
@docs col_span_10
@docs col_span_11
@docs col_span_12
@docs col_span_2
@docs col_span_3
@docs col_span_4
@docs col_span_5
@docs col_span_6
@docs col_span_7
@docs col_span_8
@docs col_span_9
@docs col_span_full
@docs col_start_1
@docs col_start_10
@docs col_start_11
@docs col_start_12
@docs col_start_13
@docs col_start_2
@docs col_start_3
@docs col_start_4
@docs col_start_5
@docs col_start_6
@docs col_start_7
@docs col_start_8
@docs col_start_9
@docs col_start_auto
@docs container
@docs content_around
@docs content_between
@docs content_center
@docs content_end
@docs content_evenly
@docs content_start
@docs contents
@docs contrast_0
@docs contrast_100
@docs contrast_125
@docs contrast_150
@docs contrast_200
@docs contrast_50
@docs contrast_75
@docs cursor_auto
@docs cursor_default
@docs cursor_help
@docs cursor_move
@docs cursor_not_allowed
@docs cursor_pointer
@docs cursor_text
@docs cursor_wait
@docs decoration_clone
@docs decoration_slice
@docs delay_100
@docs delay_1000
@docs delay_150
@docs delay_200
@docs delay_300
@docs delay_500
@docs delay_700
@docs delay_75
@docs diagonal_fractions
@docs divide_dashed
@docs divide_destruct
@docs divide_dotted
@docs divide_double
@docs divide_exclaim
@docs divide_none
@docs divide_opacity_0
@docs divide_opacity_10
@docs divide_opacity_100
@docs divide_opacity_20
@docs divide_opacity_25
@docs divide_opacity_30
@docs divide_opacity_40
@docs divide_opacity_5
@docs divide_opacity_50
@docs divide_opacity_60
@docs divide_opacity_70
@docs divide_opacity_75
@docs divide_opacity_80
@docs divide_opacity_90
@docs divide_opacity_95
@docs divide_primary
@docs divide_secondary
@docs divide_solid
@docs divide_success
@docs divide_tertiary
@docs divide_x
@docs divide_x_0
@docs divide_x_2
@docs divide_x_4
@docs divide_x_8
@docs divide_x_reverse
@docs divide_y
@docs divide_y_0
@docs divide_y_2
@docs divide_y_4
@docs divide_y_8
@docs divide_y_reverse
@docs drop_shadow
@docs drop_shadow_2xl
@docs drop_shadow_lg
@docs drop_shadow_md
@docs drop_shadow_none
@docs drop_shadow_sm
@docs drop_shadow_xl
@docs duration_100
@docs duration_1000
@docs duration_150
@docs duration_200
@docs duration_300
@docs duration_500
@docs duration_700
@docs duration_75
@docs ease_in
@docs ease_in_out
@docs ease_linear
@docs ease_out
@docs fill_current
@docs filter
@docs filter_none
@docs fixed
@docs flex
@docs flex_1
@docs flex_auto
@docs flex_col
@docs flex_col_reverse
@docs flex_grow
@docs flex_grow_0
@docs flex_initial
@docs flex_none
@docs flex_nowrap
@docs flex_row
@docs flex_row_reverse
@docs flex_shrink
@docs flex_shrink_0
@docs flex_wrap
@docs flex_wrap_reverse
@docs float_left
@docs float_none
@docs float_right
@docs flow_root
@docs font_black
@docs font_bold
@docs font_extrabold
@docs font_extralight
@docs font_light
@docs font_medium
@docs font_normal
@docs font_sans
@docs font_semibold
@docs font_thin
@docs form_checkbox
@docs form_input
@docs form_multiselect
@docs form_radio
@docs form_select
@docs form_textarea
@docs from_destruct
@docs from_exclaim
@docs from_primary
@docs from_secondary
@docs from_success
@docs from_tertiary
@docs gap_0
@docs gap_0_dot_5
@docs gap_1
@docs gap_10
@docs gap_11
@docs gap_12
@docs gap_14
@docs gap_16
@docs gap_1_dot_5
@docs gap_2
@docs gap_20
@docs gap_24
@docs gap_28
@docs gap_2_dot_5
@docs gap_3
@docs gap_32
@docs gap_36
@docs gap_3_dot_5
@docs gap_4
@docs gap_40
@docs gap_44
@docs gap_48
@docs gap_5
@docs gap_52
@docs gap_56
@docs gap_6
@docs gap_60
@docs gap_64
@docs gap_7
@docs gap_72
@docs gap_8
@docs gap_80
@docs gap_9
@docs gap_96
@docs gap_px
@docs gap_x_0
@docs gap_x_0_dot_5
@docs gap_x_1
@docs gap_x_10
@docs gap_x_11
@docs gap_x_12
@docs gap_x_14
@docs gap_x_16
@docs gap_x_1_dot_5
@docs gap_x_2
@docs gap_x_20
@docs gap_x_24
@docs gap_x_28
@docs gap_x_2_dot_5
@docs gap_x_3
@docs gap_x_32
@docs gap_x_36
@docs gap_x_3_dot_5
@docs gap_x_4
@docs gap_x_40
@docs gap_x_44
@docs gap_x_48
@docs gap_x_5
@docs gap_x_52
@docs gap_x_56
@docs gap_x_6
@docs gap_x_60
@docs gap_x_64
@docs gap_x_7
@docs gap_x_72
@docs gap_x_8
@docs gap_x_80
@docs gap_x_9
@docs gap_x_96
@docs gap_x_px
@docs gap_y_0
@docs gap_y_0_dot_5
@docs gap_y_1
@docs gap_y_10
@docs gap_y_11
@docs gap_y_12
@docs gap_y_14
@docs gap_y_16
@docs gap_y_1_dot_5
@docs gap_y_2
@docs gap_y_20
@docs gap_y_24
@docs gap_y_28
@docs gap_y_2_dot_5
@docs gap_y_3
@docs gap_y_32
@docs gap_y_36
@docs gap_y_3_dot_5
@docs gap_y_4
@docs gap_y_40
@docs gap_y_44
@docs gap_y_48
@docs gap_y_5
@docs gap_y_52
@docs gap_y_56
@docs gap_y_6
@docs gap_y_60
@docs gap_y_64
@docs gap_y_7
@docs gap_y_72
@docs gap_y_8
@docs gap_y_80
@docs gap_y_9
@docs gap_y_96
@docs gap_y_px
@docs grayscale
@docs grayscale_0
@docs grid
@docs grid_cols_1
@docs grid_cols_10
@docs grid_cols_11
@docs grid_cols_12
@docs grid_cols_2
@docs grid_cols_3
@docs grid_cols_4
@docs grid_cols_5
@docs grid_cols_6
@docs grid_cols_7
@docs grid_cols_8
@docs grid_cols_9
@docs grid_cols_header
@docs grid_cols_none
@docs grid_flow_col
@docs grid_flow_col_dense
@docs grid_flow_row
@docs grid_flow_row_dense
@docs grid_rows_1
@docs grid_rows_2
@docs grid_rows_3
@docs grid_rows_4
@docs grid_rows_5
@docs grid_rows_6
@docs grid_rows_none
@docs h_0
@docs h_0_dot_5
@docs h_1
@docs h_10
@docs h_11
@docs h_12
@docs h_14
@docs h_16
@docs h_1_dot_5
@docs h_1over2
@docs h_1over3
@docs h_1over4
@docs h_1over5
@docs h_1over6
@docs h_2
@docs h_20
@docs h_24
@docs h_28
@docs h_2_dot_5
@docs h_2over3
@docs h_2over4
@docs h_2over5
@docs h_2over6
@docs h_3
@docs h_32
@docs h_36
@docs h_3_dot_5
@docs h_3over4
@docs h_3over5
@docs h_3over6
@docs h_4
@docs h_40
@docs h_44
@docs h_48
@docs h_4over5
@docs h_4over6
@docs h_5
@docs h_52
@docs h_56
@docs h_5over6
@docs h_6
@docs h_60
@docs h_64
@docs h_7
@docs h_72
@docs h_8
@docs h_80
@docs h_9
@docs h_96
@docs h_auto
@docs h_full
@docs h_px
@docs h_screen
@docs hidden
@docs hue_rotate_0
@docs hue_rotate_15
@docs hue_rotate_180
@docs hue_rotate_30
@docs hue_rotate_60
@docs hue_rotate_90
@docs inline
@docs inline_block
@docs inline_flex
@docs inline_grid
@docs inline_table
@docs inset_0
@docs inset_0_dot_5
@docs inset_1
@docs inset_10
@docs inset_11
@docs inset_12
@docs inset_14
@docs inset_16
@docs inset_1_dot_5
@docs inset_1over2
@docs inset_1over3
@docs inset_1over4
@docs inset_2
@docs inset_20
@docs inset_24
@docs inset_28
@docs inset_2_dot_5
@docs inset_2over3
@docs inset_2over4
@docs inset_3
@docs inset_32
@docs inset_36
@docs inset_3_dot_5
@docs inset_3over4
@docs inset_4
@docs inset_40
@docs inset_44
@docs inset_48
@docs inset_5
@docs inset_52
@docs inset_56
@docs inset_6
@docs inset_60
@docs inset_64
@docs inset_7
@docs inset_72
@docs inset_8
@docs inset_80
@docs inset_9
@docs inset_96
@docs inset_auto
@docs inset_full
@docs inset_px
@docs inset_x_0
@docs inset_x_0_dot_5
@docs inset_x_1
@docs inset_x_10
@docs inset_x_11
@docs inset_x_12
@docs inset_x_14
@docs inset_x_16
@docs inset_x_1_dot_5
@docs inset_x_1over2
@docs inset_x_1over3
@docs inset_x_1over4
@docs inset_x_2
@docs inset_x_20
@docs inset_x_24
@docs inset_x_28
@docs inset_x_2_dot_5
@docs inset_x_2over3
@docs inset_x_2over4
@docs inset_x_3
@docs inset_x_32
@docs inset_x_36
@docs inset_x_3_dot_5
@docs inset_x_3over4
@docs inset_x_4
@docs inset_x_40
@docs inset_x_44
@docs inset_x_48
@docs inset_x_5
@docs inset_x_52
@docs inset_x_56
@docs inset_x_6
@docs inset_x_60
@docs inset_x_64
@docs inset_x_7
@docs inset_x_72
@docs inset_x_8
@docs inset_x_80
@docs inset_x_9
@docs inset_x_96
@docs inset_x_auto
@docs inset_x_full
@docs inset_x_px
@docs inset_y_0
@docs inset_y_0_dot_5
@docs inset_y_1
@docs inset_y_10
@docs inset_y_11
@docs inset_y_12
@docs inset_y_14
@docs inset_y_16
@docs inset_y_1_dot_5
@docs inset_y_1over2
@docs inset_y_1over3
@docs inset_y_1over4
@docs inset_y_2
@docs inset_y_20
@docs inset_y_24
@docs inset_y_28
@docs inset_y_2_dot_5
@docs inset_y_2over3
@docs inset_y_2over4
@docs inset_y_3
@docs inset_y_32
@docs inset_y_36
@docs inset_y_3_dot_5
@docs inset_y_3over4
@docs inset_y_4
@docs inset_y_40
@docs inset_y_44
@docs inset_y_48
@docs inset_y_5
@docs inset_y_52
@docs inset_y_56
@docs inset_y_6
@docs inset_y_60
@docs inset_y_64
@docs inset_y_7
@docs inset_y_72
@docs inset_y_8
@docs inset_y_80
@docs inset_y_9
@docs inset_y_96
@docs inset_y_auto
@docs inset_y_full
@docs inset_y_px
@docs invert
@docs invert_0
@docs invisible
@docs isolate
@docs isolation_auto
@docs italic
@docs items_baseline
@docs items_center
@docs items_end
@docs items_start
@docs items_stretch
@docs justify_around
@docs justify_between
@docs justify_center
@docs justify_end
@docs justify_evenly
@docs justify_items_center
@docs justify_items_end
@docs justify_items_start
@docs justify_items_stretch
@docs justify_self_auto
@docs justify_self_center
@docs justify_self_end
@docs justify_self_start
@docs justify_self_stretch
@docs justify_start
@docs leading_10
@docs leading_3
@docs leading_4
@docs leading_5
@docs leading_6
@docs leading_7
@docs leading_8
@docs leading_9
@docs leading_loose
@docs leading_none
@docs leading_normal
@docs leading_relaxed
@docs leading_snug
@docs leading_tight
@docs left_0
@docs left_0_dot_5
@docs left_1
@docs left_10
@docs left_11
@docs left_12
@docs left_14
@docs left_16
@docs left_1_dot_5
@docs left_1over2
@docs left_1over3
@docs left_1over4
@docs left_2
@docs left_20
@docs left_24
@docs left_28
@docs left_2_dot_5
@docs left_2over3
@docs left_2over4
@docs left_3
@docs left_32
@docs left_36
@docs left_3_dot_5
@docs left_3over4
@docs left_4
@docs left_40
@docs left_44
@docs left_48
@docs left_5
@docs left_52
@docs left_56
@docs left_6
@docs left_60
@docs left_64
@docs left_7
@docs left_72
@docs left_8
@docs left_80
@docs left_9
@docs left_96
@docs left_auto
@docs left_full
@docs left_px
@docs line_through
@docs lining_nums
@docs list_decimal
@docs list_disc
@docs list_inside
@docs list_item
@docs list_none
@docs list_outside
@docs lowercase
@docs m_0
@docs m_0_dot_5
@docs m_1
@docs m_10
@docs m_11
@docs m_12
@docs m_14
@docs m_16
@docs m_1_dot_5
@docs m_2
@docs m_20
@docs m_24
@docs m_28
@docs m_2_dot_5
@docs m_3
@docs m_32
@docs m_36
@docs m_3_dot_5
@docs m_4
@docs m_40
@docs m_44
@docs m_48
@docs m_5
@docs m_52
@docs m_56
@docs m_6
@docs m_60
@docs m_64
@docs m_7
@docs m_72
@docs m_8
@docs m_80
@docs m_9
@docs m_96
@docs m_auto
@docs m_px
@docs max_h_0
@docs max_h_0_dot_5
@docs max_h_1
@docs max_h_10
@docs max_h_11
@docs max_h_12
@docs max_h_14
@docs max_h_16
@docs max_h_1_dot_5
@docs max_h_2
@docs max_h_20
@docs max_h_24
@docs max_h_28
@docs max_h_2_dot_5
@docs max_h_3
@docs max_h_32
@docs max_h_36
@docs max_h_3_dot_5
@docs max_h_4
@docs max_h_40
@docs max_h_44
@docs max_h_48
@docs max_h_5
@docs max_h_52
@docs max_h_56
@docs max_h_6
@docs max_h_60
@docs max_h_64
@docs max_h_7
@docs max_h_72
@docs max_h_8
@docs max_h_80
@docs max_h_9
@docs max_h_96
@docs max_h_full
@docs max_h_px
@docs max_h_screen
@docs max_w_0
@docs max_w_2xl
@docs max_w_3xl
@docs max_w_4xl
@docs max_w_5xl
@docs max_w_6xl
@docs max_w_7xl
@docs max_w_full
@docs max_w_lg
@docs max_w_max
@docs max_w_md
@docs max_w_min
@docs max_w_none
@docs max_w_prose
@docs max_w_screen_2xl
@docs max_w_screen_lg
@docs max_w_screen_md
@docs max_w_screen_sm
@docs max_w_screen_xl
@docs max_w_sm
@docs max_w_xl
@docs max_w_xs
@docs mb_0
@docs mb_0_dot_5
@docs mb_1
@docs mb_10
@docs mb_11
@docs mb_12
@docs mb_14
@docs mb_16
@docs mb_1_dot_5
@docs mb_2
@docs mb_20
@docs mb_24
@docs mb_28
@docs mb_2_dot_5
@docs mb_3
@docs mb_32
@docs mb_36
@docs mb_3_dot_5
@docs mb_4
@docs mb_40
@docs mb_44
@docs mb_48
@docs mb_5
@docs mb_52
@docs mb_56
@docs mb_6
@docs mb_60
@docs mb_64
@docs mb_7
@docs mb_72
@docs mb_8
@docs mb_80
@docs mb_9
@docs mb_96
@docs mb_auto
@docs mb_px
@docs min_h_0
@docs min_h_full
@docs min_h_screen
@docs min_w_0
@docs min_w_full
@docs min_w_max
@docs min_w_min
@docs mix_blend_color
@docs mix_blend_color_burn
@docs mix_blend_color_dodge
@docs mix_blend_darken
@docs mix_blend_difference
@docs mix_blend_exclusion
@docs mix_blend_hard_light
@docs mix_blend_hue
@docs mix_blend_lighten
@docs mix_blend_luminosity
@docs mix_blend_multiply
@docs mix_blend_normal
@docs mix_blend_overlay
@docs mix_blend_saturation
@docs mix_blend_screen
@docs mix_blend_soft_light
@docs ml_0
@docs ml_0_dot_5
@docs ml_1
@docs ml_10
@docs ml_11
@docs ml_12
@docs ml_14
@docs ml_16
@docs ml_1_dot_5
@docs ml_2
@docs ml_20
@docs ml_24
@docs ml_28
@docs ml_2_dot_5
@docs ml_3
@docs ml_32
@docs ml_36
@docs ml_3_dot_5
@docs ml_4
@docs ml_40
@docs ml_44
@docs ml_48
@docs ml_5
@docs ml_52
@docs ml_56
@docs ml_6
@docs ml_60
@docs ml_64
@docs ml_7
@docs ml_72
@docs ml_8
@docs ml_80
@docs ml_9
@docs ml_96
@docs ml_auto
@docs ml_px
@docs mr_0
@docs mr_0_dot_5
@docs mr_1
@docs mr_10
@docs mr_11
@docs mr_12
@docs mr_14
@docs mr_16
@docs mr_1_dot_5
@docs mr_2
@docs mr_20
@docs mr_24
@docs mr_28
@docs mr_2_dot_5
@docs mr_3
@docs mr_32
@docs mr_36
@docs mr_3_dot_5
@docs mr_4
@docs mr_40
@docs mr_44
@docs mr_48
@docs mr_5
@docs mr_52
@docs mr_56
@docs mr_6
@docs mr_60
@docs mr_64
@docs mr_7
@docs mr_72
@docs mr_8
@docs mr_80
@docs mr_9
@docs mr_96
@docs mr_auto
@docs mr_px
@docs mt_0
@docs mt_0_dot_5
@docs mt_1
@docs mt_10
@docs mt_11
@docs mt_12
@docs mt_14
@docs mt_16
@docs mt_1_dot_5
@docs mt_2
@docs mt_20
@docs mt_24
@docs mt_28
@docs mt_2_dot_5
@docs mt_3
@docs mt_32
@docs mt_36
@docs mt_3_dot_5
@docs mt_4
@docs mt_40
@docs mt_44
@docs mt_48
@docs mt_5
@docs mt_52
@docs mt_56
@docs mt_6
@docs mt_60
@docs mt_64
@docs mt_7
@docs mt_72
@docs mt_8
@docs mt_80
@docs mt_9
@docs mt_96
@docs mt_auto
@docs mt_px
@docs mx_0
@docs mx_0_dot_5
@docs mx_1
@docs mx_10
@docs mx_11
@docs mx_12
@docs mx_14
@docs mx_16
@docs mx_1_dot_5
@docs mx_2
@docs mx_20
@docs mx_24
@docs mx_28
@docs mx_2_dot_5
@docs mx_3
@docs mx_32
@docs mx_36
@docs mx_3_dot_5
@docs mx_4
@docs mx_40
@docs mx_44
@docs mx_48
@docs mx_5
@docs mx_52
@docs mx_56
@docs mx_6
@docs mx_60
@docs mx_64
@docs mx_7
@docs mx_72
@docs mx_8
@docs mx_80
@docs mx_9
@docs mx_96
@docs mx_auto
@docs mx_px
@docs my_0
@docs my_0_dot_5
@docs my_1
@docs my_10
@docs my_11
@docs my_12
@docs my_14
@docs my_16
@docs my_1_dot_5
@docs my_2
@docs my_20
@docs my_24
@docs my_28
@docs my_2_dot_5
@docs my_3
@docs my_32
@docs my_36
@docs my_3_dot_5
@docs my_4
@docs my_40
@docs my_44
@docs my_48
@docs my_5
@docs my_52
@docs my_56
@docs my_6
@docs my_60
@docs my_64
@docs my_7
@docs my_72
@docs my_8
@docs my_80
@docs my_9
@docs my_96
@docs my_auto
@docs my_px
@docs neg_backdrop_hue_rotate_15
@docs neg_backdrop_hue_rotate_180
@docs neg_backdrop_hue_rotate_30
@docs neg_backdrop_hue_rotate_60
@docs neg_backdrop_hue_rotate_90
@docs neg_bottom_0
@docs neg_bottom_0_dot_5
@docs neg_bottom_1
@docs neg_bottom_10
@docs neg_bottom_11
@docs neg_bottom_12
@docs neg_bottom_14
@docs neg_bottom_16
@docs neg_bottom_1_dot_5
@docs neg_bottom_1over2
@docs neg_bottom_1over3
@docs neg_bottom_1over4
@docs neg_bottom_2
@docs neg_bottom_20
@docs neg_bottom_24
@docs neg_bottom_28
@docs neg_bottom_2_dot_5
@docs neg_bottom_2over3
@docs neg_bottom_2over4
@docs neg_bottom_3
@docs neg_bottom_32
@docs neg_bottom_36
@docs neg_bottom_3_dot_5
@docs neg_bottom_3over4
@docs neg_bottom_4
@docs neg_bottom_40
@docs neg_bottom_44
@docs neg_bottom_48
@docs neg_bottom_5
@docs neg_bottom_52
@docs neg_bottom_56
@docs neg_bottom_6
@docs neg_bottom_60
@docs neg_bottom_64
@docs neg_bottom_7
@docs neg_bottom_72
@docs neg_bottom_8
@docs neg_bottom_80
@docs neg_bottom_9
@docs neg_bottom_96
@docs neg_bottom_full
@docs neg_bottom_px
@docs neg_hue_rotate_15
@docs neg_hue_rotate_180
@docs neg_hue_rotate_30
@docs neg_hue_rotate_60
@docs neg_hue_rotate_90
@docs neg_inset_0
@docs neg_inset_0_dot_5
@docs neg_inset_1
@docs neg_inset_10
@docs neg_inset_11
@docs neg_inset_12
@docs neg_inset_14
@docs neg_inset_16
@docs neg_inset_1_dot_5
@docs neg_inset_1over2
@docs neg_inset_1over3
@docs neg_inset_1over4
@docs neg_inset_2
@docs neg_inset_20
@docs neg_inset_24
@docs neg_inset_28
@docs neg_inset_2_dot_5
@docs neg_inset_2over3
@docs neg_inset_2over4
@docs neg_inset_3
@docs neg_inset_32
@docs neg_inset_36
@docs neg_inset_3_dot_5
@docs neg_inset_3over4
@docs neg_inset_4
@docs neg_inset_40
@docs neg_inset_44
@docs neg_inset_48
@docs neg_inset_5
@docs neg_inset_52
@docs neg_inset_56
@docs neg_inset_6
@docs neg_inset_60
@docs neg_inset_64
@docs neg_inset_7
@docs neg_inset_72
@docs neg_inset_8
@docs neg_inset_80
@docs neg_inset_9
@docs neg_inset_96
@docs neg_inset_full
@docs neg_inset_px
@docs neg_inset_x_0
@docs neg_inset_x_0_dot_5
@docs neg_inset_x_1
@docs neg_inset_x_10
@docs neg_inset_x_11
@docs neg_inset_x_12
@docs neg_inset_x_14
@docs neg_inset_x_16
@docs neg_inset_x_1_dot_5
@docs neg_inset_x_1over2
@docs neg_inset_x_1over3
@docs neg_inset_x_1over4
@docs neg_inset_x_2
@docs neg_inset_x_20
@docs neg_inset_x_24
@docs neg_inset_x_28
@docs neg_inset_x_2_dot_5
@docs neg_inset_x_2over3
@docs neg_inset_x_2over4
@docs neg_inset_x_3
@docs neg_inset_x_32
@docs neg_inset_x_36
@docs neg_inset_x_3_dot_5
@docs neg_inset_x_3over4
@docs neg_inset_x_4
@docs neg_inset_x_40
@docs neg_inset_x_44
@docs neg_inset_x_48
@docs neg_inset_x_5
@docs neg_inset_x_52
@docs neg_inset_x_56
@docs neg_inset_x_6
@docs neg_inset_x_60
@docs neg_inset_x_64
@docs neg_inset_x_7
@docs neg_inset_x_72
@docs neg_inset_x_8
@docs neg_inset_x_80
@docs neg_inset_x_9
@docs neg_inset_x_96
@docs neg_inset_x_full
@docs neg_inset_x_px
@docs neg_inset_y_0
@docs neg_inset_y_0_dot_5
@docs neg_inset_y_1
@docs neg_inset_y_10
@docs neg_inset_y_11
@docs neg_inset_y_12
@docs neg_inset_y_14
@docs neg_inset_y_16
@docs neg_inset_y_1_dot_5
@docs neg_inset_y_1over2
@docs neg_inset_y_1over3
@docs neg_inset_y_1over4
@docs neg_inset_y_2
@docs neg_inset_y_20
@docs neg_inset_y_24
@docs neg_inset_y_28
@docs neg_inset_y_2_dot_5
@docs neg_inset_y_2over3
@docs neg_inset_y_2over4
@docs neg_inset_y_3
@docs neg_inset_y_32
@docs neg_inset_y_36
@docs neg_inset_y_3_dot_5
@docs neg_inset_y_3over4
@docs neg_inset_y_4
@docs neg_inset_y_40
@docs neg_inset_y_44
@docs neg_inset_y_48
@docs neg_inset_y_5
@docs neg_inset_y_52
@docs neg_inset_y_56
@docs neg_inset_y_6
@docs neg_inset_y_60
@docs neg_inset_y_64
@docs neg_inset_y_7
@docs neg_inset_y_72
@docs neg_inset_y_8
@docs neg_inset_y_80
@docs neg_inset_y_9
@docs neg_inset_y_96
@docs neg_inset_y_full
@docs neg_inset_y_px
@docs neg_left_0
@docs neg_left_0_dot_5
@docs neg_left_1
@docs neg_left_10
@docs neg_left_11
@docs neg_left_12
@docs neg_left_14
@docs neg_left_16
@docs neg_left_1_dot_5
@docs neg_left_1over2
@docs neg_left_1over3
@docs neg_left_1over4
@docs neg_left_2
@docs neg_left_20
@docs neg_left_24
@docs neg_left_28
@docs neg_left_2_dot_5
@docs neg_left_2over3
@docs neg_left_2over4
@docs neg_left_3
@docs neg_left_32
@docs neg_left_36
@docs neg_left_3_dot_5
@docs neg_left_3over4
@docs neg_left_4
@docs neg_left_40
@docs neg_left_44
@docs neg_left_48
@docs neg_left_5
@docs neg_left_52
@docs neg_left_56
@docs neg_left_6
@docs neg_left_60
@docs neg_left_64
@docs neg_left_7
@docs neg_left_72
@docs neg_left_8
@docs neg_left_80
@docs neg_left_9
@docs neg_left_96
@docs neg_left_full
@docs neg_left_px
@docs neg_m_0
@docs neg_m_0_dot_5
@docs neg_m_1
@docs neg_m_10
@docs neg_m_11
@docs neg_m_12
@docs neg_m_14
@docs neg_m_16
@docs neg_m_1_dot_5
@docs neg_m_2
@docs neg_m_20
@docs neg_m_24
@docs neg_m_28
@docs neg_m_2_dot_5
@docs neg_m_3
@docs neg_m_32
@docs neg_m_36
@docs neg_m_3_dot_5
@docs neg_m_4
@docs neg_m_40
@docs neg_m_44
@docs neg_m_48
@docs neg_m_5
@docs neg_m_52
@docs neg_m_56
@docs neg_m_6
@docs neg_m_60
@docs neg_m_64
@docs neg_m_7
@docs neg_m_72
@docs neg_m_8
@docs neg_m_80
@docs neg_m_9
@docs neg_m_96
@docs neg_m_px
@docs neg_mb_0
@docs neg_mb_0_dot_5
@docs neg_mb_1
@docs neg_mb_10
@docs neg_mb_11
@docs neg_mb_12
@docs neg_mb_14
@docs neg_mb_16
@docs neg_mb_1_dot_5
@docs neg_mb_2
@docs neg_mb_20
@docs neg_mb_24
@docs neg_mb_28
@docs neg_mb_2_dot_5
@docs neg_mb_3
@docs neg_mb_32
@docs neg_mb_36
@docs neg_mb_3_dot_5
@docs neg_mb_4
@docs neg_mb_40
@docs neg_mb_44
@docs neg_mb_48
@docs neg_mb_5
@docs neg_mb_52
@docs neg_mb_56
@docs neg_mb_6
@docs neg_mb_60
@docs neg_mb_64
@docs neg_mb_7
@docs neg_mb_72
@docs neg_mb_8
@docs neg_mb_80
@docs neg_mb_9
@docs neg_mb_96
@docs neg_mb_px
@docs neg_ml_0
@docs neg_ml_0_dot_5
@docs neg_ml_1
@docs neg_ml_10
@docs neg_ml_11
@docs neg_ml_12
@docs neg_ml_14
@docs neg_ml_16
@docs neg_ml_1_dot_5
@docs neg_ml_2
@docs neg_ml_20
@docs neg_ml_24
@docs neg_ml_28
@docs neg_ml_2_dot_5
@docs neg_ml_3
@docs neg_ml_32
@docs neg_ml_36
@docs neg_ml_3_dot_5
@docs neg_ml_4
@docs neg_ml_40
@docs neg_ml_44
@docs neg_ml_48
@docs neg_ml_5
@docs neg_ml_52
@docs neg_ml_56
@docs neg_ml_6
@docs neg_ml_60
@docs neg_ml_64
@docs neg_ml_7
@docs neg_ml_72
@docs neg_ml_8
@docs neg_ml_80
@docs neg_ml_9
@docs neg_ml_96
@docs neg_ml_px
@docs neg_mr_0
@docs neg_mr_0_dot_5
@docs neg_mr_1
@docs neg_mr_10
@docs neg_mr_11
@docs neg_mr_12
@docs neg_mr_14
@docs neg_mr_16
@docs neg_mr_1_dot_5
@docs neg_mr_2
@docs neg_mr_20
@docs neg_mr_24
@docs neg_mr_28
@docs neg_mr_2_dot_5
@docs neg_mr_3
@docs neg_mr_32
@docs neg_mr_36
@docs neg_mr_3_dot_5
@docs neg_mr_4
@docs neg_mr_40
@docs neg_mr_44
@docs neg_mr_48
@docs neg_mr_5
@docs neg_mr_52
@docs neg_mr_56
@docs neg_mr_6
@docs neg_mr_60
@docs neg_mr_64
@docs neg_mr_7
@docs neg_mr_72
@docs neg_mr_8
@docs neg_mr_80
@docs neg_mr_9
@docs neg_mr_96
@docs neg_mr_px
@docs neg_mt_0
@docs neg_mt_0_dot_5
@docs neg_mt_1
@docs neg_mt_10
@docs neg_mt_11
@docs neg_mt_12
@docs neg_mt_14
@docs neg_mt_16
@docs neg_mt_1_dot_5
@docs neg_mt_2
@docs neg_mt_20
@docs neg_mt_24
@docs neg_mt_28
@docs neg_mt_2_dot_5
@docs neg_mt_3
@docs neg_mt_32
@docs neg_mt_36
@docs neg_mt_3_dot_5
@docs neg_mt_4
@docs neg_mt_40
@docs neg_mt_44
@docs neg_mt_48
@docs neg_mt_5
@docs neg_mt_52
@docs neg_mt_56
@docs neg_mt_6
@docs neg_mt_60
@docs neg_mt_64
@docs neg_mt_7
@docs neg_mt_72
@docs neg_mt_8
@docs neg_mt_80
@docs neg_mt_9
@docs neg_mt_96
@docs neg_mt_px
@docs neg_mx_0
@docs neg_mx_0_dot_5
@docs neg_mx_1
@docs neg_mx_10
@docs neg_mx_11
@docs neg_mx_12
@docs neg_mx_14
@docs neg_mx_16
@docs neg_mx_1_dot_5
@docs neg_mx_2
@docs neg_mx_20
@docs neg_mx_24
@docs neg_mx_28
@docs neg_mx_2_dot_5
@docs neg_mx_3
@docs neg_mx_32
@docs neg_mx_36
@docs neg_mx_3_dot_5
@docs neg_mx_4
@docs neg_mx_40
@docs neg_mx_44
@docs neg_mx_48
@docs neg_mx_5
@docs neg_mx_52
@docs neg_mx_56
@docs neg_mx_6
@docs neg_mx_60
@docs neg_mx_64
@docs neg_mx_7
@docs neg_mx_72
@docs neg_mx_8
@docs neg_mx_80
@docs neg_mx_9
@docs neg_mx_96
@docs neg_mx_px
@docs neg_my_0
@docs neg_my_0_dot_5
@docs neg_my_1
@docs neg_my_10
@docs neg_my_11
@docs neg_my_12
@docs neg_my_14
@docs neg_my_16
@docs neg_my_1_dot_5
@docs neg_my_2
@docs neg_my_20
@docs neg_my_24
@docs neg_my_28
@docs neg_my_2_dot_5
@docs neg_my_3
@docs neg_my_32
@docs neg_my_36
@docs neg_my_3_dot_5
@docs neg_my_4
@docs neg_my_40
@docs neg_my_44
@docs neg_my_48
@docs neg_my_5
@docs neg_my_52
@docs neg_my_56
@docs neg_my_6
@docs neg_my_60
@docs neg_my_64
@docs neg_my_7
@docs neg_my_72
@docs neg_my_8
@docs neg_my_80
@docs neg_my_9
@docs neg_my_96
@docs neg_my_px
@docs neg_right_0
@docs neg_right_0_dot_5
@docs neg_right_1
@docs neg_right_10
@docs neg_right_11
@docs neg_right_12
@docs neg_right_14
@docs neg_right_16
@docs neg_right_1_dot_5
@docs neg_right_1over2
@docs neg_right_1over3
@docs neg_right_1over4
@docs neg_right_2
@docs neg_right_20
@docs neg_right_24
@docs neg_right_28
@docs neg_right_2_dot_5
@docs neg_right_2over3
@docs neg_right_2over4
@docs neg_right_3
@docs neg_right_32
@docs neg_right_36
@docs neg_right_3_dot_5
@docs neg_right_3over4
@docs neg_right_4
@docs neg_right_40
@docs neg_right_44
@docs neg_right_48
@docs neg_right_5
@docs neg_right_52
@docs neg_right_56
@docs neg_right_6
@docs neg_right_60
@docs neg_right_64
@docs neg_right_7
@docs neg_right_72
@docs neg_right_8
@docs neg_right_80
@docs neg_right_9
@docs neg_right_96
@docs neg_right_full
@docs neg_right_px
@docs neg_rotate_1
@docs neg_rotate_12
@docs neg_rotate_180
@docs neg_rotate_2
@docs neg_rotate_3
@docs neg_rotate_45
@docs neg_rotate_6
@docs neg_rotate_90
@docs neg_skew_x_1
@docs neg_skew_x_12
@docs neg_skew_x_2
@docs neg_skew_x_3
@docs neg_skew_x_6
@docs neg_skew_y_1
@docs neg_skew_y_12
@docs neg_skew_y_2
@docs neg_skew_y_3
@docs neg_skew_y_6
@docs neg_space_x_0
@docs neg_space_x_0_dot_5
@docs neg_space_x_1
@docs neg_space_x_10
@docs neg_space_x_11
@docs neg_space_x_12
@docs neg_space_x_14
@docs neg_space_x_16
@docs neg_space_x_1_dot_5
@docs neg_space_x_2
@docs neg_space_x_20
@docs neg_space_x_24
@docs neg_space_x_28
@docs neg_space_x_2_dot_5
@docs neg_space_x_3
@docs neg_space_x_32
@docs neg_space_x_36
@docs neg_space_x_3_dot_5
@docs neg_space_x_4
@docs neg_space_x_40
@docs neg_space_x_44
@docs neg_space_x_48
@docs neg_space_x_5
@docs neg_space_x_52
@docs neg_space_x_56
@docs neg_space_x_6
@docs neg_space_x_60
@docs neg_space_x_64
@docs neg_space_x_7
@docs neg_space_x_72
@docs neg_space_x_8
@docs neg_space_x_80
@docs neg_space_x_9
@docs neg_space_x_96
@docs neg_space_x_px
@docs neg_space_y_0
@docs neg_space_y_0_dot_5
@docs neg_space_y_1
@docs neg_space_y_10
@docs neg_space_y_11
@docs neg_space_y_12
@docs neg_space_y_14
@docs neg_space_y_16
@docs neg_space_y_1_dot_5
@docs neg_space_y_2
@docs neg_space_y_20
@docs neg_space_y_24
@docs neg_space_y_28
@docs neg_space_y_2_dot_5
@docs neg_space_y_3
@docs neg_space_y_32
@docs neg_space_y_36
@docs neg_space_y_3_dot_5
@docs neg_space_y_4
@docs neg_space_y_40
@docs neg_space_y_44
@docs neg_space_y_48
@docs neg_space_y_5
@docs neg_space_y_52
@docs neg_space_y_56
@docs neg_space_y_6
@docs neg_space_y_60
@docs neg_space_y_64
@docs neg_space_y_7
@docs neg_space_y_72
@docs neg_space_y_8
@docs neg_space_y_80
@docs neg_space_y_9
@docs neg_space_y_96
@docs neg_space_y_px
@docs neg_top_0
@docs neg_top_0_dot_5
@docs neg_top_1
@docs neg_top_10
@docs neg_top_11
@docs neg_top_12
@docs neg_top_14
@docs neg_top_16
@docs neg_top_1_dot_5
@docs neg_top_1over2
@docs neg_top_1over3
@docs neg_top_1over4
@docs neg_top_2
@docs neg_top_20
@docs neg_top_24
@docs neg_top_28
@docs neg_top_2_dot_5
@docs neg_top_2over3
@docs neg_top_2over4
@docs neg_top_3
@docs neg_top_32
@docs neg_top_36
@docs neg_top_3_dot_5
@docs neg_top_3over4
@docs neg_top_4
@docs neg_top_40
@docs neg_top_44
@docs neg_top_48
@docs neg_top_5
@docs neg_top_52
@docs neg_top_56
@docs neg_top_6
@docs neg_top_60
@docs neg_top_64
@docs neg_top_7
@docs neg_top_72
@docs neg_top_8
@docs neg_top_80
@docs neg_top_9
@docs neg_top_96
@docs neg_top_full
@docs neg_top_px
@docs neg_translate_x_0
@docs neg_translate_x_0_dot_5
@docs neg_translate_x_1
@docs neg_translate_x_10
@docs neg_translate_x_11
@docs neg_translate_x_12
@docs neg_translate_x_14
@docs neg_translate_x_16
@docs neg_translate_x_1_dot_5
@docs neg_translate_x_1over2
@docs neg_translate_x_1over3
@docs neg_translate_x_1over4
@docs neg_translate_x_2
@docs neg_translate_x_20
@docs neg_translate_x_24
@docs neg_translate_x_28
@docs neg_translate_x_2_dot_5
@docs neg_translate_x_2over3
@docs neg_translate_x_2over4
@docs neg_translate_x_3
@docs neg_translate_x_32
@docs neg_translate_x_36
@docs neg_translate_x_3_dot_5
@docs neg_translate_x_3over4
@docs neg_translate_x_4
@docs neg_translate_x_40
@docs neg_translate_x_44
@docs neg_translate_x_48
@docs neg_translate_x_5
@docs neg_translate_x_52
@docs neg_translate_x_56
@docs neg_translate_x_6
@docs neg_translate_x_60
@docs neg_translate_x_64
@docs neg_translate_x_7
@docs neg_translate_x_72
@docs neg_translate_x_8
@docs neg_translate_x_80
@docs neg_translate_x_9
@docs neg_translate_x_96
@docs neg_translate_x_full
@docs neg_translate_x_px
@docs neg_translate_y_0
@docs neg_translate_y_0_dot_5
@docs neg_translate_y_1
@docs neg_translate_y_10
@docs neg_translate_y_11
@docs neg_translate_y_12
@docs neg_translate_y_14
@docs neg_translate_y_16
@docs neg_translate_y_1_dot_5
@docs neg_translate_y_1over2
@docs neg_translate_y_1over3
@docs neg_translate_y_1over4
@docs neg_translate_y_2
@docs neg_translate_y_20
@docs neg_translate_y_24
@docs neg_translate_y_28
@docs neg_translate_y_2_dot_5
@docs neg_translate_y_2over3
@docs neg_translate_y_2over4
@docs neg_translate_y_3
@docs neg_translate_y_32
@docs neg_translate_y_36
@docs neg_translate_y_3_dot_5
@docs neg_translate_y_3over4
@docs neg_translate_y_4
@docs neg_translate_y_40
@docs neg_translate_y_44
@docs neg_translate_y_48
@docs neg_translate_y_5
@docs neg_translate_y_52
@docs neg_translate_y_56
@docs neg_translate_y_6
@docs neg_translate_y_60
@docs neg_translate_y_64
@docs neg_translate_y_7
@docs neg_translate_y_72
@docs neg_translate_y_8
@docs neg_translate_y_80
@docs neg_translate_y_9
@docs neg_translate_y_96
@docs neg_translate_y_full
@docs neg_translate_y_px
@docs no_underline
@docs normal_case
@docs normal_nums
@docs not_italic
@docs not_sr_only
@docs object_bottom
@docs object_center
@docs object_contain
@docs object_cover
@docs object_fill
@docs object_left
@docs object_left_bottom
@docs object_left_top
@docs object_none
@docs object_right
@docs object_right_bottom
@docs object_right_top
@docs object_scale_down
@docs object_top
@docs oldstyle_nums
@docs opacity_0
@docs opacity_10
@docs opacity_100
@docs opacity_20
@docs opacity_25
@docs opacity_30
@docs opacity_40
@docs opacity_5
@docs opacity_50
@docs opacity_60
@docs opacity_70
@docs opacity_75
@docs opacity_80
@docs opacity_90
@docs opacity_95
@docs order_1
@docs order_10
@docs order_11
@docs order_12
@docs order_2
@docs order_3
@docs order_4
@docs order_5
@docs order_6
@docs order_7
@docs order_8
@docs order_9
@docs order_first
@docs order_last
@docs order_none
@docs ordinal
@docs origin_bottom
@docs origin_bottom_left
@docs origin_bottom_right
@docs origin_center
@docs origin_left
@docs origin_right
@docs origin_top
@docs origin_top_left
@docs origin_top_right
@docs outline_black
@docs outline_none
@docs outline_white
@docs overflow_auto
@docs overflow_clip
@docs overflow_ellipsis
@docs overflow_hidden
@docs overflow_scroll
@docs overflow_visible
@docs overflow_x_auto
@docs overflow_x_hidden
@docs overflow_x_scroll
@docs overflow_x_visible
@docs overflow_y_auto
@docs overflow_y_hidden
@docs overflow_y_scroll
@docs overflow_y_visible
@docs overscroll_auto
@docs overscroll_contain
@docs overscroll_none
@docs overscroll_x_auto
@docs overscroll_x_contain
@docs overscroll_x_none
@docs overscroll_y_auto
@docs overscroll_y_contain
@docs overscroll_y_none
@docs p_0
@docs p_0_dot_5
@docs p_1
@docs p_10
@docs p_11
@docs p_12
@docs p_14
@docs p_16
@docs p_1_dot_5
@docs p_2
@docs p_20
@docs p_24
@docs p_28
@docs p_2_dot_5
@docs p_3
@docs p_32
@docs p_36
@docs p_3_dot_5
@docs p_4
@docs p_40
@docs p_44
@docs p_48
@docs p_5
@docs p_52
@docs p_56
@docs p_6
@docs p_60
@docs p_64
@docs p_7
@docs p_72
@docs p_8
@docs p_80
@docs p_9
@docs p_96
@docs p_px
@docs pb_0
@docs pb_0_dot_5
@docs pb_1
@docs pb_10
@docs pb_11
@docs pb_12
@docs pb_14
@docs pb_16
@docs pb_1_dot_5
@docs pb_2
@docs pb_20
@docs pb_24
@docs pb_28
@docs pb_2_dot_5
@docs pb_3
@docs pb_32
@docs pb_36
@docs pb_3_dot_5
@docs pb_4
@docs pb_40
@docs pb_44
@docs pb_48
@docs pb_5
@docs pb_52
@docs pb_56
@docs pb_6
@docs pb_60
@docs pb_64
@docs pb_7
@docs pb_72
@docs pb_8
@docs pb_80
@docs pb_9
@docs pb_96
@docs pb_px
@docs pl_0
@docs pl_0_dot_5
@docs pl_1
@docs pl_10
@docs pl_11
@docs pl_12
@docs pl_14
@docs pl_16
@docs pl_1_dot_5
@docs pl_2
@docs pl_20
@docs pl_24
@docs pl_28
@docs pl_2_dot_5
@docs pl_3
@docs pl_32
@docs pl_36
@docs pl_3_dot_5
@docs pl_4
@docs pl_40
@docs pl_44
@docs pl_48
@docs pl_5
@docs pl_52
@docs pl_56
@docs pl_6
@docs pl_60
@docs pl_64
@docs pl_7
@docs pl_72
@docs pl_8
@docs pl_80
@docs pl_9
@docs pl_96
@docs pl_px
@docs place_content_around
@docs place_content_between
@docs place_content_center
@docs place_content_end
@docs place_content_evenly
@docs place_content_start
@docs place_content_stretch
@docs place_items_center
@docs place_items_end
@docs place_items_start
@docs place_items_stretch
@docs place_self_auto
@docs place_self_center
@docs place_self_end
@docs place_self_start
@docs place_self_stretch
@docs placeholder_destruct
@docs placeholder_exclaim
@docs placeholder_opacity_0
@docs placeholder_opacity_10
@docs placeholder_opacity_100
@docs placeholder_opacity_20
@docs placeholder_opacity_25
@docs placeholder_opacity_30
@docs placeholder_opacity_40
@docs placeholder_opacity_5
@docs placeholder_opacity_50
@docs placeholder_opacity_60
@docs placeholder_opacity_70
@docs placeholder_opacity_75
@docs placeholder_opacity_80
@docs placeholder_opacity_90
@docs placeholder_opacity_95
@docs placeholder_primary
@docs placeholder_secondary
@docs placeholder_success
@docs placeholder_tertiary
@docs pointer_events_auto
@docs pointer_events_none
@docs pr_0
@docs pr_0_dot_5
@docs pr_1
@docs pr_10
@docs pr_11
@docs pr_12
@docs pr_14
@docs pr_16
@docs pr_1_dot_5
@docs pr_2
@docs pr_20
@docs pr_24
@docs pr_28
@docs pr_2_dot_5
@docs pr_3
@docs pr_32
@docs pr_36
@docs pr_3_dot_5
@docs pr_4
@docs pr_40
@docs pr_44
@docs pr_48
@docs pr_5
@docs pr_52
@docs pr_56
@docs pr_6
@docs pr_60
@docs pr_64
@docs pr_7
@docs pr_72
@docs pr_8
@docs pr_80
@docs pr_9
@docs pr_96
@docs pr_px
@docs proportional_nums
@docs prose
@docs prose_2xl
@docs prose_lg
@docs prose_sm
@docs prose_xl
@docs pt_0
@docs pt_0_dot_5
@docs pt_1
@docs pt_10
@docs pt_11
@docs pt_12
@docs pt_14
@docs pt_16
@docs pt_1_dot_5
@docs pt_2
@docs pt_20
@docs pt_24
@docs pt_28
@docs pt_2_dot_5
@docs pt_3
@docs pt_32
@docs pt_36
@docs pt_3_dot_5
@docs pt_4
@docs pt_40
@docs pt_44
@docs pt_48
@docs pt_5
@docs pt_52
@docs pt_56
@docs pt_6
@docs pt_60
@docs pt_64
@docs pt_7
@docs pt_72
@docs pt_8
@docs pt_80
@docs pt_9
@docs pt_96
@docs pt_px
@docs px_0
@docs px_0_dot_5
@docs px_1
@docs px_10
@docs px_11
@docs px_12
@docs px_14
@docs px_16
@docs px_1_dot_5
@docs px_2
@docs px_20
@docs px_24
@docs px_28
@docs px_2_dot_5
@docs px_3
@docs px_32
@docs px_36
@docs px_3_dot_5
@docs px_4
@docs px_40
@docs px_44
@docs px_48
@docs px_5
@docs px_52
@docs px_56
@docs px_6
@docs px_60
@docs px_64
@docs px_7
@docs px_72
@docs px_8
@docs px_80
@docs px_9
@docs px_96
@docs px_px
@docs py_0
@docs py_0_dot_5
@docs py_1
@docs py_10
@docs py_11
@docs py_12
@docs py_14
@docs py_16
@docs py_1_dot_5
@docs py_2
@docs py_20
@docs py_24
@docs py_28
@docs py_2_dot_5
@docs py_3
@docs py_32
@docs py_36
@docs py_3_dot_5
@docs py_4
@docs py_40
@docs py_44
@docs py_48
@docs py_5
@docs py_52
@docs py_56
@docs py_6
@docs py_60
@docs py_64
@docs py_7
@docs py_72
@docs py_8
@docs py_80
@docs py_9
@docs py_96
@docs py_px
@docs relative
@docs resize
@docs resize_none
@docs resize_x
@docs resize_y
@docs right_0
@docs right_0_dot_5
@docs right_1
@docs right_10
@docs right_11
@docs right_12
@docs right_14
@docs right_16
@docs right_1_dot_5
@docs right_1over2
@docs right_1over3
@docs right_1over4
@docs right_2
@docs right_20
@docs right_24
@docs right_28
@docs right_2_dot_5
@docs right_2over3
@docs right_2over4
@docs right_3
@docs right_32
@docs right_36
@docs right_3_dot_5
@docs right_3over4
@docs right_4
@docs right_40
@docs right_44
@docs right_48
@docs right_5
@docs right_52
@docs right_56
@docs right_6
@docs right_60
@docs right_64
@docs right_7
@docs right_72
@docs right_8
@docs right_80
@docs right_9
@docs right_96
@docs right_auto
@docs right_full
@docs right_px
@docs ring
@docs ring_0
@docs ring_1
@docs ring_2
@docs ring_4
@docs ring_8
@docs ring_destruct
@docs ring_exclaim
@docs ring_inset
@docs ring_offset_0
@docs ring_offset_1
@docs ring_offset_2
@docs ring_offset_4
@docs ring_offset_8
@docs ring_offset_destruct
@docs ring_offset_exclaim
@docs ring_offset_primary
@docs ring_offset_secondary
@docs ring_offset_success
@docs ring_offset_tertiary
@docs ring_opacity_0
@docs ring_opacity_10
@docs ring_opacity_100
@docs ring_opacity_20
@docs ring_opacity_25
@docs ring_opacity_30
@docs ring_opacity_40
@docs ring_opacity_5
@docs ring_opacity_50
@docs ring_opacity_60
@docs ring_opacity_70
@docs ring_opacity_75
@docs ring_opacity_80
@docs ring_opacity_90
@docs ring_opacity_95
@docs ring_primary
@docs ring_secondary
@docs ring_success
@docs ring_tertiary
@docs rotate_0
@docs rotate_1
@docs rotate_12
@docs rotate_180
@docs rotate_2
@docs rotate_3
@docs rotate_45
@docs rotate_6
@docs rotate_90
@docs rounded
@docs rounded_2xl
@docs rounded_3xl
@docs rounded_b
@docs rounded_b_2xl
@docs rounded_b_3xl
@docs rounded_b_full
@docs rounded_b_lg
@docs rounded_b_md
@docs rounded_b_none
@docs rounded_b_sm
@docs rounded_b_xl
@docs rounded_bl
@docs rounded_bl_2xl
@docs rounded_bl_3xl
@docs rounded_bl_full
@docs rounded_bl_lg
@docs rounded_bl_md
@docs rounded_bl_none
@docs rounded_bl_sm
@docs rounded_bl_xl
@docs rounded_br
@docs rounded_br_2xl
@docs rounded_br_3xl
@docs rounded_br_full
@docs rounded_br_lg
@docs rounded_br_md
@docs rounded_br_none
@docs rounded_br_sm
@docs rounded_br_xl
@docs rounded_full
@docs rounded_l
@docs rounded_l_2xl
@docs rounded_l_3xl
@docs rounded_l_full
@docs rounded_l_lg
@docs rounded_l_md
@docs rounded_l_none
@docs rounded_l_sm
@docs rounded_l_xl
@docs rounded_lg
@docs rounded_md
@docs rounded_none
@docs rounded_r
@docs rounded_r_2xl
@docs rounded_r_3xl
@docs rounded_r_full
@docs rounded_r_lg
@docs rounded_r_md
@docs rounded_r_none
@docs rounded_r_sm
@docs rounded_r_xl
@docs rounded_sm
@docs rounded_t
@docs rounded_t_2xl
@docs rounded_t_3xl
@docs rounded_t_full
@docs rounded_t_lg
@docs rounded_t_md
@docs rounded_t_none
@docs rounded_t_sm
@docs rounded_t_xl
@docs rounded_tl
@docs rounded_tl_2xl
@docs rounded_tl_3xl
@docs rounded_tl_full
@docs rounded_tl_lg
@docs rounded_tl_md
@docs rounded_tl_none
@docs rounded_tl_sm
@docs rounded_tl_xl
@docs rounded_tr
@docs rounded_tr_2xl
@docs rounded_tr_3xl
@docs rounded_tr_full
@docs rounded_tr_lg
@docs rounded_tr_md
@docs rounded_tr_none
@docs rounded_tr_sm
@docs rounded_tr_xl
@docs rounded_xl
@docs row_auto
@docs row_end_1
@docs row_end_2
@docs row_end_3
@docs row_end_4
@docs row_end_5
@docs row_end_6
@docs row_end_7
@docs row_end_auto
@docs row_span_1
@docs row_span_2
@docs row_span_3
@docs row_span_4
@docs row_span_5
@docs row_span_6
@docs row_span_full
@docs row_start_1
@docs row_start_2
@docs row_start_3
@docs row_start_4
@docs row_start_5
@docs row_start_6
@docs row_start_7
@docs row_start_auto
@docs saturate_0
@docs saturate_100
@docs saturate_150
@docs saturate_200
@docs saturate_50
@docs scale_0
@docs scale_100
@docs scale_105
@docs scale_110
@docs scale_125
@docs scale_150
@docs scale_50
@docs scale_75
@docs scale_90
@docs scale_95
@docs scale_x_0
@docs scale_x_100
@docs scale_x_105
@docs scale_x_110
@docs scale_x_125
@docs scale_x_150
@docs scale_x_50
@docs scale_x_75
@docs scale_x_90
@docs scale_x_95
@docs scale_y_0
@docs scale_y_100
@docs scale_y_105
@docs scale_y_110
@docs scale_y_125
@docs scale_y_150
@docs scale_y_50
@docs scale_y_75
@docs scale_y_90
@docs scale_y_95
@docs select_all
@docs select_auto
@docs select_none
@docs select_text
@docs self_auto
@docs self_baseline
@docs self_center
@docs self_end
@docs self_start
@docs self_stretch
@docs sepia
@docs sepia_0
@docs shadow
@docs shadow_2xl
@docs shadow_inner
@docs shadow_lg
@docs shadow_md
@docs shadow_none
@docs shadow_sm
@docs shadow_xl
@docs skew_x_0
@docs skew_x_1
@docs skew_x_12
@docs skew_x_2
@docs skew_x_3
@docs skew_x_6
@docs skew_y_0
@docs skew_y_1
@docs skew_y_12
@docs skew_y_2
@docs skew_y_3
@docs skew_y_6
@docs slashed_zero
@docs space_x_0
@docs space_x_0_dot_5
@docs space_x_1
@docs space_x_10
@docs space_x_11
@docs space_x_12
@docs space_x_14
@docs space_x_16
@docs space_x_1_dot_5
@docs space_x_2
@docs space_x_20
@docs space_x_24
@docs space_x_28
@docs space_x_2_dot_5
@docs space_x_3
@docs space_x_32
@docs space_x_36
@docs space_x_3_dot_5
@docs space_x_4
@docs space_x_40
@docs space_x_44
@docs space_x_48
@docs space_x_5
@docs space_x_52
@docs space_x_56
@docs space_x_6
@docs space_x_60
@docs space_x_64
@docs space_x_7
@docs space_x_72
@docs space_x_8
@docs space_x_80
@docs space_x_9
@docs space_x_96
@docs space_x_px
@docs space_x_reverse
@docs space_y_0
@docs space_y_0_dot_5
@docs space_y_1
@docs space_y_10
@docs space_y_11
@docs space_y_12
@docs space_y_14
@docs space_y_16
@docs space_y_1_dot_5
@docs space_y_2
@docs space_y_20
@docs space_y_24
@docs space_y_28
@docs space_y_2_dot_5
@docs space_y_3
@docs space_y_32
@docs space_y_36
@docs space_y_3_dot_5
@docs space_y_4
@docs space_y_40
@docs space_y_44
@docs space_y_48
@docs space_y_5
@docs space_y_52
@docs space_y_56
@docs space_y_6
@docs space_y_60
@docs space_y_64
@docs space_y_7
@docs space_y_72
@docs space_y_8
@docs space_y_80
@docs space_y_9
@docs space_y_96
@docs space_y_px
@docs space_y_reverse
@docs sr_only
@docs stacked_fractions
@docs static
@docs sticky
@docs stroke_0
@docs stroke_1
@docs stroke_2
@docs stroke_current
@docs subpixel_antialiased
@docs table
@docs table_auto
@docs table_caption
@docs table_cell
@docs table_column
@docs table_column_group
@docs table_fixed
@docs table_footer_group
@docs table_header_group
@docs table_row
@docs table_row_group
@docs tabular_nums
@docs text_2xl
@docs text_3xl
@docs text_4xl
@docs text_5xl
@docs text_6xl
@docs text_7xl
@docs text_8xl
@docs text_9xl
@docs text_base
@docs text_center
@docs text_destruct
@docs text_exclaim
@docs text_justify
@docs text_left
@docs text_lg
@docs text_opacity_0
@docs text_opacity_10
@docs text_opacity_100
@docs text_opacity_20
@docs text_opacity_25
@docs text_opacity_30
@docs text_opacity_40
@docs text_opacity_5
@docs text_opacity_50
@docs text_opacity_60
@docs text_opacity_70
@docs text_opacity_75
@docs text_opacity_80
@docs text_opacity_90
@docs text_opacity_95
@docs text_primary
@docs text_right
@docs text_secondary
@docs text_sm
@docs text_success
@docs text_tertiary
@docs text_xl
@docs text_xs
@docs to_destruct
@docs to_exclaim
@docs to_primary
@docs to_secondary
@docs to_success
@docs to_tertiary
@docs top_0
@docs top_0_dot_5
@docs top_1
@docs top_10
@docs top_11
@docs top_12
@docs top_14
@docs top_16
@docs top_1_dot_5
@docs top_1over2
@docs top_1over3
@docs top_1over4
@docs top_2
@docs top_20
@docs top_24
@docs top_28
@docs top_2_dot_5
@docs top_2over3
@docs top_2over4
@docs top_3
@docs top_32
@docs top_36
@docs top_3_dot_5
@docs top_3over4
@docs top_4
@docs top_40
@docs top_44
@docs top_48
@docs top_5
@docs top_52
@docs top_56
@docs top_6
@docs top_60
@docs top_64
@docs top_7
@docs top_72
@docs top_8
@docs top_80
@docs top_9
@docs top_96
@docs top_auto
@docs top_full
@docs top_px
@docs tracking_normal
@docs tracking_tight
@docs tracking_tighter
@docs tracking_wide
@docs tracking_wider
@docs tracking_widest
@docs transform
@docs transform_gpu
@docs transform_none
@docs transition
@docs transition_all
@docs transition_colors
@docs transition_none
@docs transition_opacity
@docs transition_shadow
@docs transition_transform
@docs translate_x_0
@docs translate_x_0_dot_5
@docs translate_x_1
@docs translate_x_10
@docs translate_x_11
@docs translate_x_12
@docs translate_x_14
@docs translate_x_16
@docs translate_x_1_dot_5
@docs translate_x_1over2
@docs translate_x_1over3
@docs translate_x_1over4
@docs translate_x_2
@docs translate_x_20
@docs translate_x_24
@docs translate_x_28
@docs translate_x_2_dot_5
@docs translate_x_2over3
@docs translate_x_2over4
@docs translate_x_3
@docs translate_x_32
@docs translate_x_36
@docs translate_x_3_dot_5
@docs translate_x_3over4
@docs translate_x_4
@docs translate_x_40
@docs translate_x_44
@docs translate_x_48
@docs translate_x_5
@docs translate_x_52
@docs translate_x_56
@docs translate_x_6
@docs translate_x_60
@docs translate_x_64
@docs translate_x_7
@docs translate_x_72
@docs translate_x_8
@docs translate_x_80
@docs translate_x_9
@docs translate_x_96
@docs translate_x_full
@docs translate_x_px
@docs translate_y_0
@docs translate_y_0_dot_5
@docs translate_y_1
@docs translate_y_10
@docs translate_y_11
@docs translate_y_12
@docs translate_y_14
@docs translate_y_16
@docs translate_y_1_dot_5
@docs translate_y_1over2
@docs translate_y_1over3
@docs translate_y_1over4
@docs translate_y_2
@docs translate_y_20
@docs translate_y_24
@docs translate_y_28
@docs translate_y_2_dot_5
@docs translate_y_2over3
@docs translate_y_2over4
@docs translate_y_3
@docs translate_y_32
@docs translate_y_36
@docs translate_y_3_dot_5
@docs translate_y_3over4
@docs translate_y_4
@docs translate_y_40
@docs translate_y_44
@docs translate_y_48
@docs translate_y_5
@docs translate_y_52
@docs translate_y_56
@docs translate_y_6
@docs translate_y_60
@docs translate_y_64
@docs translate_y_7
@docs translate_y_72
@docs translate_y_8
@docs translate_y_80
@docs translate_y_9
@docs translate_y_96
@docs translate_y_full
@docs translate_y_px
@docs truncate
@docs underline
@docs uppercase
@docs via_destruct
@docs via_exclaim
@docs via_primary
@docs via_secondary
@docs via_success
@docs via_tertiary
@docs visible
@docs w_0
@docs w_0_dot_5
@docs w_1
@docs w_10
@docs w_10over12
@docs w_11
@docs w_11over12
@docs w_12
@docs w_14
@docs w_16
@docs w_1_dot_5
@docs w_1over12
@docs w_1over2
@docs w_1over3
@docs w_1over4
@docs w_1over5
@docs w_1over6
@docs w_2
@docs w_20
@docs w_24
@docs w_28
@docs w_2_dot_5
@docs w_2over12
@docs w_2over3
@docs w_2over4
@docs w_2over5
@docs w_2over6
@docs w_3
@docs w_32
@docs w_36
@docs w_3_dot_5
@docs w_3over12
@docs w_3over4
@docs w_3over5
@docs w_3over6
@docs w_4
@docs w_40
@docs w_44
@docs w_48
@docs w_4over12
@docs w_4over5
@docs w_4over6
@docs w_5
@docs w_52
@docs w_56
@docs w_5over12
@docs w_5over6
@docs w_6
@docs w_60
@docs w_64
@docs w_6over12
@docs w_7
@docs w_72
@docs w_7over12
@docs w_8
@docs w_80
@docs w_8over12
@docs w_9
@docs w_96
@docs w_9over12
@docs w_auto
@docs w_full
@docs w_max
@docs w_min
@docs w_px
@docs w_screen
@docs whitespace_normal
@docs whitespace_nowrap
@docs whitespace_pre
@docs whitespace_pre_line
@docs whitespace_pre_wrap
@docs z_0
@docs z_10
@docs z_20
@docs z_30
@docs z_40
@docs z_50
@docs z_auto
-}

import Css
import Css.Animations
import Css.Global
import Css.Media


{-| This contains tailwind's style reset.

This is something similar to normalize.css, if you're familiar with it.

You **need to include this in your html** at any time you use this module,
as some of the classes in here depend on css variables defined in the global styles.

You include it like so:

    import Css.Global
    import Html.Styled as Html exposing (Html)
    import Tailwind.Utilities exposing (globalStyles)

    view : Html msg
    view =
        div []
            [ -- Like this:
              Css.Global.global globalStyles

            -- Continue with any other Html
            ]

It only needs to be included once.

-}
globalStyles : List Css.Global.Snippet
globalStyles =
    [ Css.Global.selector "*,\n::before,\n::after"
        [ Css.property "box-sizing" "border-box"
        ]
    , Css.Global.selector "html"
        [ Css.property "-moz-tab-size" "4"
        , Css.property "-o-tab-size" "4"
        , Css.property "tab-size" "4"
        ]
    , Css.Global.selector "html"
        [ Css.property "line-height" "1.15"
        , Css.property "-webkit-text-size-adjust" "100%"
        ]
    , Css.Global.selector "body"
        [ Css.property "margin" "0"
        ]
    , Css.Global.selector "body"
        [ Css.property "font-family" "system-ui,\n\t\t-apple-system, \n\t\t'Segoe UI',\n\t\tRoboto,\n\t\tHelvetica,\n\t\tArial,\n\t\tsans-serif,\n\t\t'Apple Color Emoji',\n\t\t'Segoe UI Emoji'"
        ]
    , Css.Global.selector "hr"
        [ Css.property "height" "0"
        , Css.property "color" "inherit"
        ]
    , Css.Global.selector "abbr[title]"
        [ Css.property "-webkit-text-decoration" "underline dotted"
        , Css.property "text-decoration" "underline dotted"
        ]
    , Css.Global.selector "b,\nstrong"
        [ Css.property "font-weight" "bolder"
        ]
    , Css.Global.selector "code,\nkbd,\nsamp,\npre"
        [ Css.property "font-family" "ui-monospace,\n\t\tSFMono-Regular,\n\t\tConsolas,\n\t\t'Liberation Mono',\n\t\tMenlo,\n\t\tmonospace"
        , Css.property "font-size" "1em"
        ]
    , Css.Global.selector "small"
        [ Css.property "font-size" "80%"
        ]
    , Css.Global.selector "sub,\nsup"
        [ Css.property "font-size" "75%"
        , Css.property "line-height" "0"
        , Css.property "position" "relative"
        , Css.property "vertical-align" "baseline"
        ]
    , Css.Global.selector "sub"
        [ Css.property "bottom" "-0.25em"
        ]
    , Css.Global.selector "sup"
        [ Css.property "top" "-0.5em"
        ]
    , Css.Global.selector "table"
        [ Css.property "text-indent" "0"
        , Css.property "border-color" "inherit"
        ]
    , Css.Global.selector "button,\ninput,\noptgroup,\nselect,\ntextarea"
        [ Css.property "font-family" "inherit"
        , Css.property "font-size" "100%"
        , Css.property "line-height" "1.15"
        , Css.property "margin" "0"
        ]
    , Css.Global.selector "button,\nselect"
        [ Css.property "text-transform" "none"
        ]
    , Css.Global.selector "button,\n[type='button'],\n[type='reset'],\n[type='submit']"
        [ Css.property "-webkit-appearance" "button"
        ]
    , Css.Global.selector "::-moz-focus-inner"
        [ Css.property "border-style" "none"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector ":-moz-focusring"
        [ Css.property "outline" "1px dotted ButtonText"
        ]
    , Css.Global.selector ":-moz-ui-invalid"
        [ Css.property "box-shadow" "none"
        ]
    , Css.Global.selector "legend"
        [ Css.property "padding" "0"
        ]
    , Css.Global.selector "progress"
        [ Css.property "vertical-align" "baseline"
        ]
    , Css.Global.selector "::-webkit-inner-spin-button,\n::-webkit-outer-spin-button"
        [ Css.property "height" "auto"
        ]
    , Css.Global.selector "[type='search']"
        [ Css.property "-webkit-appearance" "textfield"
        , Css.property "outline-offset" "-2px"
        ]
    , Css.Global.selector "::-webkit-search-decoration"
        [ Css.property "-webkit-appearance" "none"
        ]
    , Css.Global.selector "::-webkit-file-upload-button"
        [ Css.property "-webkit-appearance" "button"
        , Css.property "font" "inherit"
        ]
    , Css.Global.selector "summary"
        [ Css.property "display" "list-item"
        ]
    , Css.Global.selector "blockquote,\ndl,\ndd,\nh1,\nh2,\nh3,\nh4,\nh5,\nh6,\nhr,\nfigure,\np,\npre"
        [ Css.property "margin" "0"
        ]
    , Css.Global.selector "button"
        [ Css.property "background-color" "transparent"
        , Css.property "background-image" "none"
        ]
    , Css.Global.selector "fieldset"
        [ Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "ol,\nul"
        [ Css.property "list-style" "none"
        , Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "html"
        [ Css.property "font-family" "'Space Grotesk', sans-serif"
        , Css.property "line-height" "1.5"
        ]
    , Css.Global.selector "body"
        [ Css.property "font-family" "inherit"
        , Css.property "line-height" "inherit"
        ]
    , Css.Global.selector "*,\n::before,\n::after"
        [ Css.property "box-sizing" "border-box"
        , Css.property "border-width" "0"
        , Css.property "border-style" "solid"
        , Css.property "border-color" "currentColor"
        ]
    , Css.Global.selector "hr"
        [ Css.property "border-top-width" "1px"
        ]
    , Css.Global.selector "img"
        [ Css.property "border-style" "solid"
        ]
    , Css.Global.selector "textarea"
        [ Css.property "resize" "vertical"
        ]
    , Css.Global.selector "input::-moz-placeholder, textarea::-moz-placeholder"
        [ Css.property "opacity" "1"
        , Css.property "color" "#a1a1aa"
        ]
    , Css.Global.selector "input::placeholder,\ntextarea::placeholder"
        [ Css.property "opacity" "1"
        , Css.property "color" "#a1a1aa"
        ]
    , Css.Global.selector "button,\n[role=\"button\"]"
        [ Css.property "cursor" "pointer"
        ]
    , Css.Global.selector ":-moz-focusring"
        [ Css.property "outline" "auto"
        ]
    , Css.Global.selector "table"
        [ Css.property "border-collapse" "collapse"
        ]
    , Css.Global.selector "h1,\nh2,\nh3,\nh4,\nh5,\nh6"
        [ Css.property "font-size" "inherit"
        , Css.property "font-weight" "inherit"
        ]
    , Css.Global.selector "a"
        [ Css.property "color" "inherit"
        , Css.property "text-decoration" "inherit"
        ]
    , Css.Global.selector "button,\ninput,\noptgroup,\nselect,\ntextarea"
        [ Css.property "padding" "0"
        , Css.property "line-height" "inherit"
        , Css.property "color" "inherit"
        ]
    , Css.Global.selector "pre,\ncode,\nkbd,\nsamp"
        [ Css.property "font-family" "ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, \"Liberation Mono\", \"Courier New\", monospace"
        ]
    , Css.Global.selector "img,\nsvg,\nvideo,\ncanvas,\naudio,\niframe,\nembed,\nobject"
        [ Css.property "display" "block"
        , Css.property "vertical-align" "middle"
        ]
    , Css.Global.selector "img,\nvideo"
        [ Css.property "max-width" "100%"
        , Css.property "height" "auto"
        ]
    , Css.Global.selector "[hidden]"
        [ Css.property "display" "none"
        ]
    , Css.Global.selector "*, ::before, ::after"
        [ Css.property "border-color" "currentColor"
        ]
    , Css.Global.selector "*, ::before, ::after"
        [ Css.property "--tw-shadow" "0 0 #0000"
        ]
    , Css.Global.selector "*, ::before, ::after"
        [ Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-ring-offset-width" "0px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "rgba(59, 130, 246, 0.5)"
        , Css.property "--tw-ring-offset-shadow" "0 0 #0000"
        , Css.property "--tw-ring-shadow" "0 0 #0000"
        ]
    ]


{-| The tailwind class `absolute`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

absolute : Css.Style
absolute =
    Css.property "position" "absolute"


{-| The tailwind class `align-baseline`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

align_baseline : Css.Style
align_baseline =
    Css.property "vertical-align" "baseline"


{-| The tailwind class `align-bottom`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

align_bottom : Css.Style
align_bottom =
    Css.property "vertical-align" "bottom"


{-| The tailwind class `align-middle`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

align_middle : Css.Style
align_middle =
    Css.property "vertical-align" "middle"


{-| The tailwind class `align-text-bottom`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

align_text_bottom : Css.Style
align_text_bottom =
    Css.property "vertical-align" "text-bottom"


{-| The tailwind class `align-text-top`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

align_text_top : Css.Style
align_text_top =
    Css.property "vertical-align" "text-top"


{-| The tailwind class `align-top`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

align_top : Css.Style
align_top =
    Css.property "vertical-align" "top"


{-| The tailwind class `animate-bounce`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

animate_bounce : Css.Style
animate_bounce =
    Css.batch
        [ Css.property "animation" "1s infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 0
                  , [ Css.Animations.property "transform" "translateY(-25%)"
                    , Css.Animations.property "animation-timing-function" "cubic-bezier(0.8,0,1,1)"
                    ]
                  )
                , ( 50
                  , [ Css.Animations.property "transform" "none"
                    , Css.Animations.property "animation-timing-function" "cubic-bezier(0,0,0.2,1)"
                    ]
                  )
                ]
            )
        ]


{-| The tailwind class `animate-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

animate_none : Css.Style
animate_none =
    Css.property "animation" "none"


{-| The tailwind class `animate-ping`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

animate_ping : Css.Style
animate_ping =
    Css.batch
        [ Css.property "animation" "1s cubic-bezier(0, 0, 0.2, 1) infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 75
                  , [ Css.Animations.property "transform" "scale(2)"
                    , Css.Animations.property "opacity" "0"
                    ]
                  )
                ]
            )
        ]


{-| The tailwind class `animate-pulse`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

animate_pulse : Css.Style
animate_pulse =
    Css.batch
        [ Css.property "animation" "2s cubic-bezier(0.4, 0, 0.6, 1) infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 50
                  , [ Css.Animations.property "opacity" ".5"
                    ]
                  )
                ]
            )
        ]


{-| The tailwind class `animate-spin`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

animate_spin : Css.Style
animate_spin =
    Css.batch
        [ Css.property "animation" "1s linear infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 100
                  , [ Css.Animations.property "transform" "rotate(360deg)"
                    ]
                  )
                ]
            )
        ]


{-| The tailwind class `antialiased`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

antialiased : Css.Style
antialiased =
    Css.batch
        [ Css.property "-webkit-font-smoothing" "antialiased"
        , Css.property "-moz-osx-font-smoothing" "grayscale"
        ]


{-| The tailwind class `appearance-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

appearance_none : Css.Style
appearance_none =
    Css.batch
        [ Css.property "-webkit-appearance" "none"
        , Css.property "-moz-appearance" "none"
        , Css.property "appearance" "none"
        ]


{-| The tailwind class `aspect-h-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_1 : Css.Style
aspect_h_1 =
    Css.property "--tw-aspect-h" "1"


{-| The tailwind class `aspect-h-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_10 : Css.Style
aspect_h_10 =
    Css.property "--tw-aspect-h" "10"


{-| The tailwind class `aspect-h-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_11 : Css.Style
aspect_h_11 =
    Css.property "--tw-aspect-h" "11"


{-| The tailwind class `aspect-h-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_12 : Css.Style
aspect_h_12 =
    Css.property "--tw-aspect-h" "12"


{-| The tailwind class `aspect-h-13`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_13 : Css.Style
aspect_h_13 =
    Css.property "--tw-aspect-h" "13"


{-| The tailwind class `aspect-h-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_14 : Css.Style
aspect_h_14 =
    Css.property "--tw-aspect-h" "14"


{-| The tailwind class `aspect-h-15`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_15 : Css.Style
aspect_h_15 =
    Css.property "--tw-aspect-h" "15"


{-| The tailwind class `aspect-h-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_16 : Css.Style
aspect_h_16 =
    Css.property "--tw-aspect-h" "16"


{-| The tailwind class `aspect-h-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_2 : Css.Style
aspect_h_2 =
    Css.property "--tw-aspect-h" "2"


{-| The tailwind class `aspect-h-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_3 : Css.Style
aspect_h_3 =
    Css.property "--tw-aspect-h" "3"


{-| The tailwind class `aspect-h-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_4 : Css.Style
aspect_h_4 =
    Css.property "--tw-aspect-h" "4"


{-| The tailwind class `aspect-h-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_5 : Css.Style
aspect_h_5 =
    Css.property "--tw-aspect-h" "5"


{-| The tailwind class `aspect-h-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_6 : Css.Style
aspect_h_6 =
    Css.property "--tw-aspect-h" "6"


{-| The tailwind class `aspect-h-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_7 : Css.Style
aspect_h_7 =
    Css.property "--tw-aspect-h" "7"


{-| The tailwind class `aspect-h-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_8 : Css.Style
aspect_h_8 =
    Css.property "--tw-aspect-h" "8"


{-| The tailwind class `aspect-h-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_h_9 : Css.Style
aspect_h_9 =
    Css.property "--tw-aspect-h" "9"


{-| The tailwind class `aspect-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_none : Css.Style
aspect_none =
    Css.batch
        [ Css.property "position" "static"
        , Css.property "padding-bottom" "0"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "static"
                , Css.property "height" "auto"
                , Css.property "width" "auto"
                , Css.property "top" "auto"
                , Css.property "right" "auto"
                , Css.property "bottom" "auto"
                , Css.property "left" "auto"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_1 : Css.Style
aspect_w_1 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "1"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_10 : Css.Style
aspect_w_10 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "10"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_11 : Css.Style
aspect_w_11 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "11"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_12 : Css.Style
aspect_w_12 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "12"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-13`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_13 : Css.Style
aspect_w_13 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "13"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_14 : Css.Style
aspect_w_14 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "14"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-15`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_15 : Css.Style
aspect_w_15 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "15"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_16 : Css.Style
aspect_w_16 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "16"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_2 : Css.Style
aspect_w_2 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "2"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_3 : Css.Style
aspect_w_3 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "3"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_4 : Css.Style
aspect_w_4 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "4"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_5 : Css.Style
aspect_w_5 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "5"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_6 : Css.Style
aspect_w_6 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "6"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_7 : Css.Style
aspect_w_7 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "7"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_8 : Css.Style
aspect_w_8 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "8"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `aspect-w-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

aspect_w_9 : Css.Style
aspect_w_9 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "9"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| The tailwind class `auto-cols-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

auto_cols_auto : Css.Style
auto_cols_auto =
    Css.property "grid-auto-columns" "auto"


{-| The tailwind class `auto-cols-fr`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

auto_cols_fr : Css.Style
auto_cols_fr =
    Css.property "grid-auto-columns" "minmax(0, 1fr)"


{-| The tailwind class `auto-cols-max`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

auto_cols_max : Css.Style
auto_cols_max =
    Css.property "grid-auto-columns" "max-content"


{-| The tailwind class `auto-cols-min`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

auto_cols_min : Css.Style
auto_cols_min =
    Css.property "grid-auto-columns" "min-content"


{-| The tailwind class `auto-rows-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

auto_rows_auto : Css.Style
auto_rows_auto =
    Css.property "grid-auto-rows" "auto"


{-| The tailwind class `auto-rows-fr`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

auto_rows_fr : Css.Style
auto_rows_fr =
    Css.property "grid-auto-rows" "minmax(0, 1fr)"


{-| The tailwind class `auto-rows-max`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

auto_rows_max : Css.Style
auto_rows_max =
    Css.property "grid-auto-rows" "max-content"


{-| The tailwind class `auto-rows-min`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

auto_rows_min : Css.Style
auto_rows_min =
    Css.property "grid-auto-rows" "min-content"


{-| The tailwind class `backdrop-blur`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_blur : Css.Style
backdrop_blur =
    Css.property "--tw-backdrop-blur" "blur(8px)"


{-| The tailwind class `backdrop-blur-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_blur_0 : Css.Style
backdrop_blur_0 =
    Css.property "--tw-backdrop-blur" "blur(0)"


{-| The tailwind class `backdrop-blur-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_blur_2xl : Css.Style
backdrop_blur_2xl =
    Css.property "--tw-backdrop-blur" "blur(40px)"


{-| The tailwind class `backdrop-blur-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_blur_3xl : Css.Style
backdrop_blur_3xl =
    Css.property "--tw-backdrop-blur" "blur(64px)"


{-| The tailwind class `backdrop-blur-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_blur_lg : Css.Style
backdrop_blur_lg =
    Css.property "--tw-backdrop-blur" "blur(16px)"


{-| The tailwind class `backdrop-blur-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_blur_md : Css.Style
backdrop_blur_md =
    Css.property "--tw-backdrop-blur" "blur(12px)"


{-| The tailwind class `backdrop-blur-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_blur_none : Css.Style
backdrop_blur_none =
    Css.property "--tw-backdrop-blur" "blur(0)"


{-| The tailwind class `backdrop-blur-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_blur_sm : Css.Style
backdrop_blur_sm =
    Css.property "--tw-backdrop-blur" "blur(4px)"


{-| The tailwind class `backdrop-blur-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_blur_xl : Css.Style
backdrop_blur_xl =
    Css.property "--tw-backdrop-blur" "blur(24px)"


{-| The tailwind class `backdrop-brightness-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_0 : Css.Style
backdrop_brightness_0 =
    Css.property "--tw-backdrop-brightness" "brightness(0)"


{-| The tailwind class `backdrop-brightness-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_100 : Css.Style
backdrop_brightness_100 =
    Css.property "--tw-backdrop-brightness" "brightness(1)"


{-| The tailwind class `backdrop-brightness-105`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_105 : Css.Style
backdrop_brightness_105 =
    Css.property "--tw-backdrop-brightness" "brightness(1.05)"


{-| The tailwind class `backdrop-brightness-110`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_110 : Css.Style
backdrop_brightness_110 =
    Css.property "--tw-backdrop-brightness" "brightness(1.1)"


{-| The tailwind class `backdrop-brightness-125`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_125 : Css.Style
backdrop_brightness_125 =
    Css.property "--tw-backdrop-brightness" "brightness(1.25)"


{-| The tailwind class `backdrop-brightness-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_150 : Css.Style
backdrop_brightness_150 =
    Css.property "--tw-backdrop-brightness" "brightness(1.5)"


{-| The tailwind class `backdrop-brightness-200`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_200 : Css.Style
backdrop_brightness_200 =
    Css.property "--tw-backdrop-brightness" "brightness(2)"


{-| The tailwind class `backdrop-brightness-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_50 : Css.Style
backdrop_brightness_50 =
    Css.property "--tw-backdrop-brightness" "brightness(.5)"


{-| The tailwind class `backdrop-brightness-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_75 : Css.Style
backdrop_brightness_75 =
    Css.property "--tw-backdrop-brightness" "brightness(.75)"


{-| The tailwind class `backdrop-brightness-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_90 : Css.Style
backdrop_brightness_90 =
    Css.property "--tw-backdrop-brightness" "brightness(.9)"


{-| The tailwind class `backdrop-brightness-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_brightness_95 : Css.Style
backdrop_brightness_95 =
    Css.property "--tw-backdrop-brightness" "brightness(.95)"


{-| The tailwind class `backdrop-contrast-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_contrast_0 : Css.Style
backdrop_contrast_0 =
    Css.property "--tw-backdrop-contrast" "contrast(0)"


{-| The tailwind class `backdrop-contrast-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_contrast_100 : Css.Style
backdrop_contrast_100 =
    Css.property "--tw-backdrop-contrast" "contrast(1)"


{-| The tailwind class `backdrop-contrast-125`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_contrast_125 : Css.Style
backdrop_contrast_125 =
    Css.property "--tw-backdrop-contrast" "contrast(1.25)"


{-| The tailwind class `backdrop-contrast-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_contrast_150 : Css.Style
backdrop_contrast_150 =
    Css.property "--tw-backdrop-contrast" "contrast(1.5)"


{-| The tailwind class `backdrop-contrast-200`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_contrast_200 : Css.Style
backdrop_contrast_200 =
    Css.property "--tw-backdrop-contrast" "contrast(2)"


{-| The tailwind class `backdrop-contrast-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_contrast_50 : Css.Style
backdrop_contrast_50 =
    Css.property "--tw-backdrop-contrast" "contrast(.5)"


{-| The tailwind class `backdrop-contrast-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_contrast_75 : Css.Style
backdrop_contrast_75 =
    Css.property "--tw-backdrop-contrast" "contrast(.75)"


{-| The tailwind class `backdrop-filter`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_filter : Css.Style
backdrop_filter =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-brightness" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-contrast" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-grayscale" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-hue-rotate" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-invert" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-opacity" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-saturate" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-sepia" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "-webkit-backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| The tailwind class `backdrop-filter-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_filter_none : Css.Style
backdrop_filter_none =
    Css.batch
        [ Css.property "-webkit-backdrop-filter" "none"
        , Css.property "backdrop-filter" "none"
        ]


{-| The tailwind class `backdrop-grayscale`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_grayscale : Css.Style
backdrop_grayscale =
    Css.property "--tw-backdrop-grayscale" "grayscale(100%)"


{-| The tailwind class `backdrop-grayscale-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_grayscale_0 : Css.Style
backdrop_grayscale_0 =
    Css.property "--tw-backdrop-grayscale" "grayscale(0)"


{-| The tailwind class `backdrop-hue-rotate-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_hue_rotate_0 : Css.Style
backdrop_hue_rotate_0 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(0deg)"


{-| The tailwind class `backdrop-hue-rotate-15`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_hue_rotate_15 : Css.Style
backdrop_hue_rotate_15 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(15deg)"


{-| The tailwind class `backdrop-hue-rotate-180`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_hue_rotate_180 : Css.Style
backdrop_hue_rotate_180 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(180deg)"


{-| The tailwind class `backdrop-hue-rotate-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_hue_rotate_30 : Css.Style
backdrop_hue_rotate_30 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(30deg)"


{-| The tailwind class `backdrop-hue-rotate-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_hue_rotate_60 : Css.Style
backdrop_hue_rotate_60 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(60deg)"


{-| The tailwind class `backdrop-hue-rotate-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_hue_rotate_90 : Css.Style
backdrop_hue_rotate_90 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(90deg)"


{-| The tailwind class `backdrop-invert`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_invert : Css.Style
backdrop_invert =
    Css.property "--tw-backdrop-invert" "invert(100%)"


{-| The tailwind class `backdrop-invert-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_invert_0 : Css.Style
backdrop_invert_0 =
    Css.property "--tw-backdrop-invert" "invert(0)"


{-| The tailwind class `backdrop-opacity-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_0 : Css.Style
backdrop_opacity_0 =
    Css.property "--tw-backdrop-opacity" "opacity(0)"


{-| The tailwind class `backdrop-opacity-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_10 : Css.Style
backdrop_opacity_10 =
    Css.property "--tw-backdrop-opacity" "opacity(0.1)"


{-| The tailwind class `backdrop-opacity-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_100 : Css.Style
backdrop_opacity_100 =
    Css.property "--tw-backdrop-opacity" "opacity(1)"


{-| The tailwind class `backdrop-opacity-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_20 : Css.Style
backdrop_opacity_20 =
    Css.property "--tw-backdrop-opacity" "opacity(0.2)"


{-| The tailwind class `backdrop-opacity-25`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_25 : Css.Style
backdrop_opacity_25 =
    Css.property "--tw-backdrop-opacity" "opacity(0.25)"


{-| The tailwind class `backdrop-opacity-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_30 : Css.Style
backdrop_opacity_30 =
    Css.property "--tw-backdrop-opacity" "opacity(0.3)"


{-| The tailwind class `backdrop-opacity-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_40 : Css.Style
backdrop_opacity_40 =
    Css.property "--tw-backdrop-opacity" "opacity(0.4)"


{-| The tailwind class `backdrop-opacity-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_5 : Css.Style
backdrop_opacity_5 =
    Css.property "--tw-backdrop-opacity" "opacity(0.05)"


{-| The tailwind class `backdrop-opacity-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_50 : Css.Style
backdrop_opacity_50 =
    Css.property "--tw-backdrop-opacity" "opacity(0.5)"


{-| The tailwind class `backdrop-opacity-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_60 : Css.Style
backdrop_opacity_60 =
    Css.property "--tw-backdrop-opacity" "opacity(0.6)"


{-| The tailwind class `backdrop-opacity-70`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_70 : Css.Style
backdrop_opacity_70 =
    Css.property "--tw-backdrop-opacity" "opacity(0.7)"


{-| The tailwind class `backdrop-opacity-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_75 : Css.Style
backdrop_opacity_75 =
    Css.property "--tw-backdrop-opacity" "opacity(0.75)"


{-| The tailwind class `backdrop-opacity-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_80 : Css.Style
backdrop_opacity_80 =
    Css.property "--tw-backdrop-opacity" "opacity(0.8)"


{-| The tailwind class `backdrop-opacity-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_90 : Css.Style
backdrop_opacity_90 =
    Css.property "--tw-backdrop-opacity" "opacity(0.9)"


{-| The tailwind class `backdrop-opacity-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_opacity_95 : Css.Style
backdrop_opacity_95 =
    Css.property "--tw-backdrop-opacity" "opacity(0.95)"


{-| The tailwind class `backdrop-saturate-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_saturate_0 : Css.Style
backdrop_saturate_0 =
    Css.property "--tw-backdrop-saturate" "saturate(0)"


{-| The tailwind class `backdrop-saturate-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_saturate_100 : Css.Style
backdrop_saturate_100 =
    Css.property "--tw-backdrop-saturate" "saturate(1)"


{-| The tailwind class `backdrop-saturate-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_saturate_150 : Css.Style
backdrop_saturate_150 =
    Css.property "--tw-backdrop-saturate" "saturate(1.5)"


{-| The tailwind class `backdrop-saturate-200`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_saturate_200 : Css.Style
backdrop_saturate_200 =
    Css.property "--tw-backdrop-saturate" "saturate(2)"


{-| The tailwind class `backdrop-saturate-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_saturate_50 : Css.Style
backdrop_saturate_50 =
    Css.property "--tw-backdrop-saturate" "saturate(.5)"


{-| The tailwind class `backdrop-sepia`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_sepia : Css.Style
backdrop_sepia =
    Css.property "--tw-backdrop-sepia" "sepia(100%)"


{-| The tailwind class `backdrop-sepia-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

backdrop_sepia_0 : Css.Style
backdrop_sepia_0 =
    Css.property "--tw-backdrop-sepia" "sepia(0)"


{-| The tailwind class `bg-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_auto : Css.Style
bg_auto =
    Css.property "background-size" "auto"


{-| The tailwind class `bg-blend-color`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_color : Css.Style
bg_blend_color =
    Css.property "background-blend-mode" "color"


{-| The tailwind class `bg-blend-color-burn`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_color_burn : Css.Style
bg_blend_color_burn =
    Css.property "background-blend-mode" "color-burn"


{-| The tailwind class `bg-blend-color-dodge`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_color_dodge : Css.Style
bg_blend_color_dodge =
    Css.property "background-blend-mode" "color-dodge"


{-| The tailwind class `bg-blend-darken`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_darken : Css.Style
bg_blend_darken =
    Css.property "background-blend-mode" "darken"


{-| The tailwind class `bg-blend-difference`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_difference : Css.Style
bg_blend_difference =
    Css.property "background-blend-mode" "difference"


{-| The tailwind class `bg-blend-exclusion`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_exclusion : Css.Style
bg_blend_exclusion =
    Css.property "background-blend-mode" "exclusion"


{-| The tailwind class `bg-blend-hard-light`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_hard_light : Css.Style
bg_blend_hard_light =
    Css.property "background-blend-mode" "hard-light"


{-| The tailwind class `bg-blend-hue`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_hue : Css.Style
bg_blend_hue =
    Css.property "background-blend-mode" "hue"


{-| The tailwind class `bg-blend-lighten`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_lighten : Css.Style
bg_blend_lighten =
    Css.property "background-blend-mode" "lighten"


{-| The tailwind class `bg-blend-luminosity`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_luminosity : Css.Style
bg_blend_luminosity =
    Css.property "background-blend-mode" "luminosity"


{-| The tailwind class `bg-blend-multiply`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_multiply : Css.Style
bg_blend_multiply =
    Css.property "background-blend-mode" "multiply"


{-| The tailwind class `bg-blend-normal`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_normal : Css.Style
bg_blend_normal =
    Css.property "background-blend-mode" "normal"


{-| The tailwind class `bg-blend-overlay`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_overlay : Css.Style
bg_blend_overlay =
    Css.property "background-blend-mode" "overlay"


{-| The tailwind class `bg-blend-saturation`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_saturation : Css.Style
bg_blend_saturation =
    Css.property "background-blend-mode" "saturation"


{-| The tailwind class `bg-blend-screen`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_screen : Css.Style
bg_blend_screen =
    Css.property "background-blend-mode" "screen"


{-| The tailwind class `bg-blend-soft-light`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_blend_soft_light : Css.Style
bg_blend_soft_light =
    Css.property "background-blend-mode" "soft-light"


{-| The tailwind class `bg-bottom`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_bottom : Css.Style
bg_bottom =
    Css.property "background-position" "bottom"


{-| The tailwind class `bg-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_center : Css.Style
bg_center =
    Css.property "background-position" "center"


{-| The tailwind class `bg-clip-border`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_clip_border : Css.Style
bg_clip_border =
    Css.property "background-clip" "border-box"


{-| The tailwind class `bg-clip-content`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_clip_content : Css.Style
bg_clip_content =
    Css.property "background-clip" "content-box"


{-| The tailwind class `bg-clip-padding`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_clip_padding : Css.Style
bg_clip_padding =
    Css.property "background-clip" "padding-box"


{-| The tailwind class `bg-clip-text`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_clip_text : Css.Style
bg_clip_text =
    Css.batch
        [ Css.property "-webkit-background-clip" "text"
        , Css.property "background-clip" "text"
        ]


{-| The tailwind class `bg-contain`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_contain : Css.Style
bg_contain =
    Css.property "background-size" "contain"


{-| The tailwind class `bg-cover`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_cover : Css.Style
bg_cover =
    Css.property "background-size" "cover"


{-| The tailwind class `bg-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_destruct : Css.Style
bg_destruct =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(142, 74, 73, var(--tw-bg-opacity))"
        ]


{-| The tailwind class `bg-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_exclaim : Css.Style
bg_exclaim =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(224, 144, 93, var(--tw-bg-opacity))"
        ]


{-| The tailwind class `bg-fixed`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_fixed : Css.Style
bg_fixed =
    Css.property "background-attachment" "fixed"


{-| The tailwind class `bg-gradient-to-b`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_gradient_to_b : Css.Style
bg_gradient_to_b =
    Css.property "background-image" "linear-gradient(to bottom, var(--tw-gradient-stops))"


{-| The tailwind class `bg-gradient-to-bl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_gradient_to_bl : Css.Style
bg_gradient_to_bl =
    Css.property "background-image" "linear-gradient(to bottom left, var(--tw-gradient-stops))"


{-| The tailwind class `bg-gradient-to-br`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_gradient_to_br : Css.Style
bg_gradient_to_br =
    Css.property "background-image" "linear-gradient(to bottom right, var(--tw-gradient-stops))"


{-| The tailwind class `bg-gradient-to-l`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_gradient_to_l : Css.Style
bg_gradient_to_l =
    Css.property "background-image" "linear-gradient(to left, var(--tw-gradient-stops))"


{-| The tailwind class `bg-gradient-to-r`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_gradient_to_r : Css.Style
bg_gradient_to_r =
    Css.property "background-image" "linear-gradient(to right, var(--tw-gradient-stops))"


{-| The tailwind class `bg-gradient-to-t`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_gradient_to_t : Css.Style
bg_gradient_to_t =
    Css.property "background-image" "linear-gradient(to top, var(--tw-gradient-stops))"


{-| The tailwind class `bg-gradient-to-tl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_gradient_to_tl : Css.Style
bg_gradient_to_tl =
    Css.property "background-image" "linear-gradient(to top left, var(--tw-gradient-stops))"


{-| The tailwind class `bg-gradient-to-tr`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_gradient_to_tr : Css.Style
bg_gradient_to_tr =
    Css.property "background-image" "linear-gradient(to top right, var(--tw-gradient-stops))"


{-| The tailwind class `bg-left`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_left : Css.Style
bg_left =
    Css.property "background-position" "left"


{-| The tailwind class `bg-left-bottom`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_left_bottom : Css.Style
bg_left_bottom =
    Css.property "background-position" "left bottom"


{-| The tailwind class `bg-left-top`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_left_top : Css.Style
bg_left_top =
    Css.property "background-position" "left top"


{-| The tailwind class `bg-local`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_local : Css.Style
bg_local =
    Css.property "background-attachment" "local"


{-| The tailwind class `bg-no-repeat`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_no_repeat : Css.Style
bg_no_repeat =
    Css.property "background-repeat" "no-repeat"


{-| The tailwind class `bg-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_none : Css.Style
bg_none =
    Css.property "background-image" "none"


{-| The tailwind class `bg-opacity-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_0 : Css.Style
bg_opacity_0 =
    Css.property "--tw-bg-opacity" "0"


{-| The tailwind class `bg-opacity-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_10 : Css.Style
bg_opacity_10 =
    Css.property "--tw-bg-opacity" "0.1"


{-| The tailwind class `bg-opacity-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_100 : Css.Style
bg_opacity_100 =
    Css.property "--tw-bg-opacity" "1"


{-| The tailwind class `bg-opacity-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_20 : Css.Style
bg_opacity_20 =
    Css.property "--tw-bg-opacity" "0.2"


{-| The tailwind class `bg-opacity-25`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_25 : Css.Style
bg_opacity_25 =
    Css.property "--tw-bg-opacity" "0.25"


{-| The tailwind class `bg-opacity-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_30 : Css.Style
bg_opacity_30 =
    Css.property "--tw-bg-opacity" "0.3"


{-| The tailwind class `bg-opacity-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_40 : Css.Style
bg_opacity_40 =
    Css.property "--tw-bg-opacity" "0.4"


{-| The tailwind class `bg-opacity-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_5 : Css.Style
bg_opacity_5 =
    Css.property "--tw-bg-opacity" "0.05"


{-| The tailwind class `bg-opacity-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_50 : Css.Style
bg_opacity_50 =
    Css.property "--tw-bg-opacity" "0.5"


{-| The tailwind class `bg-opacity-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_60 : Css.Style
bg_opacity_60 =
    Css.property "--tw-bg-opacity" "0.6"


{-| The tailwind class `bg-opacity-70`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_70 : Css.Style
bg_opacity_70 =
    Css.property "--tw-bg-opacity" "0.7"


{-| The tailwind class `bg-opacity-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_75 : Css.Style
bg_opacity_75 =
    Css.property "--tw-bg-opacity" "0.75"


{-| The tailwind class `bg-opacity-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_80 : Css.Style
bg_opacity_80 =
    Css.property "--tw-bg-opacity" "0.8"


{-| The tailwind class `bg-opacity-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_90 : Css.Style
bg_opacity_90 =
    Css.property "--tw-bg-opacity" "0.9"


{-| The tailwind class `bg-opacity-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_opacity_95 : Css.Style
bg_opacity_95 =
    Css.property "--tw-bg-opacity" "0.95"


{-| The tailwind class `bg-origin-border`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_origin_border : Css.Style
bg_origin_border =
    Css.property "background-origin" "border-box"


{-| The tailwind class `bg-origin-content`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_origin_content : Css.Style
bg_origin_content =
    Css.property "background-origin" "content-box"


{-| The tailwind class `bg-origin-padding`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_origin_padding : Css.Style
bg_origin_padding =
    Css.property "background-origin" "padding-box"


{-| The tailwind class `bg-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_primary : Css.Style
bg_primary =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(150, 89, 88, var(--tw-bg-opacity))"
        ]


{-| The tailwind class `bg-repeat`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_repeat : Css.Style
bg_repeat =
    Css.property "background-repeat" "repeat"


{-| The tailwind class `bg-repeat-round`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_repeat_round : Css.Style
bg_repeat_round =
    Css.property "background-repeat" "round"


{-| The tailwind class `bg-repeat-space`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_repeat_space : Css.Style
bg_repeat_space =
    Css.property "background-repeat" "space"


{-| The tailwind class `bg-repeat-x`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_repeat_x : Css.Style
bg_repeat_x =
    Css.property "background-repeat" "repeat-x"


{-| The tailwind class `bg-repeat-y`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_repeat_y : Css.Style
bg_repeat_y =
    Css.property "background-repeat" "repeat-y"


{-| The tailwind class `bg-right`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_right : Css.Style
bg_right =
    Css.property "background-position" "right"


{-| The tailwind class `bg-right-bottom`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_right_bottom : Css.Style
bg_right_bottom =
    Css.property "background-position" "right bottom"


{-| The tailwind class `bg-right-top`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_right_top : Css.Style
bg_right_top =
    Css.property "background-position" "right top"


{-| The tailwind class `bg-scroll`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_scroll : Css.Style
bg_scroll =
    Css.property "background-attachment" "scroll"


{-| The tailwind class `bg-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_secondary : Css.Style
bg_secondary =
    Css.property "background-color" "#dfeee3ff"


{-| The tailwind class `bg-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_success : Css.Style
bg_success =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(78, 208, 182, var(--tw-bg-opacity))"
        ]


{-| The tailwind class `bg-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_tertiary : Css.Style
bg_tertiary =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(161, 159, 187, var(--tw-bg-opacity))"
        ]


{-| The tailwind class `bg-top`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bg_top : Css.Style
bg_top =
    Css.property "background-position" "top"


{-| The tailwind class `block`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

block : Css.Style
block =
    Css.property "display" "block"


{-| The tailwind class `blur`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

blur : Css.Style
blur =
    Css.property "--tw-blur" "blur(8px)"


{-| The tailwind class `blur-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

blur_0 : Css.Style
blur_0 =
    Css.property "--tw-blur" "blur(0)"


{-| The tailwind class `blur-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

blur_2xl : Css.Style
blur_2xl =
    Css.property "--tw-blur" "blur(40px)"


{-| The tailwind class `blur-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

blur_3xl : Css.Style
blur_3xl =
    Css.property "--tw-blur" "blur(64px)"


{-| The tailwind class `blur-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

blur_lg : Css.Style
blur_lg =
    Css.property "--tw-blur" "blur(16px)"


{-| The tailwind class `blur-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

blur_md : Css.Style
blur_md =
    Css.property "--tw-blur" "blur(12px)"


{-| The tailwind class `blur-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

blur_none : Css.Style
blur_none =
    Css.property "--tw-blur" "blur(0)"


{-| The tailwind class `blur-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

blur_sm : Css.Style
blur_sm =
    Css.property "--tw-blur" "blur(4px)"


{-| The tailwind class `blur-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

blur_xl : Css.Style
blur_xl =
    Css.property "--tw-blur" "blur(24px)"


{-| The tailwind class `border`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border : Css.Style
border =
    Css.property "border-width" "1px"


{-| The tailwind class `border-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_0 : Css.Style
border_0 =
    Css.property "border-width" "0px"


{-| The tailwind class `border-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_2 : Css.Style
border_2 =
    Css.property "border-width" "2px"


{-| The tailwind class `border-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_4 : Css.Style
border_4 =
    Css.property "border-width" "4px"


{-| The tailwind class `border-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_8 : Css.Style
border_8 =
    Css.property "border-width" "8px"


{-| The tailwind class `border-b`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_b : Css.Style
border_b =
    Css.property "border-bottom-width" "1px"


{-| The tailwind class `border-b-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_b_0 : Css.Style
border_b_0 =
    Css.property "border-bottom-width" "0px"


{-| The tailwind class `border-b-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_b_2 : Css.Style
border_b_2 =
    Css.property "border-bottom-width" "2px"


{-| The tailwind class `border-b-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_b_4 : Css.Style
border_b_4 =
    Css.property "border-bottom-width" "4px"


{-| The tailwind class `border-b-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_b_8 : Css.Style
border_b_8 =
    Css.property "border-bottom-width" "8px"


{-| The tailwind class `border-collapse`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_collapse : Css.Style
border_collapse =
    Css.property "border-collapse" "collapse"


{-| The tailwind class `border-dashed`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_dashed : Css.Style
border_dashed =
    Css.property "border-style" "dashed"


{-| The tailwind class `border-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_destruct : Css.Style
border_destruct =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(142, 74, 73, var(--tw-border-opacity))"
        ]


{-| The tailwind class `border-dotted`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_dotted : Css.Style
border_dotted =
    Css.property "border-style" "dotted"


{-| The tailwind class `border-double`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_double : Css.Style
border_double =
    Css.property "border-style" "double"


{-| The tailwind class `border-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_exclaim : Css.Style
border_exclaim =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(224, 144, 93, var(--tw-border-opacity))"
        ]


{-| The tailwind class `border-l`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_l : Css.Style
border_l =
    Css.property "border-left-width" "1px"


{-| The tailwind class `border-l-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_l_0 : Css.Style
border_l_0 =
    Css.property "border-left-width" "0px"


{-| The tailwind class `border-l-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_l_2 : Css.Style
border_l_2 =
    Css.property "border-left-width" "2px"


{-| The tailwind class `border-l-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_l_4 : Css.Style
border_l_4 =
    Css.property "border-left-width" "4px"


{-| The tailwind class `border-l-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_l_8 : Css.Style
border_l_8 =
    Css.property "border-left-width" "8px"


{-| The tailwind class `border-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_none : Css.Style
border_none =
    Css.property "border-style" "none"


{-| The tailwind class `border-opacity-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_0 : Css.Style
border_opacity_0 =
    Css.property "--tw-border-opacity" "0"


{-| The tailwind class `border-opacity-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_10 : Css.Style
border_opacity_10 =
    Css.property "--tw-border-opacity" "0.1"


{-| The tailwind class `border-opacity-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_100 : Css.Style
border_opacity_100 =
    Css.property "--tw-border-opacity" "1"


{-| The tailwind class `border-opacity-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_20 : Css.Style
border_opacity_20 =
    Css.property "--tw-border-opacity" "0.2"


{-| The tailwind class `border-opacity-25`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_25 : Css.Style
border_opacity_25 =
    Css.property "--tw-border-opacity" "0.25"


{-| The tailwind class `border-opacity-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_30 : Css.Style
border_opacity_30 =
    Css.property "--tw-border-opacity" "0.3"


{-| The tailwind class `border-opacity-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_40 : Css.Style
border_opacity_40 =
    Css.property "--tw-border-opacity" "0.4"


{-| The tailwind class `border-opacity-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_5 : Css.Style
border_opacity_5 =
    Css.property "--tw-border-opacity" "0.05"


{-| The tailwind class `border-opacity-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_50 : Css.Style
border_opacity_50 =
    Css.property "--tw-border-opacity" "0.5"


{-| The tailwind class `border-opacity-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_60 : Css.Style
border_opacity_60 =
    Css.property "--tw-border-opacity" "0.6"


{-| The tailwind class `border-opacity-70`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_70 : Css.Style
border_opacity_70 =
    Css.property "--tw-border-opacity" "0.7"


{-| The tailwind class `border-opacity-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_75 : Css.Style
border_opacity_75 =
    Css.property "--tw-border-opacity" "0.75"


{-| The tailwind class `border-opacity-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_80 : Css.Style
border_opacity_80 =
    Css.property "--tw-border-opacity" "0.8"


{-| The tailwind class `border-opacity-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_90 : Css.Style
border_opacity_90 =
    Css.property "--tw-border-opacity" "0.9"


{-| The tailwind class `border-opacity-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_opacity_95 : Css.Style
border_opacity_95 =
    Css.property "--tw-border-opacity" "0.95"


{-| The tailwind class `border-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_primary : Css.Style
border_primary =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(150, 89, 88, var(--tw-border-opacity))"
        ]


{-| The tailwind class `border-r`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_r : Css.Style
border_r =
    Css.property "border-right-width" "1px"


{-| The tailwind class `border-r-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_r_0 : Css.Style
border_r_0 =
    Css.property "border-right-width" "0px"


{-| The tailwind class `border-r-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_r_2 : Css.Style
border_r_2 =
    Css.property "border-right-width" "2px"


{-| The tailwind class `border-r-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_r_4 : Css.Style
border_r_4 =
    Css.property "border-right-width" "4px"


{-| The tailwind class `border-r-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_r_8 : Css.Style
border_r_8 =
    Css.property "border-right-width" "8px"


{-| The tailwind class `border-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_secondary : Css.Style
border_secondary =
    Css.property "border-color" "#dfeee3ff"


{-| The tailwind class `border-separate`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_separate : Css.Style
border_separate =
    Css.property "border-collapse" "separate"


{-| The tailwind class `border-solid`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_solid : Css.Style
border_solid =
    Css.property "border-style" "solid"


{-| The tailwind class `border-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_success : Css.Style
border_success =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(78, 208, 182, var(--tw-border-opacity))"
        ]


{-| The tailwind class `border-t`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_t : Css.Style
border_t =
    Css.property "border-top-width" "1px"


{-| The tailwind class `border-t-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_t_0 : Css.Style
border_t_0 =
    Css.property "border-top-width" "0px"


{-| The tailwind class `border-t-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_t_2 : Css.Style
border_t_2 =
    Css.property "border-top-width" "2px"


{-| The tailwind class `border-t-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_t_4 : Css.Style
border_t_4 =
    Css.property "border-top-width" "4px"


{-| The tailwind class `border-t-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_t_8 : Css.Style
border_t_8 =
    Css.property "border-top-width" "8px"


{-| The tailwind class `border-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

border_tertiary : Css.Style
border_tertiary =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(161, 159, 187, var(--tw-border-opacity))"
        ]


{-| The tailwind class `bottom-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_0 : Css.Style
bottom_0 =
    Css.property "bottom" "0px"


{-| The tailwind class `bottom-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_0_dot_5 : Css.Style
bottom_0_dot_5 =
    Css.property "bottom" "0.125rem"


{-| The tailwind class `bottom-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_1 : Css.Style
bottom_1 =
    Css.property "bottom" "0.25rem"


{-| The tailwind class `bottom-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_10 : Css.Style
bottom_10 =
    Css.property "bottom" "2.5rem"


{-| The tailwind class `bottom-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_11 : Css.Style
bottom_11 =
    Css.property "bottom" "2.75rem"


{-| The tailwind class `bottom-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_12 : Css.Style
bottom_12 =
    Css.property "bottom" "3rem"


{-| The tailwind class `bottom-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_14 : Css.Style
bottom_14 =
    Css.property "bottom" "3.5rem"


{-| The tailwind class `bottom-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_16 : Css.Style
bottom_16 =
    Css.property "bottom" "4rem"


{-| The tailwind class `bottom-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_1_dot_5 : Css.Style
bottom_1_dot_5 =
    Css.property "bottom" "0.375rem"


{-| The tailwind class `bottom-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_1over2 : Css.Style
bottom_1over2 =
    Css.property "bottom" "50%"


{-| The tailwind class `bottom-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_1over3 : Css.Style
bottom_1over3 =
    Css.property "bottom" "33.333333%"


{-| The tailwind class `bottom-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_1over4 : Css.Style
bottom_1over4 =
    Css.property "bottom" "25%"


{-| The tailwind class `bottom-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_2 : Css.Style
bottom_2 =
    Css.property "bottom" "0.5rem"


{-| The tailwind class `bottom-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_20 : Css.Style
bottom_20 =
    Css.property "bottom" "5rem"


{-| The tailwind class `bottom-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_24 : Css.Style
bottom_24 =
    Css.property "bottom" "6rem"


{-| The tailwind class `bottom-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_28 : Css.Style
bottom_28 =
    Css.property "bottom" "7rem"


{-| The tailwind class `bottom-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_2_dot_5 : Css.Style
bottom_2_dot_5 =
    Css.property "bottom" "0.625rem"


{-| The tailwind class `bottom-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_2over3 : Css.Style
bottom_2over3 =
    Css.property "bottom" "66.666667%"


{-| The tailwind class `bottom-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_2over4 : Css.Style
bottom_2over4 =
    Css.property "bottom" "50%"


{-| The tailwind class `bottom-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_3 : Css.Style
bottom_3 =
    Css.property "bottom" "0.75rem"


{-| The tailwind class `bottom-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_32 : Css.Style
bottom_32 =
    Css.property "bottom" "8rem"


{-| The tailwind class `bottom-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_36 : Css.Style
bottom_36 =
    Css.property "bottom" "9rem"


{-| The tailwind class `bottom-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_3_dot_5 : Css.Style
bottom_3_dot_5 =
    Css.property "bottom" "0.875rem"


{-| The tailwind class `bottom-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_3over4 : Css.Style
bottom_3over4 =
    Css.property "bottom" "75%"


{-| The tailwind class `bottom-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_4 : Css.Style
bottom_4 =
    Css.property "bottom" "1rem"


{-| The tailwind class `bottom-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_40 : Css.Style
bottom_40 =
    Css.property "bottom" "10rem"


{-| The tailwind class `bottom-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_44 : Css.Style
bottom_44 =
    Css.property "bottom" "11rem"


{-| The tailwind class `bottom-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_48 : Css.Style
bottom_48 =
    Css.property "bottom" "12rem"


{-| The tailwind class `bottom-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_5 : Css.Style
bottom_5 =
    Css.property "bottom" "1.25rem"


{-| The tailwind class `bottom-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_52 : Css.Style
bottom_52 =
    Css.property "bottom" "13rem"


{-| The tailwind class `bottom-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_56 : Css.Style
bottom_56 =
    Css.property "bottom" "14rem"


{-| The tailwind class `bottom-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_6 : Css.Style
bottom_6 =
    Css.property "bottom" "1.5rem"


{-| The tailwind class `bottom-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_60 : Css.Style
bottom_60 =
    Css.property "bottom" "15rem"


{-| The tailwind class `bottom-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_64 : Css.Style
bottom_64 =
    Css.property "bottom" "16rem"


{-| The tailwind class `bottom-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_7 : Css.Style
bottom_7 =
    Css.property "bottom" "1.75rem"


{-| The tailwind class `bottom-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_72 : Css.Style
bottom_72 =
    Css.property "bottom" "18rem"


{-| The tailwind class `bottom-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_8 : Css.Style
bottom_8 =
    Css.property "bottom" "2rem"


{-| The tailwind class `bottom-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_80 : Css.Style
bottom_80 =
    Css.property "bottom" "20rem"


{-| The tailwind class `bottom-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_9 : Css.Style
bottom_9 =
    Css.property "bottom" "2.25rem"


{-| The tailwind class `bottom-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_96 : Css.Style
bottom_96 =
    Css.property "bottom" "24rem"


{-| The tailwind class `bottom-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_auto : Css.Style
bottom_auto =
    Css.property "bottom" "auto"


{-| The tailwind class `bottom-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_full : Css.Style
bottom_full =
    Css.property "bottom" "100%"


{-| The tailwind class `bottom-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

bottom_px : Css.Style
bottom_px =
    Css.property "bottom" "1px"


{-| The tailwind class `box-border`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

box_border : Css.Style
box_border =
    Css.property "box-sizing" "border-box"


{-| The tailwind class `box-content`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

box_content : Css.Style
box_content =
    Css.property "box-sizing" "content-box"


{-| The tailwind class `break-all`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

break_all : Css.Style
break_all =
    Css.property "word-break" "break-all"


{-| The tailwind class `break-normal`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

break_normal : Css.Style
break_normal =
    Css.batch
        [ Css.property "overflow-wrap" "normal"
        , Css.property "word-break" "normal"
        ]


{-| The tailwind class `break-words`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

break_words : Css.Style
break_words =
    Css.property "overflow-wrap" "break-word"


{-| The tailwind class `brightness-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_0 : Css.Style
brightness_0 =
    Css.property "--tw-brightness" "brightness(0)"


{-| The tailwind class `brightness-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_100 : Css.Style
brightness_100 =
    Css.property "--tw-brightness" "brightness(1)"


{-| The tailwind class `brightness-105`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_105 : Css.Style
brightness_105 =
    Css.property "--tw-brightness" "brightness(1.05)"


{-| The tailwind class `brightness-110`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_110 : Css.Style
brightness_110 =
    Css.property "--tw-brightness" "brightness(1.1)"


{-| The tailwind class `brightness-125`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_125 : Css.Style
brightness_125 =
    Css.property "--tw-brightness" "brightness(1.25)"


{-| The tailwind class `brightness-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_150 : Css.Style
brightness_150 =
    Css.property "--tw-brightness" "brightness(1.5)"


{-| The tailwind class `brightness-200`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_200 : Css.Style
brightness_200 =
    Css.property "--tw-brightness" "brightness(2)"


{-| The tailwind class `brightness-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_50 : Css.Style
brightness_50 =
    Css.property "--tw-brightness" "brightness(.5)"


{-| The tailwind class `brightness-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_75 : Css.Style
brightness_75 =
    Css.property "--tw-brightness" "brightness(.75)"


{-| The tailwind class `brightness-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_90 : Css.Style
brightness_90 =
    Css.property "--tw-brightness" "brightness(.9)"


{-| The tailwind class `brightness-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

brightness_95 : Css.Style
brightness_95 =
    Css.property "--tw-brightness" "brightness(.95)"


{-| The tailwind class `capitalize`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

capitalize : Css.Style
capitalize =
    Css.property "text-transform" "capitalize"


{-| The tailwind class `clear-both`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

clear_both : Css.Style
clear_both =
    Css.property "clear" "both"


{-| The tailwind class `clear-left`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

clear_left : Css.Style
clear_left =
    Css.property "clear" "left"


{-| The tailwind class `clear-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

clear_none : Css.Style
clear_none =
    Css.property "clear" "none"


{-| The tailwind class `clear-right`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

clear_right : Css.Style
clear_right =
    Css.property "clear" "right"


{-| The tailwind class `col-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_auto : Css.Style
col_auto =
    Css.property "grid-column" "auto"


{-| The tailwind class `col-end-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_1 : Css.Style
col_end_1 =
    Css.property "grid-column-end" "1"


{-| The tailwind class `col-end-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_10 : Css.Style
col_end_10 =
    Css.property "grid-column-end" "10"


{-| The tailwind class `col-end-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_11 : Css.Style
col_end_11 =
    Css.property "grid-column-end" "11"


{-| The tailwind class `col-end-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_12 : Css.Style
col_end_12 =
    Css.property "grid-column-end" "12"


{-| The tailwind class `col-end-13`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_13 : Css.Style
col_end_13 =
    Css.property "grid-column-end" "13"


{-| The tailwind class `col-end-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_2 : Css.Style
col_end_2 =
    Css.property "grid-column-end" "2"


{-| The tailwind class `col-end-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_3 : Css.Style
col_end_3 =
    Css.property "grid-column-end" "3"


{-| The tailwind class `col-end-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_4 : Css.Style
col_end_4 =
    Css.property "grid-column-end" "4"


{-| The tailwind class `col-end-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_5 : Css.Style
col_end_5 =
    Css.property "grid-column-end" "5"


{-| The tailwind class `col-end-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_6 : Css.Style
col_end_6 =
    Css.property "grid-column-end" "6"


{-| The tailwind class `col-end-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_7 : Css.Style
col_end_7 =
    Css.property "grid-column-end" "7"


{-| The tailwind class `col-end-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_8 : Css.Style
col_end_8 =
    Css.property "grid-column-end" "8"


{-| The tailwind class `col-end-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_9 : Css.Style
col_end_9 =
    Css.property "grid-column-end" "9"


{-| The tailwind class `col-end-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_end_auto : Css.Style
col_end_auto =
    Css.property "grid-column-end" "auto"


{-| The tailwind class `col-span-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_1 : Css.Style
col_span_1 =
    Css.property "grid-column" "span 1 / span 1"


{-| The tailwind class `col-span-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_10 : Css.Style
col_span_10 =
    Css.property "grid-column" "span 10 / span 10"


{-| The tailwind class `col-span-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_11 : Css.Style
col_span_11 =
    Css.property "grid-column" "span 11 / span 11"


{-| The tailwind class `col-span-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_12 : Css.Style
col_span_12 =
    Css.property "grid-column" "span 12 / span 12"


{-| The tailwind class `col-span-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_2 : Css.Style
col_span_2 =
    Css.property "grid-column" "span 2 / span 2"


{-| The tailwind class `col-span-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_3 : Css.Style
col_span_3 =
    Css.property "grid-column" "span 3 / span 3"


{-| The tailwind class `col-span-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_4 : Css.Style
col_span_4 =
    Css.property "grid-column" "span 4 / span 4"


{-| The tailwind class `col-span-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_5 : Css.Style
col_span_5 =
    Css.property "grid-column" "span 5 / span 5"


{-| The tailwind class `col-span-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_6 : Css.Style
col_span_6 =
    Css.property "grid-column" "span 6 / span 6"


{-| The tailwind class `col-span-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_7 : Css.Style
col_span_7 =
    Css.property "grid-column" "span 7 / span 7"


{-| The tailwind class `col-span-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_8 : Css.Style
col_span_8 =
    Css.property "grid-column" "span 8 / span 8"


{-| The tailwind class `col-span-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_9 : Css.Style
col_span_9 =
    Css.property "grid-column" "span 9 / span 9"


{-| The tailwind class `col-span-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_span_full : Css.Style
col_span_full =
    Css.property "grid-column" "1 / -1"


{-| The tailwind class `col-start-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_1 : Css.Style
col_start_1 =
    Css.property "grid-column-start" "1"


{-| The tailwind class `col-start-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_10 : Css.Style
col_start_10 =
    Css.property "grid-column-start" "10"


{-| The tailwind class `col-start-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_11 : Css.Style
col_start_11 =
    Css.property "grid-column-start" "11"


{-| The tailwind class `col-start-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_12 : Css.Style
col_start_12 =
    Css.property "grid-column-start" "12"


{-| The tailwind class `col-start-13`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_13 : Css.Style
col_start_13 =
    Css.property "grid-column-start" "13"


{-| The tailwind class `col-start-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_2 : Css.Style
col_start_2 =
    Css.property "grid-column-start" "2"


{-| The tailwind class `col-start-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_3 : Css.Style
col_start_3 =
    Css.property "grid-column-start" "3"


{-| The tailwind class `col-start-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_4 : Css.Style
col_start_4 =
    Css.property "grid-column-start" "4"


{-| The tailwind class `col-start-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_5 : Css.Style
col_start_5 =
    Css.property "grid-column-start" "5"


{-| The tailwind class `col-start-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_6 : Css.Style
col_start_6 =
    Css.property "grid-column-start" "6"


{-| The tailwind class `col-start-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_7 : Css.Style
col_start_7 =
    Css.property "grid-column-start" "7"


{-| The tailwind class `col-start-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_8 : Css.Style
col_start_8 =
    Css.property "grid-column-start" "8"


{-| The tailwind class `col-start-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_9 : Css.Style
col_start_9 =
    Css.property "grid-column-start" "9"


{-| The tailwind class `col-start-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

col_start_auto : Css.Style
col_start_auto =
    Css.property "grid-column-start" "auto"


{-| The tailwind class `container`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

container : Css.Style
container =
    Css.batch
        [ Css.property "width" "100%"
        , Css.Media.withMediaQuery [ "(min-width: 1536px)" ]
            [ Css.property "max-width" "1536px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 1280px)" ]
            [ Css.property "max-width" "1280px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 1024px)" ]
            [ Css.property "max-width" "1024px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 768px)" ]
            [ Css.property "max-width" "768px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 640px)" ]
            [ Css.property "max-width" "640px"
            ]
        ]


{-| The tailwind class `content-around`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

content_around : Css.Style
content_around =
    Css.property "align-content" "space-around"


{-| The tailwind class `content-between`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

content_between : Css.Style
content_between =
    Css.property "align-content" "space-between"


{-| The tailwind class `content-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

content_center : Css.Style
content_center =
    Css.property "align-content" "center"


{-| The tailwind class `content-end`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

content_end : Css.Style
content_end =
    Css.property "align-content" "flex-end"


{-| The tailwind class `content-evenly`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

content_evenly : Css.Style
content_evenly =
    Css.property "align-content" "space-evenly"


{-| The tailwind class `content-start`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

content_start : Css.Style
content_start =
    Css.property "align-content" "flex-start"


{-| The tailwind class `contents`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

contents : Css.Style
contents =
    Css.property "display" "contents"


{-| The tailwind class `contrast-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

contrast_0 : Css.Style
contrast_0 =
    Css.property "--tw-contrast" "contrast(0)"


{-| The tailwind class `contrast-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

contrast_100 : Css.Style
contrast_100 =
    Css.property "--tw-contrast" "contrast(1)"


{-| The tailwind class `contrast-125`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

contrast_125 : Css.Style
contrast_125 =
    Css.property "--tw-contrast" "contrast(1.25)"


{-| The tailwind class `contrast-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

contrast_150 : Css.Style
contrast_150 =
    Css.property "--tw-contrast" "contrast(1.5)"


{-| The tailwind class `contrast-200`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

contrast_200 : Css.Style
contrast_200 =
    Css.property "--tw-contrast" "contrast(2)"


{-| The tailwind class `contrast-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

contrast_50 : Css.Style
contrast_50 =
    Css.property "--tw-contrast" "contrast(.5)"


{-| The tailwind class `contrast-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

contrast_75 : Css.Style
contrast_75 =
    Css.property "--tw-contrast" "contrast(.75)"


{-| The tailwind class `cursor-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

cursor_auto : Css.Style
cursor_auto =
    Css.property "cursor" "auto"


{-| The tailwind class `cursor-default`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

cursor_default : Css.Style
cursor_default =
    Css.property "cursor" "default"


{-| The tailwind class `cursor-help`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

cursor_help : Css.Style
cursor_help =
    Css.property "cursor" "help"


{-| The tailwind class `cursor-move`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

cursor_move : Css.Style
cursor_move =
    Css.property "cursor" "move"


{-| The tailwind class `cursor-not-allowed`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

cursor_not_allowed : Css.Style
cursor_not_allowed =
    Css.property "cursor" "not-allowed"


{-| The tailwind class `cursor-pointer`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

cursor_pointer : Css.Style
cursor_pointer =
    Css.property "cursor" "pointer"


{-| The tailwind class `cursor-text`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

cursor_text : Css.Style
cursor_text =
    Css.property "cursor" "text"


{-| The tailwind class `cursor-wait`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

cursor_wait : Css.Style
cursor_wait =
    Css.property "cursor" "wait"


{-| The tailwind class `decoration-clone`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

decoration_clone : Css.Style
decoration_clone =
    Css.batch
        [ Css.property "-webkit-box-decoration-break" "clone"
        , Css.property "box-decoration-break" "clone"
        ]


{-| The tailwind class `decoration-slice`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

decoration_slice : Css.Style
decoration_slice =
    Css.batch
        [ Css.property "-webkit-box-decoration-break" "slice"
        , Css.property "box-decoration-break" "slice"
        ]


{-| The tailwind class `delay-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

delay_100 : Css.Style
delay_100 =
    Css.property "transition-delay" "100ms"


{-| The tailwind class `delay-1000`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

delay_1000 : Css.Style
delay_1000 =
    Css.property "transition-delay" "1000ms"


{-| The tailwind class `delay-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

delay_150 : Css.Style
delay_150 =
    Css.property "transition-delay" "150ms"


{-| The tailwind class `delay-200`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

delay_200 : Css.Style
delay_200 =
    Css.property "transition-delay" "200ms"


{-| The tailwind class `delay-300`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

delay_300 : Css.Style
delay_300 =
    Css.property "transition-delay" "300ms"


{-| The tailwind class `delay-500`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

delay_500 : Css.Style
delay_500 =
    Css.property "transition-delay" "500ms"


{-| The tailwind class `delay-700`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

delay_700 : Css.Style
delay_700 =
    Css.property "transition-delay" "700ms"


{-| The tailwind class `delay-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

delay_75 : Css.Style
delay_75 =
    Css.property "transition-delay" "75ms"


{-| The tailwind class `diagonal-fractions`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

diagonal_fractions : Css.Style
diagonal_fractions =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-numeric-fraction" "diagonal-fractions"
        ]


{-| The tailwind class `divide-dashed`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_dashed : Css.Style
divide_dashed =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "dashed"
                ]
            ]
        ]


{-| The tailwind class `divide-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_destruct : Css.Style
divide_destruct =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(142, 74, 73, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| The tailwind class `divide-dotted`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_dotted : Css.Style
divide_dotted =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "dotted"
                ]
            ]
        ]


{-| The tailwind class `divide-double`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_double : Css.Style
divide_double =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "double"
                ]
            ]
        ]


{-| The tailwind class `divide-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_exclaim : Css.Style
divide_exclaim =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(224, 144, 93, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| The tailwind class `divide-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_none : Css.Style
divide_none =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "none"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_0 : Css.Style
divide_opacity_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_10 : Css.Style
divide_opacity_10 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.1"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_100 : Css.Style
divide_opacity_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_20 : Css.Style
divide_opacity_20 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.2"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-25`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_25 : Css.Style
divide_opacity_25 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.25"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_30 : Css.Style
divide_opacity_30 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.3"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_40 : Css.Style
divide_opacity_40 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.4"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_5 : Css.Style
divide_opacity_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.05"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_50 : Css.Style
divide_opacity_50 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.5"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_60 : Css.Style
divide_opacity_60 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.6"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-70`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_70 : Css.Style
divide_opacity_70 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.7"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_75 : Css.Style
divide_opacity_75 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.75"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_80 : Css.Style
divide_opacity_80 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.8"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_90 : Css.Style
divide_opacity_90 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.9"
                ]
            ]
        ]


{-| The tailwind class `divide-opacity-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_opacity_95 : Css.Style
divide_opacity_95 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.95"
                ]
            ]
        ]


{-| The tailwind class `divide-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_primary : Css.Style
divide_primary =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(150, 89, 88, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| The tailwind class `divide-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_secondary : Css.Style
divide_secondary =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-color" "#dfeee3ff"
                ]
            ]
        ]


{-| The tailwind class `divide-solid`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_solid : Css.Style
divide_solid =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "solid"
                ]
            ]
        ]


{-| The tailwind class `divide-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_success : Css.Style
divide_success =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(78, 208, 182, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| The tailwind class `divide-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_tertiary : Css.Style
divide_tertiary =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(161, 159, 187, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| The tailwind class `divide-x`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_x : Css.Style
divide_x =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(1px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(1px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `divide-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_x_0 : Css.Style
divide_x_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(0px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(0px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `divide-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_x_2 : Css.Style
divide_x_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(2px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(2px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `divide-x-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_x_4 : Css.Style
divide_x_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(4px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(4px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `divide-x-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_x_8 : Css.Style
divide_x_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(8px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(8px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `divide-x-reverse`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_x_reverse : Css.Style
divide_x_reverse =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "1"
                ]
            ]
        ]


{-| The tailwind class `divide-y`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_y : Css.Style
divide_y =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(1px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(1px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `divide-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_y_0 : Css.Style
divide_y_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(0px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(0px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `divide-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_y_2 : Css.Style
divide_y_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(2px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(2px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `divide-y-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_y_4 : Css.Style
divide_y_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(4px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(4px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `divide-y-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_y_8 : Css.Style
divide_y_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(8px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(8px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `divide-y-reverse`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

divide_y_reverse : Css.Style
divide_y_reverse =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "1"
                ]
            ]
        ]


{-| The tailwind class `drop-shadow`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

drop_shadow : Css.Style
drop_shadow =
    Css.property "--tw-drop-shadow" "drop-shadow(0 1px 2px rgba(0, 0, 0, 0.1)) drop-shadow(0 1px 1px rgba(0, 0, 0, 0.06))"


{-| The tailwind class `drop-shadow-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

drop_shadow_2xl : Css.Style
drop_shadow_2xl =
    Css.property "--tw-drop-shadow" "drop-shadow(0 25px 25px rgba(0, 0, 0, 0.15))"


{-| The tailwind class `drop-shadow-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

drop_shadow_lg : Css.Style
drop_shadow_lg =
    Css.property "--tw-drop-shadow" "drop-shadow(0 10px 8px rgba(0, 0, 0, 0.04)) drop-shadow(0 4px 3px rgba(0, 0, 0, 0.1))"


{-| The tailwind class `drop-shadow-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

drop_shadow_md : Css.Style
drop_shadow_md =
    Css.property "--tw-drop-shadow" "drop-shadow(0 4px 3px rgba(0, 0, 0, 0.07)) drop-shadow(0 2px 2px rgba(0, 0, 0, 0.06))"


{-| The tailwind class `drop-shadow-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

drop_shadow_none : Css.Style
drop_shadow_none =
    Css.property "--tw-drop-shadow" "drop-shadow(0 0 #0000)"


{-| The tailwind class `drop-shadow-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

drop_shadow_sm : Css.Style
drop_shadow_sm =
    Css.property "--tw-drop-shadow" "drop-shadow(0 1px 1px rgba(0,0,0,0.05))"


{-| The tailwind class `drop-shadow-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

drop_shadow_xl : Css.Style
drop_shadow_xl =
    Css.property "--tw-drop-shadow" "drop-shadow(0 20px 13px rgba(0, 0, 0, 0.03)) drop-shadow(0 8px 5px rgba(0, 0, 0, 0.08))"


{-| The tailwind class `duration-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

duration_100 : Css.Style
duration_100 =
    Css.property "transition-duration" "100ms"


{-| The tailwind class `duration-1000`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

duration_1000 : Css.Style
duration_1000 =
    Css.property "transition-duration" "1000ms"


{-| The tailwind class `duration-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

duration_150 : Css.Style
duration_150 =
    Css.property "transition-duration" "150ms"


{-| The tailwind class `duration-200`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

duration_200 : Css.Style
duration_200 =
    Css.property "transition-duration" "200ms"


{-| The tailwind class `duration-300`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

duration_300 : Css.Style
duration_300 =
    Css.property "transition-duration" "300ms"


{-| The tailwind class `duration-500`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

duration_500 : Css.Style
duration_500 =
    Css.property "transition-duration" "500ms"


{-| The tailwind class `duration-700`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

duration_700 : Css.Style
duration_700 =
    Css.property "transition-duration" "700ms"


{-| The tailwind class `duration-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

duration_75 : Css.Style
duration_75 =
    Css.property "transition-duration" "75ms"


{-| The tailwind class `ease-in`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ease_in : Css.Style
ease_in =
    Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 1, 1)"


{-| The tailwind class `ease-in-out`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ease_in_out : Css.Style
ease_in_out =
    Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 0.2, 1)"


{-| The tailwind class `ease-linear`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ease_linear : Css.Style
ease_linear =
    Css.property "transition-timing-function" "linear"


{-| The tailwind class `ease-out`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ease_out : Css.Style
ease_out =
    Css.property "transition-timing-function" "cubic-bezier(0, 0, 0.2, 1)"


{-| The tailwind class `fill-current`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

fill_current : Css.Style
fill_current =
    Css.property "fill" "currentColor"


{-| The tailwind class `filter`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

filter : Css.Style
filter =
    Css.batch
        [ Css.property "--tw-blur" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-brightness" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-contrast" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-grayscale" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-hue-rotate" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-invert" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-saturate" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-sepia" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-drop-shadow" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| The tailwind class `filter-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

filter_none : Css.Style
filter_none =
    Css.property "filter" "none"


{-| The tailwind class `fixed`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

fixed : Css.Style
fixed =
    Css.property "position" "fixed"


{-| The tailwind class `flex`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex : Css.Style
flex =
    Css.property "display" "flex"


{-| The tailwind class `flex-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_1 : Css.Style
flex_1 =
    Css.property "flex" "1 1 0%"


{-| The tailwind class `flex-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_auto : Css.Style
flex_auto =
    Css.property "flex" "1 1 auto"


{-| The tailwind class `flex-col`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_col : Css.Style
flex_col =
    Css.property "flex-direction" "column"


{-| The tailwind class `flex-col-reverse`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_col_reverse : Css.Style
flex_col_reverse =
    Css.property "flex-direction" "column-reverse"


{-| The tailwind class `flex-grow`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_grow : Css.Style
flex_grow =
    Css.property "flex-grow" "1"


{-| The tailwind class `flex-grow-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_grow_0 : Css.Style
flex_grow_0 =
    Css.property "flex-grow" "0"


{-| The tailwind class `flex-initial`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_initial : Css.Style
flex_initial =
    Css.property "flex" "0 1 auto"


{-| The tailwind class `flex-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_none : Css.Style
flex_none =
    Css.property "flex" "none"


{-| The tailwind class `flex-nowrap`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_nowrap : Css.Style
flex_nowrap =
    Css.property "flex-wrap" "nowrap"


{-| The tailwind class `flex-row`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_row : Css.Style
flex_row =
    Css.property "flex-direction" "row"


{-| The tailwind class `flex-row-reverse`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_row_reverse : Css.Style
flex_row_reverse =
    Css.property "flex-direction" "row-reverse"


{-| The tailwind class `flex-shrink`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_shrink : Css.Style
flex_shrink =
    Css.property "flex-shrink" "1"


{-| The tailwind class `flex-shrink-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_shrink_0 : Css.Style
flex_shrink_0 =
    Css.property "flex-shrink" "0"


{-| The tailwind class `flex-wrap`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_wrap : Css.Style
flex_wrap =
    Css.property "flex-wrap" "wrap"


{-| The tailwind class `flex-wrap-reverse`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flex_wrap_reverse : Css.Style
flex_wrap_reverse =
    Css.property "flex-wrap" "wrap-reverse"


{-| The tailwind class `float-left`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

float_left : Css.Style
float_left =
    Css.property "float" "left"


{-| The tailwind class `float-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

float_none : Css.Style
float_none =
    Css.property "float" "none"


{-| The tailwind class `float-right`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

float_right : Css.Style
float_right =
    Css.property "float" "right"


{-| The tailwind class `flow-root`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

flow_root : Css.Style
flow_root =
    Css.property "display" "flow-root"


{-| The tailwind class `font-black`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_black : Css.Style
font_black =
    Css.property "font-weight" "900"


{-| The tailwind class `font-bold`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_bold : Css.Style
font_bold =
    Css.property "font-weight" "700"


{-| The tailwind class `font-extrabold`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_extrabold : Css.Style
font_extrabold =
    Css.property "font-weight" "800"


{-| The tailwind class `font-extralight`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_extralight : Css.Style
font_extralight =
    Css.property "font-weight" "200"


{-| The tailwind class `font-light`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_light : Css.Style
font_light =
    Css.property "font-weight" "300"


{-| The tailwind class `font-medium`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_medium : Css.Style
font_medium =
    Css.property "font-weight" "500"


{-| The tailwind class `font-normal`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_normal : Css.Style
font_normal =
    Css.property "font-weight" "400"


{-| The tailwind class `font-sans`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_sans : Css.Style
font_sans =
    Css.property "font-family" "'Space Grotesk', sans-serif"


{-| The tailwind class `font-semibold`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_semibold : Css.Style
font_semibold =
    Css.property "font-weight" "600"


{-| The tailwind class `font-thin`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

font_thin : Css.Style
font_thin =
    Css.property "font-weight" "100"


{-| The tailwind class `form-checkbox`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

form_checkbox : Css.Style
form_checkbox =
    Css.batch
        [ Css.property "-webkit-appearance" "none"
        , Css.property "-moz-appearance" "none"
        , Css.property "appearance" "none"
        , Css.property "padding" "0"
        , Css.property "-webkit-print-color-adjust" "exact"
        , Css.property "color-adjust" "exact"
        , Css.property "display" "inline-block"
        , Css.property "vertical-align" "middle"
        , Css.property "background-origin" "border-box"
        , Css.property "-webkit-user-select" "none"
        , Css.property "-moz-user-select" "none"
        , Css.property "user-select" "none"
        , Css.property "flex-shrink" "0"
        , Css.property "height" "1rem"
        , Css.property "width" "1rem"
        , Css.property "color" "#2563eb"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "border-radius" "0px"
        , Css.pseudoClass "indeterminate"
            [ Css.pseudoClass "focus"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "indeterminate"
            [ Css.pseudoClass "hover"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "indeterminate"
            [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3e%3cpath stroke='white' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3e%3c/svg%3e\")"
            , Css.property "border-color" "transparent"
            , Css.property "background-color" "currentColor"
            , Css.property "background-size" "100% 100%"
            , Css.property "background-position" "center"
            , Css.property "background-repeat" "no-repeat"
            ]
        , Css.pseudoClass "checked"
            [ Css.pseudoClass "focus"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "checked"
            [ Css.pseudoClass "hover"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "checked"
            [ Css.property "border-color" "transparent"
            , Css.property "background-color" "currentColor"
            , Css.property "background-size" "100% 100%"
            , Css.property "background-position" "center"
            , Css.property "background-repeat" "no-repeat"
            , Css.property "background-image" "url(\"data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e\")"
            ]
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "2px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            ]
        ]


{-| The tailwind class `form-input`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

form_input : Css.Style
form_input =
    Css.batch
        [ Css.property "-webkit-appearance" "none"
        , Css.property "-moz-appearance" "none"
        , Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.pseudoElement "-webkit-date-and-time-value"
            [ Css.property "min-height" "1.5em"
            ]
        , Css.pseudoElement "-webkit-datetime-edit-fields-wrapper"
            [ Css.property "padding" "0"
            ]
        , Css.pseudoElement "placeholder"
            [ Css.property "color" "#6b7280"
            , Css.property "opacity" "1"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "color" "#6b7280"
            , Css.property "opacity" "1"
            ]
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "0px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            , Css.property "border-color" "#2563eb"
            ]
        ]


{-| The tailwind class `form-multiselect`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

form_multiselect : Css.Style
form_multiselect =
    Css.batch
        [ Css.property "-webkit-appearance" "none"
        , Css.property "-moz-appearance" "none"
        , Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "0px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            , Css.property "border-color" "#2563eb"
            ]
        ]


{-| The tailwind class `form-radio`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

form_radio : Css.Style
form_radio =
    Css.batch
        [ Css.property "-webkit-appearance" "none"
        , Css.property "-moz-appearance" "none"
        , Css.property "appearance" "none"
        , Css.property "padding" "0"
        , Css.property "-webkit-print-color-adjust" "exact"
        , Css.property "color-adjust" "exact"
        , Css.property "display" "inline-block"
        , Css.property "vertical-align" "middle"
        , Css.property "background-origin" "border-box"
        , Css.property "-webkit-user-select" "none"
        , Css.property "-moz-user-select" "none"
        , Css.property "user-select" "none"
        , Css.property "flex-shrink" "0"
        , Css.property "height" "1rem"
        , Css.property "width" "1rem"
        , Css.property "color" "#2563eb"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "border-radius" "100%"
        , Css.pseudoClass "checked"
            [ Css.pseudoClass "focus"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "checked"
            [ Css.pseudoClass "hover"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "checked"
            [ Css.property "border-color" "transparent"
            , Css.property "background-color" "currentColor"
            , Css.property "background-size" "100% 100%"
            , Css.property "background-position" "center"
            , Css.property "background-repeat" "no-repeat"
            , Css.property "background-image" "url(\"data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3ccircle cx='8' cy='8' r='3'/%3e%3c/svg%3e\")"
            ]
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "2px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            ]
        ]


{-| The tailwind class `form-select`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

form_select : Css.Style
form_select =
    Css.batch
        [ Css.property "-webkit-appearance" "none"
        , Css.property "-moz-appearance" "none"
        , Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "background-image" "url(\"data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e\")"
        , Css.property "background-position" "right 0.5rem center"
        , Css.property "background-repeat" "no-repeat"
        , Css.property "background-size" "1.5em 1.5em"
        , Css.property "padding-right" "2.5rem"
        , Css.property "-webkit-print-color-adjust" "exact"
        , Css.property "color-adjust" "exact"
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "0px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            , Css.property "border-color" "#2563eb"
            ]
        ]


{-| The tailwind class `form-textarea`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

form_textarea : Css.Style
form_textarea =
    Css.batch
        [ Css.property "-webkit-appearance" "none"
        , Css.property "-moz-appearance" "none"
        , Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.pseudoElement "placeholder"
            [ Css.property "color" "#6b7280"
            , Css.property "opacity" "1"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "color" "#6b7280"
            , Css.property "opacity" "1"
            ]
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "0px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            , Css.property "border-color" "#2563eb"
            ]
        ]


{-| The tailwind class `from-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

from_destruct : Css.Style
from_destruct =
    Css.batch
        [ Css.property "--tw-gradient-from" "#8E4A49"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(142, 74, 73, 0))"
        ]


{-| The tailwind class `from-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

from_exclaim : Css.Style
from_exclaim =
    Css.batch
        [ Css.property "--tw-gradient-from" "#E0905D"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(224, 144, 93, 0))"
        ]


{-| The tailwind class `from-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

from_primary : Css.Style
from_primary =
    Css.batch
        [ Css.property "--tw-gradient-from" "#965958"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(150, 89, 88, 0))"
        ]


{-| The tailwind class `from-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

from_secondary : Css.Style
from_secondary =
    Css.batch
        [ Css.property "--tw-gradient-from" "#dfeee3ff"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(223, 238, 227, 0))"
        ]


{-| The tailwind class `from-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

from_success : Css.Style
from_success =
    Css.batch
        [ Css.property "--tw-gradient-from" "#4ED0B6"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(78, 208, 182, 0))"
        ]


{-| The tailwind class `from-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

from_tertiary : Css.Style
from_tertiary =
    Css.batch
        [ Css.property "--tw-gradient-from" "#A19FBB"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(161, 159, 187, 0))"
        ]


{-| The tailwind class `gap-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_0 : Css.Style
gap_0 =
    Css.property "gap" "0px"


{-| The tailwind class `gap-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_0_dot_5 : Css.Style
gap_0_dot_5 =
    Css.property "gap" "0.125rem"


{-| The tailwind class `gap-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_1 : Css.Style
gap_1 =
    Css.property "gap" "0.25rem"


{-| The tailwind class `gap-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_10 : Css.Style
gap_10 =
    Css.property "gap" "2.5rem"


{-| The tailwind class `gap-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_11 : Css.Style
gap_11 =
    Css.property "gap" "2.75rem"


{-| The tailwind class `gap-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_12 : Css.Style
gap_12 =
    Css.property "gap" "3rem"


{-| The tailwind class `gap-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_14 : Css.Style
gap_14 =
    Css.property "gap" "3.5rem"


{-| The tailwind class `gap-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_16 : Css.Style
gap_16 =
    Css.property "gap" "4rem"


{-| The tailwind class `gap-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_1_dot_5 : Css.Style
gap_1_dot_5 =
    Css.property "gap" "0.375rem"


{-| The tailwind class `gap-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_2 : Css.Style
gap_2 =
    Css.property "gap" "0.5rem"


{-| The tailwind class `gap-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_20 : Css.Style
gap_20 =
    Css.property "gap" "5rem"


{-| The tailwind class `gap-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_24 : Css.Style
gap_24 =
    Css.property "gap" "6rem"


{-| The tailwind class `gap-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_28 : Css.Style
gap_28 =
    Css.property "gap" "7rem"


{-| The tailwind class `gap-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_2_dot_5 : Css.Style
gap_2_dot_5 =
    Css.property "gap" "0.625rem"


{-| The tailwind class `gap-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_3 : Css.Style
gap_3 =
    Css.property "gap" "0.75rem"


{-| The tailwind class `gap-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_32 : Css.Style
gap_32 =
    Css.property "gap" "8rem"


{-| The tailwind class `gap-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_36 : Css.Style
gap_36 =
    Css.property "gap" "9rem"


{-| The tailwind class `gap-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_3_dot_5 : Css.Style
gap_3_dot_5 =
    Css.property "gap" "0.875rem"


{-| The tailwind class `gap-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_4 : Css.Style
gap_4 =
    Css.property "gap" "1rem"


{-| The tailwind class `gap-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_40 : Css.Style
gap_40 =
    Css.property "gap" "10rem"


{-| The tailwind class `gap-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_44 : Css.Style
gap_44 =
    Css.property "gap" "11rem"


{-| The tailwind class `gap-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_48 : Css.Style
gap_48 =
    Css.property "gap" "12rem"


{-| The tailwind class `gap-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_5 : Css.Style
gap_5 =
    Css.property "gap" "1.25rem"


{-| The tailwind class `gap-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_52 : Css.Style
gap_52 =
    Css.property "gap" "13rem"


{-| The tailwind class `gap-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_56 : Css.Style
gap_56 =
    Css.property "gap" "14rem"


{-| The tailwind class `gap-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_6 : Css.Style
gap_6 =
    Css.property "gap" "1.5rem"


{-| The tailwind class `gap-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_60 : Css.Style
gap_60 =
    Css.property "gap" "15rem"


{-| The tailwind class `gap-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_64 : Css.Style
gap_64 =
    Css.property "gap" "16rem"


{-| The tailwind class `gap-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_7 : Css.Style
gap_7 =
    Css.property "gap" "1.75rem"


{-| The tailwind class `gap-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_72 : Css.Style
gap_72 =
    Css.property "gap" "18rem"


{-| The tailwind class `gap-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_8 : Css.Style
gap_8 =
    Css.property "gap" "2rem"


{-| The tailwind class `gap-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_80 : Css.Style
gap_80 =
    Css.property "gap" "20rem"


{-| The tailwind class `gap-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_9 : Css.Style
gap_9 =
    Css.property "gap" "2.25rem"


{-| The tailwind class `gap-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_96 : Css.Style
gap_96 =
    Css.property "gap" "24rem"


{-| The tailwind class `gap-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_px : Css.Style
gap_px =
    Css.property "gap" "1px"


{-| The tailwind class `gap-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_0 : Css.Style
gap_x_0 =
    Css.batch
        [ Css.property "-moz-column-gap" "0px"
        , Css.property "column-gap" "0px"
        ]


{-| The tailwind class `gap-x-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_0_dot_5 : Css.Style
gap_x_0_dot_5 =
    Css.batch
        [ Css.property "-moz-column-gap" "0.125rem"
        , Css.property "column-gap" "0.125rem"
        ]


{-| The tailwind class `gap-x-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_1 : Css.Style
gap_x_1 =
    Css.batch
        [ Css.property "-moz-column-gap" "0.25rem"
        , Css.property "column-gap" "0.25rem"
        ]


{-| The tailwind class `gap-x-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_10 : Css.Style
gap_x_10 =
    Css.batch
        [ Css.property "-moz-column-gap" "2.5rem"
        , Css.property "column-gap" "2.5rem"
        ]


{-| The tailwind class `gap-x-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_11 : Css.Style
gap_x_11 =
    Css.batch
        [ Css.property "-moz-column-gap" "2.75rem"
        , Css.property "column-gap" "2.75rem"
        ]


{-| The tailwind class `gap-x-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_12 : Css.Style
gap_x_12 =
    Css.batch
        [ Css.property "-moz-column-gap" "3rem"
        , Css.property "column-gap" "3rem"
        ]


{-| The tailwind class `gap-x-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_14 : Css.Style
gap_x_14 =
    Css.batch
        [ Css.property "-moz-column-gap" "3.5rem"
        , Css.property "column-gap" "3.5rem"
        ]


{-| The tailwind class `gap-x-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_16 : Css.Style
gap_x_16 =
    Css.batch
        [ Css.property "-moz-column-gap" "4rem"
        , Css.property "column-gap" "4rem"
        ]


{-| The tailwind class `gap-x-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_1_dot_5 : Css.Style
gap_x_1_dot_5 =
    Css.batch
        [ Css.property "-moz-column-gap" "0.375rem"
        , Css.property "column-gap" "0.375rem"
        ]


{-| The tailwind class `gap-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_2 : Css.Style
gap_x_2 =
    Css.batch
        [ Css.property "-moz-column-gap" "0.5rem"
        , Css.property "column-gap" "0.5rem"
        ]


{-| The tailwind class `gap-x-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_20 : Css.Style
gap_x_20 =
    Css.batch
        [ Css.property "-moz-column-gap" "5rem"
        , Css.property "column-gap" "5rem"
        ]


{-| The tailwind class `gap-x-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_24 : Css.Style
gap_x_24 =
    Css.batch
        [ Css.property "-moz-column-gap" "6rem"
        , Css.property "column-gap" "6rem"
        ]


{-| The tailwind class `gap-x-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_28 : Css.Style
gap_x_28 =
    Css.batch
        [ Css.property "-moz-column-gap" "7rem"
        , Css.property "column-gap" "7rem"
        ]


{-| The tailwind class `gap-x-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_2_dot_5 : Css.Style
gap_x_2_dot_5 =
    Css.batch
        [ Css.property "-moz-column-gap" "0.625rem"
        , Css.property "column-gap" "0.625rem"
        ]


{-| The tailwind class `gap-x-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_3 : Css.Style
gap_x_3 =
    Css.batch
        [ Css.property "-moz-column-gap" "0.75rem"
        , Css.property "column-gap" "0.75rem"
        ]


{-| The tailwind class `gap-x-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_32 : Css.Style
gap_x_32 =
    Css.batch
        [ Css.property "-moz-column-gap" "8rem"
        , Css.property "column-gap" "8rem"
        ]


{-| The tailwind class `gap-x-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_36 : Css.Style
gap_x_36 =
    Css.batch
        [ Css.property "-moz-column-gap" "9rem"
        , Css.property "column-gap" "9rem"
        ]


{-| The tailwind class `gap-x-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_3_dot_5 : Css.Style
gap_x_3_dot_5 =
    Css.batch
        [ Css.property "-moz-column-gap" "0.875rem"
        , Css.property "column-gap" "0.875rem"
        ]


{-| The tailwind class `gap-x-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_4 : Css.Style
gap_x_4 =
    Css.batch
        [ Css.property "-moz-column-gap" "1rem"
        , Css.property "column-gap" "1rem"
        ]


{-| The tailwind class `gap-x-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_40 : Css.Style
gap_x_40 =
    Css.batch
        [ Css.property "-moz-column-gap" "10rem"
        , Css.property "column-gap" "10rem"
        ]


{-| The tailwind class `gap-x-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_44 : Css.Style
gap_x_44 =
    Css.batch
        [ Css.property "-moz-column-gap" "11rem"
        , Css.property "column-gap" "11rem"
        ]


{-| The tailwind class `gap-x-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_48 : Css.Style
gap_x_48 =
    Css.batch
        [ Css.property "-moz-column-gap" "12rem"
        , Css.property "column-gap" "12rem"
        ]


{-| The tailwind class `gap-x-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_5 : Css.Style
gap_x_5 =
    Css.batch
        [ Css.property "-moz-column-gap" "1.25rem"
        , Css.property "column-gap" "1.25rem"
        ]


{-| The tailwind class `gap-x-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_52 : Css.Style
gap_x_52 =
    Css.batch
        [ Css.property "-moz-column-gap" "13rem"
        , Css.property "column-gap" "13rem"
        ]


{-| The tailwind class `gap-x-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_56 : Css.Style
gap_x_56 =
    Css.batch
        [ Css.property "-moz-column-gap" "14rem"
        , Css.property "column-gap" "14rem"
        ]


{-| The tailwind class `gap-x-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_6 : Css.Style
gap_x_6 =
    Css.batch
        [ Css.property "-moz-column-gap" "1.5rem"
        , Css.property "column-gap" "1.5rem"
        ]


{-| The tailwind class `gap-x-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_60 : Css.Style
gap_x_60 =
    Css.batch
        [ Css.property "-moz-column-gap" "15rem"
        , Css.property "column-gap" "15rem"
        ]


{-| The tailwind class `gap-x-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_64 : Css.Style
gap_x_64 =
    Css.batch
        [ Css.property "-moz-column-gap" "16rem"
        , Css.property "column-gap" "16rem"
        ]


{-| The tailwind class `gap-x-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_7 : Css.Style
gap_x_7 =
    Css.batch
        [ Css.property "-moz-column-gap" "1.75rem"
        , Css.property "column-gap" "1.75rem"
        ]


{-| The tailwind class `gap-x-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_72 : Css.Style
gap_x_72 =
    Css.batch
        [ Css.property "-moz-column-gap" "18rem"
        , Css.property "column-gap" "18rem"
        ]


{-| The tailwind class `gap-x-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_8 : Css.Style
gap_x_8 =
    Css.batch
        [ Css.property "-moz-column-gap" "2rem"
        , Css.property "column-gap" "2rem"
        ]


{-| The tailwind class `gap-x-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_80 : Css.Style
gap_x_80 =
    Css.batch
        [ Css.property "-moz-column-gap" "20rem"
        , Css.property "column-gap" "20rem"
        ]


{-| The tailwind class `gap-x-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_9 : Css.Style
gap_x_9 =
    Css.batch
        [ Css.property "-moz-column-gap" "2.25rem"
        , Css.property "column-gap" "2.25rem"
        ]


{-| The tailwind class `gap-x-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_96 : Css.Style
gap_x_96 =
    Css.batch
        [ Css.property "-moz-column-gap" "24rem"
        , Css.property "column-gap" "24rem"
        ]


{-| The tailwind class `gap-x-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_x_px : Css.Style
gap_x_px =
    Css.batch
        [ Css.property "-moz-column-gap" "1px"
        , Css.property "column-gap" "1px"
        ]


{-| The tailwind class `gap-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_0 : Css.Style
gap_y_0 =
    Css.property "row-gap" "0px"


{-| The tailwind class `gap-y-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_0_dot_5 : Css.Style
gap_y_0_dot_5 =
    Css.property "row-gap" "0.125rem"


{-| The tailwind class `gap-y-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_1 : Css.Style
gap_y_1 =
    Css.property "row-gap" "0.25rem"


{-| The tailwind class `gap-y-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_10 : Css.Style
gap_y_10 =
    Css.property "row-gap" "2.5rem"


{-| The tailwind class `gap-y-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_11 : Css.Style
gap_y_11 =
    Css.property "row-gap" "2.75rem"


{-| The tailwind class `gap-y-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_12 : Css.Style
gap_y_12 =
    Css.property "row-gap" "3rem"


{-| The tailwind class `gap-y-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_14 : Css.Style
gap_y_14 =
    Css.property "row-gap" "3.5rem"


{-| The tailwind class `gap-y-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_16 : Css.Style
gap_y_16 =
    Css.property "row-gap" "4rem"


{-| The tailwind class `gap-y-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_1_dot_5 : Css.Style
gap_y_1_dot_5 =
    Css.property "row-gap" "0.375rem"


{-| The tailwind class `gap-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_2 : Css.Style
gap_y_2 =
    Css.property "row-gap" "0.5rem"


{-| The tailwind class `gap-y-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_20 : Css.Style
gap_y_20 =
    Css.property "row-gap" "5rem"


{-| The tailwind class `gap-y-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_24 : Css.Style
gap_y_24 =
    Css.property "row-gap" "6rem"


{-| The tailwind class `gap-y-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_28 : Css.Style
gap_y_28 =
    Css.property "row-gap" "7rem"


{-| The tailwind class `gap-y-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_2_dot_5 : Css.Style
gap_y_2_dot_5 =
    Css.property "row-gap" "0.625rem"


{-| The tailwind class `gap-y-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_3 : Css.Style
gap_y_3 =
    Css.property "row-gap" "0.75rem"


{-| The tailwind class `gap-y-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_32 : Css.Style
gap_y_32 =
    Css.property "row-gap" "8rem"


{-| The tailwind class `gap-y-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_36 : Css.Style
gap_y_36 =
    Css.property "row-gap" "9rem"


{-| The tailwind class `gap-y-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_3_dot_5 : Css.Style
gap_y_3_dot_5 =
    Css.property "row-gap" "0.875rem"


{-| The tailwind class `gap-y-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_4 : Css.Style
gap_y_4 =
    Css.property "row-gap" "1rem"


{-| The tailwind class `gap-y-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_40 : Css.Style
gap_y_40 =
    Css.property "row-gap" "10rem"


{-| The tailwind class `gap-y-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_44 : Css.Style
gap_y_44 =
    Css.property "row-gap" "11rem"


{-| The tailwind class `gap-y-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_48 : Css.Style
gap_y_48 =
    Css.property "row-gap" "12rem"


{-| The tailwind class `gap-y-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_5 : Css.Style
gap_y_5 =
    Css.property "row-gap" "1.25rem"


{-| The tailwind class `gap-y-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_52 : Css.Style
gap_y_52 =
    Css.property "row-gap" "13rem"


{-| The tailwind class `gap-y-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_56 : Css.Style
gap_y_56 =
    Css.property "row-gap" "14rem"


{-| The tailwind class `gap-y-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_6 : Css.Style
gap_y_6 =
    Css.property "row-gap" "1.5rem"


{-| The tailwind class `gap-y-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_60 : Css.Style
gap_y_60 =
    Css.property "row-gap" "15rem"


{-| The tailwind class `gap-y-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_64 : Css.Style
gap_y_64 =
    Css.property "row-gap" "16rem"


{-| The tailwind class `gap-y-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_7 : Css.Style
gap_y_7 =
    Css.property "row-gap" "1.75rem"


{-| The tailwind class `gap-y-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_72 : Css.Style
gap_y_72 =
    Css.property "row-gap" "18rem"


{-| The tailwind class `gap-y-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_8 : Css.Style
gap_y_8 =
    Css.property "row-gap" "2rem"


{-| The tailwind class `gap-y-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_80 : Css.Style
gap_y_80 =
    Css.property "row-gap" "20rem"


{-| The tailwind class `gap-y-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_9 : Css.Style
gap_y_9 =
    Css.property "row-gap" "2.25rem"


{-| The tailwind class `gap-y-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_96 : Css.Style
gap_y_96 =
    Css.property "row-gap" "24rem"


{-| The tailwind class `gap-y-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

gap_y_px : Css.Style
gap_y_px =
    Css.property "row-gap" "1px"


{-| The tailwind class `grayscale`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grayscale : Css.Style
grayscale =
    Css.property "--tw-grayscale" "grayscale(100%)"


{-| The tailwind class `grayscale-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grayscale_0 : Css.Style
grayscale_0 =
    Css.property "--tw-grayscale" "grayscale(0)"


{-| The tailwind class `grid`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid : Css.Style
grid =
    Css.property "display" "grid"


{-| The tailwind class `grid-cols-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_1 : Css.Style
grid_cols_1 =
    Css.property "grid-template-columns" "repeat(1, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_10 : Css.Style
grid_cols_10 =
    Css.property "grid-template-columns" "repeat(10, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_11 : Css.Style
grid_cols_11 =
    Css.property "grid-template-columns" "repeat(11, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_12 : Css.Style
grid_cols_12 =
    Css.property "grid-template-columns" "repeat(12, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_2 : Css.Style
grid_cols_2 =
    Css.property "grid-template-columns" "repeat(2, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_3 : Css.Style
grid_cols_3 =
    Css.property "grid-template-columns" "repeat(3, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_4 : Css.Style
grid_cols_4 =
    Css.property "grid-template-columns" "repeat(4, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_5 : Css.Style
grid_cols_5 =
    Css.property "grid-template-columns" "repeat(5, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_6 : Css.Style
grid_cols_6 =
    Css.property "grid-template-columns" "repeat(6, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_7 : Css.Style
grid_cols_7 =
    Css.property "grid-template-columns" "repeat(7, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_8 : Css.Style
grid_cols_8 =
    Css.property "grid-template-columns" "repeat(8, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_9 : Css.Style
grid_cols_9 =
    Css.property "grid-template-columns" "repeat(9, minmax(0, 1fr))"


{-| The tailwind class `grid-cols-header`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_header : Css.Style
grid_cols_header =
    Css.property "grid-template-columns" "1fr 2fr 1fr"


{-| The tailwind class `grid-cols-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_cols_none : Css.Style
grid_cols_none =
    Css.property "grid-template-columns" "none"


{-| The tailwind class `grid-flow-col`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_flow_col : Css.Style
grid_flow_col =
    Css.property "grid-auto-flow" "column"


{-| The tailwind class `grid-flow-col-dense`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_flow_col_dense : Css.Style
grid_flow_col_dense =
    Css.property "grid-auto-flow" "column dense"


{-| The tailwind class `grid-flow-row`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_flow_row : Css.Style
grid_flow_row =
    Css.property "grid-auto-flow" "row"


{-| The tailwind class `grid-flow-row-dense`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_flow_row_dense : Css.Style
grid_flow_row_dense =
    Css.property "grid-auto-flow" "row dense"


{-| The tailwind class `grid-rows-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_rows_1 : Css.Style
grid_rows_1 =
    Css.property "grid-template-rows" "repeat(1, minmax(0, 1fr))"


{-| The tailwind class `grid-rows-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_rows_2 : Css.Style
grid_rows_2 =
    Css.property "grid-template-rows" "repeat(2, minmax(0, 1fr))"


{-| The tailwind class `grid-rows-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_rows_3 : Css.Style
grid_rows_3 =
    Css.property "grid-template-rows" "repeat(3, minmax(0, 1fr))"


{-| The tailwind class `grid-rows-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_rows_4 : Css.Style
grid_rows_4 =
    Css.property "grid-template-rows" "repeat(4, minmax(0, 1fr))"


{-| The tailwind class `grid-rows-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_rows_5 : Css.Style
grid_rows_5 =
    Css.property "grid-template-rows" "repeat(5, minmax(0, 1fr))"


{-| The tailwind class `grid-rows-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_rows_6 : Css.Style
grid_rows_6 =
    Css.property "grid-template-rows" "repeat(6, minmax(0, 1fr))"


{-| The tailwind class `grid-rows-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

grid_rows_none : Css.Style
grid_rows_none =
    Css.property "grid-template-rows" "none"


{-| The tailwind class `h-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_0 : Css.Style
h_0 =
    Css.property "height" "0px"


{-| The tailwind class `h-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_0_dot_5 : Css.Style
h_0_dot_5 =
    Css.property "height" "0.125rem"


{-| The tailwind class `h-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_1 : Css.Style
h_1 =
    Css.property "height" "0.25rem"


{-| The tailwind class `h-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_10 : Css.Style
h_10 =
    Css.property "height" "2.5rem"


{-| The tailwind class `h-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_11 : Css.Style
h_11 =
    Css.property "height" "2.75rem"


{-| The tailwind class `h-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_12 : Css.Style
h_12 =
    Css.property "height" "3rem"


{-| The tailwind class `h-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_14 : Css.Style
h_14 =
    Css.property "height" "3.5rem"


{-| The tailwind class `h-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_16 : Css.Style
h_16 =
    Css.property "height" "4rem"


{-| The tailwind class `h-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_1_dot_5 : Css.Style
h_1_dot_5 =
    Css.property "height" "0.375rem"


{-| The tailwind class `h-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_1over2 : Css.Style
h_1over2 =
    Css.property "height" "50%"


{-| The tailwind class `h-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_1over3 : Css.Style
h_1over3 =
    Css.property "height" "33.333333%"


{-| The tailwind class `h-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_1over4 : Css.Style
h_1over4 =
    Css.property "height" "25%"


{-| The tailwind class `h-1/5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_1over5 : Css.Style
h_1over5 =
    Css.property "height" "20%"


{-| The tailwind class `h-1/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_1over6 : Css.Style
h_1over6 =
    Css.property "height" "16.666667%"


{-| The tailwind class `h-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_2 : Css.Style
h_2 =
    Css.property "height" "0.5rem"


{-| The tailwind class `h-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_20 : Css.Style
h_20 =
    Css.property "height" "5rem"


{-| The tailwind class `h-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_24 : Css.Style
h_24 =
    Css.property "height" "6rem"


{-| The tailwind class `h-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_28 : Css.Style
h_28 =
    Css.property "height" "7rem"


{-| The tailwind class `h-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_2_dot_5 : Css.Style
h_2_dot_5 =
    Css.property "height" "0.625rem"


{-| The tailwind class `h-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_2over3 : Css.Style
h_2over3 =
    Css.property "height" "66.666667%"


{-| The tailwind class `h-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_2over4 : Css.Style
h_2over4 =
    Css.property "height" "50%"


{-| The tailwind class `h-2/5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_2over5 : Css.Style
h_2over5 =
    Css.property "height" "40%"


{-| The tailwind class `h-2/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_2over6 : Css.Style
h_2over6 =
    Css.property "height" "33.333333%"


{-| The tailwind class `h-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_3 : Css.Style
h_3 =
    Css.property "height" "0.75rem"


{-| The tailwind class `h-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_32 : Css.Style
h_32 =
    Css.property "height" "8rem"


{-| The tailwind class `h-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_36 : Css.Style
h_36 =
    Css.property "height" "9rem"


{-| The tailwind class `h-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_3_dot_5 : Css.Style
h_3_dot_5 =
    Css.property "height" "0.875rem"


{-| The tailwind class `h-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_3over4 : Css.Style
h_3over4 =
    Css.property "height" "75%"


{-| The tailwind class `h-3/5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_3over5 : Css.Style
h_3over5 =
    Css.property "height" "60%"


{-| The tailwind class `h-3/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_3over6 : Css.Style
h_3over6 =
    Css.property "height" "50%"


{-| The tailwind class `h-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_4 : Css.Style
h_4 =
    Css.property "height" "1rem"


{-| The tailwind class `h-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_40 : Css.Style
h_40 =
    Css.property "height" "10rem"


{-| The tailwind class `h-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_44 : Css.Style
h_44 =
    Css.property "height" "11rem"


{-| The tailwind class `h-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_48 : Css.Style
h_48 =
    Css.property "height" "12rem"


{-| The tailwind class `h-4/5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_4over5 : Css.Style
h_4over5 =
    Css.property "height" "80%"


{-| The tailwind class `h-4/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_4over6 : Css.Style
h_4over6 =
    Css.property "height" "66.666667%"


{-| The tailwind class `h-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_5 : Css.Style
h_5 =
    Css.property "height" "1.25rem"


{-| The tailwind class `h-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_52 : Css.Style
h_52 =
    Css.property "height" "13rem"


{-| The tailwind class `h-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_56 : Css.Style
h_56 =
    Css.property "height" "14rem"


{-| The tailwind class `h-5/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_5over6 : Css.Style
h_5over6 =
    Css.property "height" "83.333333%"


{-| The tailwind class `h-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_6 : Css.Style
h_6 =
    Css.property "height" "1.5rem"


{-| The tailwind class `h-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_60 : Css.Style
h_60 =
    Css.property "height" "15rem"


{-| The tailwind class `h-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_64 : Css.Style
h_64 =
    Css.property "height" "16rem"


{-| The tailwind class `h-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_7 : Css.Style
h_7 =
    Css.property "height" "1.75rem"


{-| The tailwind class `h-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_72 : Css.Style
h_72 =
    Css.property "height" "18rem"


{-| The tailwind class `h-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_8 : Css.Style
h_8 =
    Css.property "height" "2rem"


{-| The tailwind class `h-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_80 : Css.Style
h_80 =
    Css.property "height" "20rem"


{-| The tailwind class `h-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_9 : Css.Style
h_9 =
    Css.property "height" "2.25rem"


{-| The tailwind class `h-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_96 : Css.Style
h_96 =
    Css.property "height" "24rem"


{-| The tailwind class `h-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_auto : Css.Style
h_auto =
    Css.property "height" "auto"


{-| The tailwind class `h-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_full : Css.Style
h_full =
    Css.property "height" "100%"


{-| The tailwind class `h-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_px : Css.Style
h_px =
    Css.property "height" "1px"


{-| The tailwind class `h-screen`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

h_screen : Css.Style
h_screen =
    Css.property "height" "100vh"


{-| The tailwind class `hidden`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

hidden : Css.Style
hidden =
    Css.property "display" "none"


{-| The tailwind class `hue-rotate-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

hue_rotate_0 : Css.Style
hue_rotate_0 =
    Css.property "--tw-hue-rotate" "hue-rotate(0deg)"


{-| The tailwind class `hue-rotate-15`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

hue_rotate_15 : Css.Style
hue_rotate_15 =
    Css.property "--tw-hue-rotate" "hue-rotate(15deg)"


{-| The tailwind class `hue-rotate-180`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

hue_rotate_180 : Css.Style
hue_rotate_180 =
    Css.property "--tw-hue-rotate" "hue-rotate(180deg)"


{-| The tailwind class `hue-rotate-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

hue_rotate_30 : Css.Style
hue_rotate_30 =
    Css.property "--tw-hue-rotate" "hue-rotate(30deg)"


{-| The tailwind class `hue-rotate-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

hue_rotate_60 : Css.Style
hue_rotate_60 =
    Css.property "--tw-hue-rotate" "hue-rotate(60deg)"


{-| The tailwind class `hue-rotate-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

hue_rotate_90 : Css.Style
hue_rotate_90 =
    Css.property "--tw-hue-rotate" "hue-rotate(90deg)"


{-| The tailwind class `inline`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inline : Css.Style
inline =
    Css.property "display" "inline"


{-| The tailwind class `inline-block`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inline_block : Css.Style
inline_block =
    Css.property "display" "inline-block"


{-| The tailwind class `inline-flex`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inline_flex : Css.Style
inline_flex =
    Css.property "display" "inline-flex"


{-| The tailwind class `inline-grid`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inline_grid : Css.Style
inline_grid =
    Css.property "display" "inline-grid"


{-| The tailwind class `inline-table`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inline_table : Css.Style
inline_table =
    Css.property "display" "inline-table"


{-| The tailwind class `inset-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_0 : Css.Style
inset_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "right" "0px"
        , Css.property "bottom" "0px"
        , Css.property "left" "0px"
        ]


{-| The tailwind class `inset-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_0_dot_5 : Css.Style
inset_0_dot_5 =
    Css.batch
        [ Css.property "top" "0.125rem"
        , Css.property "right" "0.125rem"
        , Css.property "bottom" "0.125rem"
        , Css.property "left" "0.125rem"
        ]


{-| The tailwind class `inset-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_1 : Css.Style
inset_1 =
    Css.batch
        [ Css.property "top" "0.25rem"
        , Css.property "right" "0.25rem"
        , Css.property "bottom" "0.25rem"
        , Css.property "left" "0.25rem"
        ]


{-| The tailwind class `inset-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_10 : Css.Style
inset_10 =
    Css.batch
        [ Css.property "top" "2.5rem"
        , Css.property "right" "2.5rem"
        , Css.property "bottom" "2.5rem"
        , Css.property "left" "2.5rem"
        ]


{-| The tailwind class `inset-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_11 : Css.Style
inset_11 =
    Css.batch
        [ Css.property "top" "2.75rem"
        , Css.property "right" "2.75rem"
        , Css.property "bottom" "2.75rem"
        , Css.property "left" "2.75rem"
        ]


{-| The tailwind class `inset-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_12 : Css.Style
inset_12 =
    Css.batch
        [ Css.property "top" "3rem"
        , Css.property "right" "3rem"
        , Css.property "bottom" "3rem"
        , Css.property "left" "3rem"
        ]


{-| The tailwind class `inset-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_14 : Css.Style
inset_14 =
    Css.batch
        [ Css.property "top" "3.5rem"
        , Css.property "right" "3.5rem"
        , Css.property "bottom" "3.5rem"
        , Css.property "left" "3.5rem"
        ]


{-| The tailwind class `inset-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_16 : Css.Style
inset_16 =
    Css.batch
        [ Css.property "top" "4rem"
        , Css.property "right" "4rem"
        , Css.property "bottom" "4rem"
        , Css.property "left" "4rem"
        ]


{-| The tailwind class `inset-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_1_dot_5 : Css.Style
inset_1_dot_5 =
    Css.batch
        [ Css.property "top" "0.375rem"
        , Css.property "right" "0.375rem"
        , Css.property "bottom" "0.375rem"
        , Css.property "left" "0.375rem"
        ]


{-| The tailwind class `inset-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_1over2 : Css.Style
inset_1over2 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "right" "50%"
        , Css.property "bottom" "50%"
        , Css.property "left" "50%"
        ]


{-| The tailwind class `inset-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_1over3 : Css.Style
inset_1over3 =
    Css.batch
        [ Css.property "top" "33.333333%"
        , Css.property "right" "33.333333%"
        , Css.property "bottom" "33.333333%"
        , Css.property "left" "33.333333%"
        ]


{-| The tailwind class `inset-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_1over4 : Css.Style
inset_1over4 =
    Css.batch
        [ Css.property "top" "25%"
        , Css.property "right" "25%"
        , Css.property "bottom" "25%"
        , Css.property "left" "25%"
        ]


{-| The tailwind class `inset-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_2 : Css.Style
inset_2 =
    Css.batch
        [ Css.property "top" "0.5rem"
        , Css.property "right" "0.5rem"
        , Css.property "bottom" "0.5rem"
        , Css.property "left" "0.5rem"
        ]


{-| The tailwind class `inset-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_20 : Css.Style
inset_20 =
    Css.batch
        [ Css.property "top" "5rem"
        , Css.property "right" "5rem"
        , Css.property "bottom" "5rem"
        , Css.property "left" "5rem"
        ]


{-| The tailwind class `inset-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_24 : Css.Style
inset_24 =
    Css.batch
        [ Css.property "top" "6rem"
        , Css.property "right" "6rem"
        , Css.property "bottom" "6rem"
        , Css.property "left" "6rem"
        ]


{-| The tailwind class `inset-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_28 : Css.Style
inset_28 =
    Css.batch
        [ Css.property "top" "7rem"
        , Css.property "right" "7rem"
        , Css.property "bottom" "7rem"
        , Css.property "left" "7rem"
        ]


{-| The tailwind class `inset-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_2_dot_5 : Css.Style
inset_2_dot_5 =
    Css.batch
        [ Css.property "top" "0.625rem"
        , Css.property "right" "0.625rem"
        , Css.property "bottom" "0.625rem"
        , Css.property "left" "0.625rem"
        ]


{-| The tailwind class `inset-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_2over3 : Css.Style
inset_2over3 =
    Css.batch
        [ Css.property "top" "66.666667%"
        , Css.property "right" "66.666667%"
        , Css.property "bottom" "66.666667%"
        , Css.property "left" "66.666667%"
        ]


{-| The tailwind class `inset-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_2over4 : Css.Style
inset_2over4 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "right" "50%"
        , Css.property "bottom" "50%"
        , Css.property "left" "50%"
        ]


{-| The tailwind class `inset-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_3 : Css.Style
inset_3 =
    Css.batch
        [ Css.property "top" "0.75rem"
        , Css.property "right" "0.75rem"
        , Css.property "bottom" "0.75rem"
        , Css.property "left" "0.75rem"
        ]


{-| The tailwind class `inset-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_32 : Css.Style
inset_32 =
    Css.batch
        [ Css.property "top" "8rem"
        , Css.property "right" "8rem"
        , Css.property "bottom" "8rem"
        , Css.property "left" "8rem"
        ]


{-| The tailwind class `inset-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_36 : Css.Style
inset_36 =
    Css.batch
        [ Css.property "top" "9rem"
        , Css.property "right" "9rem"
        , Css.property "bottom" "9rem"
        , Css.property "left" "9rem"
        ]


{-| The tailwind class `inset-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_3_dot_5 : Css.Style
inset_3_dot_5 =
    Css.batch
        [ Css.property "top" "0.875rem"
        , Css.property "right" "0.875rem"
        , Css.property "bottom" "0.875rem"
        , Css.property "left" "0.875rem"
        ]


{-| The tailwind class `inset-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_3over4 : Css.Style
inset_3over4 =
    Css.batch
        [ Css.property "top" "75%"
        , Css.property "right" "75%"
        , Css.property "bottom" "75%"
        , Css.property "left" "75%"
        ]


{-| The tailwind class `inset-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_4 : Css.Style
inset_4 =
    Css.batch
        [ Css.property "top" "1rem"
        , Css.property "right" "1rem"
        , Css.property "bottom" "1rem"
        , Css.property "left" "1rem"
        ]


{-| The tailwind class `inset-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_40 : Css.Style
inset_40 =
    Css.batch
        [ Css.property "top" "10rem"
        , Css.property "right" "10rem"
        , Css.property "bottom" "10rem"
        , Css.property "left" "10rem"
        ]


{-| The tailwind class `inset-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_44 : Css.Style
inset_44 =
    Css.batch
        [ Css.property "top" "11rem"
        , Css.property "right" "11rem"
        , Css.property "bottom" "11rem"
        , Css.property "left" "11rem"
        ]


{-| The tailwind class `inset-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_48 : Css.Style
inset_48 =
    Css.batch
        [ Css.property "top" "12rem"
        , Css.property "right" "12rem"
        , Css.property "bottom" "12rem"
        , Css.property "left" "12rem"
        ]


{-| The tailwind class `inset-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_5 : Css.Style
inset_5 =
    Css.batch
        [ Css.property "top" "1.25rem"
        , Css.property "right" "1.25rem"
        , Css.property "bottom" "1.25rem"
        , Css.property "left" "1.25rem"
        ]


{-| The tailwind class `inset-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_52 : Css.Style
inset_52 =
    Css.batch
        [ Css.property "top" "13rem"
        , Css.property "right" "13rem"
        , Css.property "bottom" "13rem"
        , Css.property "left" "13rem"
        ]


{-| The tailwind class `inset-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_56 : Css.Style
inset_56 =
    Css.batch
        [ Css.property "top" "14rem"
        , Css.property "right" "14rem"
        , Css.property "bottom" "14rem"
        , Css.property "left" "14rem"
        ]


{-| The tailwind class `inset-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_6 : Css.Style
inset_6 =
    Css.batch
        [ Css.property "top" "1.5rem"
        , Css.property "right" "1.5rem"
        , Css.property "bottom" "1.5rem"
        , Css.property "left" "1.5rem"
        ]


{-| The tailwind class `inset-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_60 : Css.Style
inset_60 =
    Css.batch
        [ Css.property "top" "15rem"
        , Css.property "right" "15rem"
        , Css.property "bottom" "15rem"
        , Css.property "left" "15rem"
        ]


{-| The tailwind class `inset-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_64 : Css.Style
inset_64 =
    Css.batch
        [ Css.property "top" "16rem"
        , Css.property "right" "16rem"
        , Css.property "bottom" "16rem"
        , Css.property "left" "16rem"
        ]


{-| The tailwind class `inset-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_7 : Css.Style
inset_7 =
    Css.batch
        [ Css.property "top" "1.75rem"
        , Css.property "right" "1.75rem"
        , Css.property "bottom" "1.75rem"
        , Css.property "left" "1.75rem"
        ]


{-| The tailwind class `inset-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_72 : Css.Style
inset_72 =
    Css.batch
        [ Css.property "top" "18rem"
        , Css.property "right" "18rem"
        , Css.property "bottom" "18rem"
        , Css.property "left" "18rem"
        ]


{-| The tailwind class `inset-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_8 : Css.Style
inset_8 =
    Css.batch
        [ Css.property "top" "2rem"
        , Css.property "right" "2rem"
        , Css.property "bottom" "2rem"
        , Css.property "left" "2rem"
        ]


{-| The tailwind class `inset-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_80 : Css.Style
inset_80 =
    Css.batch
        [ Css.property "top" "20rem"
        , Css.property "right" "20rem"
        , Css.property "bottom" "20rem"
        , Css.property "left" "20rem"
        ]


{-| The tailwind class `inset-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_9 : Css.Style
inset_9 =
    Css.batch
        [ Css.property "top" "2.25rem"
        , Css.property "right" "2.25rem"
        , Css.property "bottom" "2.25rem"
        , Css.property "left" "2.25rem"
        ]


{-| The tailwind class `inset-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_96 : Css.Style
inset_96 =
    Css.batch
        [ Css.property "top" "24rem"
        , Css.property "right" "24rem"
        , Css.property "bottom" "24rem"
        , Css.property "left" "24rem"
        ]


{-| The tailwind class `inset-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_auto : Css.Style
inset_auto =
    Css.batch
        [ Css.property "top" "auto"
        , Css.property "right" "auto"
        , Css.property "bottom" "auto"
        , Css.property "left" "auto"
        ]


{-| The tailwind class `inset-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_full : Css.Style
inset_full =
    Css.batch
        [ Css.property "top" "100%"
        , Css.property "right" "100%"
        , Css.property "bottom" "100%"
        , Css.property "left" "100%"
        ]


{-| The tailwind class `inset-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_px : Css.Style
inset_px =
    Css.batch
        [ Css.property "top" "1px"
        , Css.property "right" "1px"
        , Css.property "bottom" "1px"
        , Css.property "left" "1px"
        ]


{-| The tailwind class `inset-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_0 : Css.Style
inset_x_0 =
    Css.batch
        [ Css.property "left" "0px"
        , Css.property "right" "0px"
        ]


{-| The tailwind class `inset-x-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_0_dot_5 : Css.Style
inset_x_0_dot_5 =
    Css.batch
        [ Css.property "left" "0.125rem"
        , Css.property "right" "0.125rem"
        ]


{-| The tailwind class `inset-x-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_1 : Css.Style
inset_x_1 =
    Css.batch
        [ Css.property "left" "0.25rem"
        , Css.property "right" "0.25rem"
        ]


{-| The tailwind class `inset-x-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_10 : Css.Style
inset_x_10 =
    Css.batch
        [ Css.property "left" "2.5rem"
        , Css.property "right" "2.5rem"
        ]


{-| The tailwind class `inset-x-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_11 : Css.Style
inset_x_11 =
    Css.batch
        [ Css.property "left" "2.75rem"
        , Css.property "right" "2.75rem"
        ]


{-| The tailwind class `inset-x-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_12 : Css.Style
inset_x_12 =
    Css.batch
        [ Css.property "left" "3rem"
        , Css.property "right" "3rem"
        ]


{-| The tailwind class `inset-x-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_14 : Css.Style
inset_x_14 =
    Css.batch
        [ Css.property "left" "3.5rem"
        , Css.property "right" "3.5rem"
        ]


{-| The tailwind class `inset-x-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_16 : Css.Style
inset_x_16 =
    Css.batch
        [ Css.property "left" "4rem"
        , Css.property "right" "4rem"
        ]


{-| The tailwind class `inset-x-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_1_dot_5 : Css.Style
inset_x_1_dot_5 =
    Css.batch
        [ Css.property "left" "0.375rem"
        , Css.property "right" "0.375rem"
        ]


{-| The tailwind class `inset-x-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_1over2 : Css.Style
inset_x_1over2 =
    Css.batch
        [ Css.property "left" "50%"
        , Css.property "right" "50%"
        ]


{-| The tailwind class `inset-x-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_1over3 : Css.Style
inset_x_1over3 =
    Css.batch
        [ Css.property "left" "33.333333%"
        , Css.property "right" "33.333333%"
        ]


{-| The tailwind class `inset-x-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_1over4 : Css.Style
inset_x_1over4 =
    Css.batch
        [ Css.property "left" "25%"
        , Css.property "right" "25%"
        ]


{-| The tailwind class `inset-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_2 : Css.Style
inset_x_2 =
    Css.batch
        [ Css.property "left" "0.5rem"
        , Css.property "right" "0.5rem"
        ]


{-| The tailwind class `inset-x-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_20 : Css.Style
inset_x_20 =
    Css.batch
        [ Css.property "left" "5rem"
        , Css.property "right" "5rem"
        ]


{-| The tailwind class `inset-x-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_24 : Css.Style
inset_x_24 =
    Css.batch
        [ Css.property "left" "6rem"
        , Css.property "right" "6rem"
        ]


{-| The tailwind class `inset-x-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_28 : Css.Style
inset_x_28 =
    Css.batch
        [ Css.property "left" "7rem"
        , Css.property "right" "7rem"
        ]


{-| The tailwind class `inset-x-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_2_dot_5 : Css.Style
inset_x_2_dot_5 =
    Css.batch
        [ Css.property "left" "0.625rem"
        , Css.property "right" "0.625rem"
        ]


{-| The tailwind class `inset-x-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_2over3 : Css.Style
inset_x_2over3 =
    Css.batch
        [ Css.property "left" "66.666667%"
        , Css.property "right" "66.666667%"
        ]


{-| The tailwind class `inset-x-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_2over4 : Css.Style
inset_x_2over4 =
    Css.batch
        [ Css.property "left" "50%"
        , Css.property "right" "50%"
        ]


{-| The tailwind class `inset-x-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_3 : Css.Style
inset_x_3 =
    Css.batch
        [ Css.property "left" "0.75rem"
        , Css.property "right" "0.75rem"
        ]


{-| The tailwind class `inset-x-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_32 : Css.Style
inset_x_32 =
    Css.batch
        [ Css.property "left" "8rem"
        , Css.property "right" "8rem"
        ]


{-| The tailwind class `inset-x-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_36 : Css.Style
inset_x_36 =
    Css.batch
        [ Css.property "left" "9rem"
        , Css.property "right" "9rem"
        ]


{-| The tailwind class `inset-x-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_3_dot_5 : Css.Style
inset_x_3_dot_5 =
    Css.batch
        [ Css.property "left" "0.875rem"
        , Css.property "right" "0.875rem"
        ]


{-| The tailwind class `inset-x-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_3over4 : Css.Style
inset_x_3over4 =
    Css.batch
        [ Css.property "left" "75%"
        , Css.property "right" "75%"
        ]


{-| The tailwind class `inset-x-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_4 : Css.Style
inset_x_4 =
    Css.batch
        [ Css.property "left" "1rem"
        , Css.property "right" "1rem"
        ]


{-| The tailwind class `inset-x-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_40 : Css.Style
inset_x_40 =
    Css.batch
        [ Css.property "left" "10rem"
        , Css.property "right" "10rem"
        ]


{-| The tailwind class `inset-x-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_44 : Css.Style
inset_x_44 =
    Css.batch
        [ Css.property "left" "11rem"
        , Css.property "right" "11rem"
        ]


{-| The tailwind class `inset-x-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_48 : Css.Style
inset_x_48 =
    Css.batch
        [ Css.property "left" "12rem"
        , Css.property "right" "12rem"
        ]


{-| The tailwind class `inset-x-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_5 : Css.Style
inset_x_5 =
    Css.batch
        [ Css.property "left" "1.25rem"
        , Css.property "right" "1.25rem"
        ]


{-| The tailwind class `inset-x-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_52 : Css.Style
inset_x_52 =
    Css.batch
        [ Css.property "left" "13rem"
        , Css.property "right" "13rem"
        ]


{-| The tailwind class `inset-x-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_56 : Css.Style
inset_x_56 =
    Css.batch
        [ Css.property "left" "14rem"
        , Css.property "right" "14rem"
        ]


{-| The tailwind class `inset-x-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_6 : Css.Style
inset_x_6 =
    Css.batch
        [ Css.property "left" "1.5rem"
        , Css.property "right" "1.5rem"
        ]


{-| The tailwind class `inset-x-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_60 : Css.Style
inset_x_60 =
    Css.batch
        [ Css.property "left" "15rem"
        , Css.property "right" "15rem"
        ]


{-| The tailwind class `inset-x-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_64 : Css.Style
inset_x_64 =
    Css.batch
        [ Css.property "left" "16rem"
        , Css.property "right" "16rem"
        ]


{-| The tailwind class `inset-x-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_7 : Css.Style
inset_x_7 =
    Css.batch
        [ Css.property "left" "1.75rem"
        , Css.property "right" "1.75rem"
        ]


{-| The tailwind class `inset-x-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_72 : Css.Style
inset_x_72 =
    Css.batch
        [ Css.property "left" "18rem"
        , Css.property "right" "18rem"
        ]


{-| The tailwind class `inset-x-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_8 : Css.Style
inset_x_8 =
    Css.batch
        [ Css.property "left" "2rem"
        , Css.property "right" "2rem"
        ]


{-| The tailwind class `inset-x-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_80 : Css.Style
inset_x_80 =
    Css.batch
        [ Css.property "left" "20rem"
        , Css.property "right" "20rem"
        ]


{-| The tailwind class `inset-x-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_9 : Css.Style
inset_x_9 =
    Css.batch
        [ Css.property "left" "2.25rem"
        , Css.property "right" "2.25rem"
        ]


{-| The tailwind class `inset-x-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_96 : Css.Style
inset_x_96 =
    Css.batch
        [ Css.property "left" "24rem"
        , Css.property "right" "24rem"
        ]


{-| The tailwind class `inset-x-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_auto : Css.Style
inset_x_auto =
    Css.batch
        [ Css.property "left" "auto"
        , Css.property "right" "auto"
        ]


{-| The tailwind class `inset-x-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_full : Css.Style
inset_x_full =
    Css.batch
        [ Css.property "left" "100%"
        , Css.property "right" "100%"
        ]


{-| The tailwind class `inset-x-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_x_px : Css.Style
inset_x_px =
    Css.batch
        [ Css.property "left" "1px"
        , Css.property "right" "1px"
        ]


{-| The tailwind class `inset-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_0 : Css.Style
inset_y_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "bottom" "0px"
        ]


{-| The tailwind class `inset-y-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_0_dot_5 : Css.Style
inset_y_0_dot_5 =
    Css.batch
        [ Css.property "top" "0.125rem"
        , Css.property "bottom" "0.125rem"
        ]


{-| The tailwind class `inset-y-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_1 : Css.Style
inset_y_1 =
    Css.batch
        [ Css.property "top" "0.25rem"
        , Css.property "bottom" "0.25rem"
        ]


{-| The tailwind class `inset-y-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_10 : Css.Style
inset_y_10 =
    Css.batch
        [ Css.property "top" "2.5rem"
        , Css.property "bottom" "2.5rem"
        ]


{-| The tailwind class `inset-y-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_11 : Css.Style
inset_y_11 =
    Css.batch
        [ Css.property "top" "2.75rem"
        , Css.property "bottom" "2.75rem"
        ]


{-| The tailwind class `inset-y-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_12 : Css.Style
inset_y_12 =
    Css.batch
        [ Css.property "top" "3rem"
        , Css.property "bottom" "3rem"
        ]


{-| The tailwind class `inset-y-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_14 : Css.Style
inset_y_14 =
    Css.batch
        [ Css.property "top" "3.5rem"
        , Css.property "bottom" "3.5rem"
        ]


{-| The tailwind class `inset-y-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_16 : Css.Style
inset_y_16 =
    Css.batch
        [ Css.property "top" "4rem"
        , Css.property "bottom" "4rem"
        ]


{-| The tailwind class `inset-y-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_1_dot_5 : Css.Style
inset_y_1_dot_5 =
    Css.batch
        [ Css.property "top" "0.375rem"
        , Css.property "bottom" "0.375rem"
        ]


{-| The tailwind class `inset-y-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_1over2 : Css.Style
inset_y_1over2 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "bottom" "50%"
        ]


{-| The tailwind class `inset-y-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_1over3 : Css.Style
inset_y_1over3 =
    Css.batch
        [ Css.property "top" "33.333333%"
        , Css.property "bottom" "33.333333%"
        ]


{-| The tailwind class `inset-y-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_1over4 : Css.Style
inset_y_1over4 =
    Css.batch
        [ Css.property "top" "25%"
        , Css.property "bottom" "25%"
        ]


{-| The tailwind class `inset-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_2 : Css.Style
inset_y_2 =
    Css.batch
        [ Css.property "top" "0.5rem"
        , Css.property "bottom" "0.5rem"
        ]


{-| The tailwind class `inset-y-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_20 : Css.Style
inset_y_20 =
    Css.batch
        [ Css.property "top" "5rem"
        , Css.property "bottom" "5rem"
        ]


{-| The tailwind class `inset-y-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_24 : Css.Style
inset_y_24 =
    Css.batch
        [ Css.property "top" "6rem"
        , Css.property "bottom" "6rem"
        ]


{-| The tailwind class `inset-y-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_28 : Css.Style
inset_y_28 =
    Css.batch
        [ Css.property "top" "7rem"
        , Css.property "bottom" "7rem"
        ]


{-| The tailwind class `inset-y-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_2_dot_5 : Css.Style
inset_y_2_dot_5 =
    Css.batch
        [ Css.property "top" "0.625rem"
        , Css.property "bottom" "0.625rem"
        ]


{-| The tailwind class `inset-y-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_2over3 : Css.Style
inset_y_2over3 =
    Css.batch
        [ Css.property "top" "66.666667%"
        , Css.property "bottom" "66.666667%"
        ]


{-| The tailwind class `inset-y-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_2over4 : Css.Style
inset_y_2over4 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "bottom" "50%"
        ]


{-| The tailwind class `inset-y-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_3 : Css.Style
inset_y_3 =
    Css.batch
        [ Css.property "top" "0.75rem"
        , Css.property "bottom" "0.75rem"
        ]


{-| The tailwind class `inset-y-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_32 : Css.Style
inset_y_32 =
    Css.batch
        [ Css.property "top" "8rem"
        , Css.property "bottom" "8rem"
        ]


{-| The tailwind class `inset-y-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_36 : Css.Style
inset_y_36 =
    Css.batch
        [ Css.property "top" "9rem"
        , Css.property "bottom" "9rem"
        ]


{-| The tailwind class `inset-y-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_3_dot_5 : Css.Style
inset_y_3_dot_5 =
    Css.batch
        [ Css.property "top" "0.875rem"
        , Css.property "bottom" "0.875rem"
        ]


{-| The tailwind class `inset-y-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_3over4 : Css.Style
inset_y_3over4 =
    Css.batch
        [ Css.property "top" "75%"
        , Css.property "bottom" "75%"
        ]


{-| The tailwind class `inset-y-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_4 : Css.Style
inset_y_4 =
    Css.batch
        [ Css.property "top" "1rem"
        , Css.property "bottom" "1rem"
        ]


{-| The tailwind class `inset-y-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_40 : Css.Style
inset_y_40 =
    Css.batch
        [ Css.property "top" "10rem"
        , Css.property "bottom" "10rem"
        ]


{-| The tailwind class `inset-y-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_44 : Css.Style
inset_y_44 =
    Css.batch
        [ Css.property "top" "11rem"
        , Css.property "bottom" "11rem"
        ]


{-| The tailwind class `inset-y-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_48 : Css.Style
inset_y_48 =
    Css.batch
        [ Css.property "top" "12rem"
        , Css.property "bottom" "12rem"
        ]


{-| The tailwind class `inset-y-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_5 : Css.Style
inset_y_5 =
    Css.batch
        [ Css.property "top" "1.25rem"
        , Css.property "bottom" "1.25rem"
        ]


{-| The tailwind class `inset-y-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_52 : Css.Style
inset_y_52 =
    Css.batch
        [ Css.property "top" "13rem"
        , Css.property "bottom" "13rem"
        ]


{-| The tailwind class `inset-y-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_56 : Css.Style
inset_y_56 =
    Css.batch
        [ Css.property "top" "14rem"
        , Css.property "bottom" "14rem"
        ]


{-| The tailwind class `inset-y-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_6 : Css.Style
inset_y_6 =
    Css.batch
        [ Css.property "top" "1.5rem"
        , Css.property "bottom" "1.5rem"
        ]


{-| The tailwind class `inset-y-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_60 : Css.Style
inset_y_60 =
    Css.batch
        [ Css.property "top" "15rem"
        , Css.property "bottom" "15rem"
        ]


{-| The tailwind class `inset-y-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_64 : Css.Style
inset_y_64 =
    Css.batch
        [ Css.property "top" "16rem"
        , Css.property "bottom" "16rem"
        ]


{-| The tailwind class `inset-y-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_7 : Css.Style
inset_y_7 =
    Css.batch
        [ Css.property "top" "1.75rem"
        , Css.property "bottom" "1.75rem"
        ]


{-| The tailwind class `inset-y-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_72 : Css.Style
inset_y_72 =
    Css.batch
        [ Css.property "top" "18rem"
        , Css.property "bottom" "18rem"
        ]


{-| The tailwind class `inset-y-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_8 : Css.Style
inset_y_8 =
    Css.batch
        [ Css.property "top" "2rem"
        , Css.property "bottom" "2rem"
        ]


{-| The tailwind class `inset-y-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_80 : Css.Style
inset_y_80 =
    Css.batch
        [ Css.property "top" "20rem"
        , Css.property "bottom" "20rem"
        ]


{-| The tailwind class `inset-y-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_9 : Css.Style
inset_y_9 =
    Css.batch
        [ Css.property "top" "2.25rem"
        , Css.property "bottom" "2.25rem"
        ]


{-| The tailwind class `inset-y-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_96 : Css.Style
inset_y_96 =
    Css.batch
        [ Css.property "top" "24rem"
        , Css.property "bottom" "24rem"
        ]


{-| The tailwind class `inset-y-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_auto : Css.Style
inset_y_auto =
    Css.batch
        [ Css.property "top" "auto"
        , Css.property "bottom" "auto"
        ]


{-| The tailwind class `inset-y-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_full : Css.Style
inset_y_full =
    Css.batch
        [ Css.property "top" "100%"
        , Css.property "bottom" "100%"
        ]


{-| The tailwind class `inset-y-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

inset_y_px : Css.Style
inset_y_px =
    Css.batch
        [ Css.property "top" "1px"
        , Css.property "bottom" "1px"
        ]


{-| The tailwind class `invert`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

invert : Css.Style
invert =
    Css.property "--tw-invert" "invert(100%)"


{-| The tailwind class `invert-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

invert_0 : Css.Style
invert_0 =
    Css.property "--tw-invert" "invert(0)"


{-| The tailwind class `invisible`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

invisible : Css.Style
invisible =
    Css.property "visibility" "hidden"


{-| The tailwind class `isolate`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

isolate : Css.Style
isolate =
    Css.property "isolation" "isolate"


{-| The tailwind class `isolation-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

isolation_auto : Css.Style
isolation_auto =
    Css.property "isolation" "auto"


{-| The tailwind class `italic`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

italic : Css.Style
italic =
    Css.property "font-style" "italic"


{-| The tailwind class `items-baseline`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

items_baseline : Css.Style
items_baseline =
    Css.property "align-items" "baseline"


{-| The tailwind class `items-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

items_center : Css.Style
items_center =
    Css.property "align-items" "center"


{-| The tailwind class `items-end`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

items_end : Css.Style
items_end =
    Css.property "align-items" "flex-end"


{-| The tailwind class `items-start`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

items_start : Css.Style
items_start =
    Css.property "align-items" "flex-start"


{-| The tailwind class `items-stretch`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

items_stretch : Css.Style
items_stretch =
    Css.property "align-items" "stretch"


{-| The tailwind class `justify-around`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_around : Css.Style
justify_around =
    Css.property "justify-content" "space-around"


{-| The tailwind class `justify-between`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_between : Css.Style
justify_between =
    Css.property "justify-content" "space-between"


{-| The tailwind class `justify-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_center : Css.Style
justify_center =
    Css.property "justify-content" "center"


{-| The tailwind class `justify-end`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_end : Css.Style
justify_end =
    Css.property "justify-content" "flex-end"


{-| The tailwind class `justify-evenly`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_evenly : Css.Style
justify_evenly =
    Css.property "justify-content" "space-evenly"


{-| The tailwind class `justify-items-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_items_center : Css.Style
justify_items_center =
    Css.property "justify-items" "center"


{-| The tailwind class `justify-items-end`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_items_end : Css.Style
justify_items_end =
    Css.property "justify-items" "end"


{-| The tailwind class `justify-items-start`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_items_start : Css.Style
justify_items_start =
    Css.property "justify-items" "start"


{-| The tailwind class `justify-items-stretch`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_items_stretch : Css.Style
justify_items_stretch =
    Css.property "justify-items" "stretch"


{-| The tailwind class `justify-self-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_self_auto : Css.Style
justify_self_auto =
    Css.property "justify-self" "auto"


{-| The tailwind class `justify-self-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_self_center : Css.Style
justify_self_center =
    Css.property "justify-self" "center"


{-| The tailwind class `justify-self-end`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_self_end : Css.Style
justify_self_end =
    Css.property "justify-self" "end"


{-| The tailwind class `justify-self-start`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_self_start : Css.Style
justify_self_start =
    Css.property "justify-self" "start"


{-| The tailwind class `justify-self-stretch`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_self_stretch : Css.Style
justify_self_stretch =
    Css.property "justify-self" "stretch"


{-| The tailwind class `justify-start`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

justify_start : Css.Style
justify_start =
    Css.property "justify-content" "flex-start"


{-| The tailwind class `leading-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_10 : Css.Style
leading_10 =
    Css.property "line-height" "2.5rem"


{-| The tailwind class `leading-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_3 : Css.Style
leading_3 =
    Css.property "line-height" ".75rem"


{-| The tailwind class `leading-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_4 : Css.Style
leading_4 =
    Css.property "line-height" "1rem"


{-| The tailwind class `leading-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_5 : Css.Style
leading_5 =
    Css.property "line-height" "1.25rem"


{-| The tailwind class `leading-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_6 : Css.Style
leading_6 =
    Css.property "line-height" "1.5rem"


{-| The tailwind class `leading-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_7 : Css.Style
leading_7 =
    Css.property "line-height" "1.75rem"


{-| The tailwind class `leading-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_8 : Css.Style
leading_8 =
    Css.property "line-height" "2rem"


{-| The tailwind class `leading-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_9 : Css.Style
leading_9 =
    Css.property "line-height" "2.25rem"


{-| The tailwind class `leading-loose`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_loose : Css.Style
leading_loose =
    Css.property "line-height" "2"


{-| The tailwind class `leading-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_none : Css.Style
leading_none =
    Css.property "line-height" "1"


{-| The tailwind class `leading-normal`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_normal : Css.Style
leading_normal =
    Css.property "line-height" "1.5"


{-| The tailwind class `leading-relaxed`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_relaxed : Css.Style
leading_relaxed =
    Css.property "line-height" "1.625"


{-| The tailwind class `leading-snug`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_snug : Css.Style
leading_snug =
    Css.property "line-height" "1.375"


{-| The tailwind class `leading-tight`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

leading_tight : Css.Style
leading_tight =
    Css.property "line-height" "1.25"


{-| The tailwind class `left-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_0 : Css.Style
left_0 =
    Css.property "left" "0px"


{-| The tailwind class `left-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_0_dot_5 : Css.Style
left_0_dot_5 =
    Css.property "left" "0.125rem"


{-| The tailwind class `left-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_1 : Css.Style
left_1 =
    Css.property "left" "0.25rem"


{-| The tailwind class `left-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_10 : Css.Style
left_10 =
    Css.property "left" "2.5rem"


{-| The tailwind class `left-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_11 : Css.Style
left_11 =
    Css.property "left" "2.75rem"


{-| The tailwind class `left-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_12 : Css.Style
left_12 =
    Css.property "left" "3rem"


{-| The tailwind class `left-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_14 : Css.Style
left_14 =
    Css.property "left" "3.5rem"


{-| The tailwind class `left-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_16 : Css.Style
left_16 =
    Css.property "left" "4rem"


{-| The tailwind class `left-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_1_dot_5 : Css.Style
left_1_dot_5 =
    Css.property "left" "0.375rem"


{-| The tailwind class `left-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_1over2 : Css.Style
left_1over2 =
    Css.property "left" "50%"


{-| The tailwind class `left-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_1over3 : Css.Style
left_1over3 =
    Css.property "left" "33.333333%"


{-| The tailwind class `left-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_1over4 : Css.Style
left_1over4 =
    Css.property "left" "25%"


{-| The tailwind class `left-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_2 : Css.Style
left_2 =
    Css.property "left" "0.5rem"


{-| The tailwind class `left-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_20 : Css.Style
left_20 =
    Css.property "left" "5rem"


{-| The tailwind class `left-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_24 : Css.Style
left_24 =
    Css.property "left" "6rem"


{-| The tailwind class `left-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_28 : Css.Style
left_28 =
    Css.property "left" "7rem"


{-| The tailwind class `left-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_2_dot_5 : Css.Style
left_2_dot_5 =
    Css.property "left" "0.625rem"


{-| The tailwind class `left-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_2over3 : Css.Style
left_2over3 =
    Css.property "left" "66.666667%"


{-| The tailwind class `left-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_2over4 : Css.Style
left_2over4 =
    Css.property "left" "50%"


{-| The tailwind class `left-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_3 : Css.Style
left_3 =
    Css.property "left" "0.75rem"


{-| The tailwind class `left-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_32 : Css.Style
left_32 =
    Css.property "left" "8rem"


{-| The tailwind class `left-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_36 : Css.Style
left_36 =
    Css.property "left" "9rem"


{-| The tailwind class `left-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_3_dot_5 : Css.Style
left_3_dot_5 =
    Css.property "left" "0.875rem"


{-| The tailwind class `left-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_3over4 : Css.Style
left_3over4 =
    Css.property "left" "75%"


{-| The tailwind class `left-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_4 : Css.Style
left_4 =
    Css.property "left" "1rem"


{-| The tailwind class `left-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_40 : Css.Style
left_40 =
    Css.property "left" "10rem"


{-| The tailwind class `left-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_44 : Css.Style
left_44 =
    Css.property "left" "11rem"


{-| The tailwind class `left-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_48 : Css.Style
left_48 =
    Css.property "left" "12rem"


{-| The tailwind class `left-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_5 : Css.Style
left_5 =
    Css.property "left" "1.25rem"


{-| The tailwind class `left-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_52 : Css.Style
left_52 =
    Css.property "left" "13rem"


{-| The tailwind class `left-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_56 : Css.Style
left_56 =
    Css.property "left" "14rem"


{-| The tailwind class `left-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_6 : Css.Style
left_6 =
    Css.property "left" "1.5rem"


{-| The tailwind class `left-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_60 : Css.Style
left_60 =
    Css.property "left" "15rem"


{-| The tailwind class `left-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_64 : Css.Style
left_64 =
    Css.property "left" "16rem"


{-| The tailwind class `left-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_7 : Css.Style
left_7 =
    Css.property "left" "1.75rem"


{-| The tailwind class `left-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_72 : Css.Style
left_72 =
    Css.property "left" "18rem"


{-| The tailwind class `left-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_8 : Css.Style
left_8 =
    Css.property "left" "2rem"


{-| The tailwind class `left-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_80 : Css.Style
left_80 =
    Css.property "left" "20rem"


{-| The tailwind class `left-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_9 : Css.Style
left_9 =
    Css.property "left" "2.25rem"


{-| The tailwind class `left-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_96 : Css.Style
left_96 =
    Css.property "left" "24rem"


{-| The tailwind class `left-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_auto : Css.Style
left_auto =
    Css.property "left" "auto"


{-| The tailwind class `left-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_full : Css.Style
left_full =
    Css.property "left" "100%"


{-| The tailwind class `left-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

left_px : Css.Style
left_px =
    Css.property "left" "1px"


{-| The tailwind class `line-through`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

line_through : Css.Style
line_through =
    Css.property "text-decoration" "line-through"


{-| The tailwind class `lining-nums`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

lining_nums : Css.Style
lining_nums =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-numeric-figure" "lining-nums"
        ]


{-| The tailwind class `list-decimal`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

list_decimal : Css.Style
list_decimal =
    Css.property "list-style-type" "decimal"


{-| The tailwind class `list-disc`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

list_disc : Css.Style
list_disc =
    Css.property "list-style-type" "disc"


{-| The tailwind class `list-inside`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

list_inside : Css.Style
list_inside =
    Css.property "list-style-position" "inside"


{-| The tailwind class `list-item`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

list_item : Css.Style
list_item =
    Css.property "display" "list-item"


{-| The tailwind class `list-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

list_none : Css.Style
list_none =
    Css.property "list-style-type" "none"


{-| The tailwind class `list-outside`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

list_outside : Css.Style
list_outside =
    Css.property "list-style-position" "outside"


{-| The tailwind class `lowercase`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

lowercase : Css.Style
lowercase =
    Css.property "text-transform" "lowercase"


{-| The tailwind class `m-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_0 : Css.Style
m_0 =
    Css.property "margin" "0px"


{-| The tailwind class `m-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_0_dot_5 : Css.Style
m_0_dot_5 =
    Css.property "margin" "0.125rem"


{-| The tailwind class `m-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_1 : Css.Style
m_1 =
    Css.property "margin" "0.25rem"


{-| The tailwind class `m-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_10 : Css.Style
m_10 =
    Css.property "margin" "2.5rem"


{-| The tailwind class `m-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_11 : Css.Style
m_11 =
    Css.property "margin" "2.75rem"


{-| The tailwind class `m-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_12 : Css.Style
m_12 =
    Css.property "margin" "3rem"


{-| The tailwind class `m-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_14 : Css.Style
m_14 =
    Css.property "margin" "3.5rem"


{-| The tailwind class `m-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_16 : Css.Style
m_16 =
    Css.property "margin" "4rem"


{-| The tailwind class `m-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_1_dot_5 : Css.Style
m_1_dot_5 =
    Css.property "margin" "0.375rem"


{-| The tailwind class `m-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_2 : Css.Style
m_2 =
    Css.property "margin" "0.5rem"


{-| The tailwind class `m-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_20 : Css.Style
m_20 =
    Css.property "margin" "5rem"


{-| The tailwind class `m-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_24 : Css.Style
m_24 =
    Css.property "margin" "6rem"


{-| The tailwind class `m-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_28 : Css.Style
m_28 =
    Css.property "margin" "7rem"


{-| The tailwind class `m-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_2_dot_5 : Css.Style
m_2_dot_5 =
    Css.property "margin" "0.625rem"


{-| The tailwind class `m-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_3 : Css.Style
m_3 =
    Css.property "margin" "0.75rem"


{-| The tailwind class `m-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_32 : Css.Style
m_32 =
    Css.property "margin" "8rem"


{-| The tailwind class `m-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_36 : Css.Style
m_36 =
    Css.property "margin" "9rem"


{-| The tailwind class `m-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_3_dot_5 : Css.Style
m_3_dot_5 =
    Css.property "margin" "0.875rem"


{-| The tailwind class `m-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_4 : Css.Style
m_4 =
    Css.property "margin" "1rem"


{-| The tailwind class `m-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_40 : Css.Style
m_40 =
    Css.property "margin" "10rem"


{-| The tailwind class `m-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_44 : Css.Style
m_44 =
    Css.property "margin" "11rem"


{-| The tailwind class `m-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_48 : Css.Style
m_48 =
    Css.property "margin" "12rem"


{-| The tailwind class `m-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_5 : Css.Style
m_5 =
    Css.property "margin" "1.25rem"


{-| The tailwind class `m-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_52 : Css.Style
m_52 =
    Css.property "margin" "13rem"


{-| The tailwind class `m-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_56 : Css.Style
m_56 =
    Css.property "margin" "14rem"


{-| The tailwind class `m-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_6 : Css.Style
m_6 =
    Css.property "margin" "1.5rem"


{-| The tailwind class `m-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_60 : Css.Style
m_60 =
    Css.property "margin" "15rem"


{-| The tailwind class `m-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_64 : Css.Style
m_64 =
    Css.property "margin" "16rem"


{-| The tailwind class `m-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_7 : Css.Style
m_7 =
    Css.property "margin" "1.75rem"


{-| The tailwind class `m-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_72 : Css.Style
m_72 =
    Css.property "margin" "18rem"


{-| The tailwind class `m-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_8 : Css.Style
m_8 =
    Css.property "margin" "2rem"


{-| The tailwind class `m-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_80 : Css.Style
m_80 =
    Css.property "margin" "20rem"


{-| The tailwind class `m-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_9 : Css.Style
m_9 =
    Css.property "margin" "2.25rem"


{-| The tailwind class `m-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_96 : Css.Style
m_96 =
    Css.property "margin" "24rem"


{-| The tailwind class `m-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_auto : Css.Style
m_auto =
    Css.property "margin" "auto"


{-| The tailwind class `m-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

m_px : Css.Style
m_px =
    Css.property "margin" "1px"


{-| The tailwind class `max-h-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_0 : Css.Style
max_h_0 =
    Css.property "max-height" "0px"


{-| The tailwind class `max-h-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_0_dot_5 : Css.Style
max_h_0_dot_5 =
    Css.property "max-height" "0.125rem"


{-| The tailwind class `max-h-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_1 : Css.Style
max_h_1 =
    Css.property "max-height" "0.25rem"


{-| The tailwind class `max-h-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_10 : Css.Style
max_h_10 =
    Css.property "max-height" "2.5rem"


{-| The tailwind class `max-h-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_11 : Css.Style
max_h_11 =
    Css.property "max-height" "2.75rem"


{-| The tailwind class `max-h-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_12 : Css.Style
max_h_12 =
    Css.property "max-height" "3rem"


{-| The tailwind class `max-h-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_14 : Css.Style
max_h_14 =
    Css.property "max-height" "3.5rem"


{-| The tailwind class `max-h-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_16 : Css.Style
max_h_16 =
    Css.property "max-height" "4rem"


{-| The tailwind class `max-h-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_1_dot_5 : Css.Style
max_h_1_dot_5 =
    Css.property "max-height" "0.375rem"


{-| The tailwind class `max-h-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_2 : Css.Style
max_h_2 =
    Css.property "max-height" "0.5rem"


{-| The tailwind class `max-h-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_20 : Css.Style
max_h_20 =
    Css.property "max-height" "5rem"


{-| The tailwind class `max-h-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_24 : Css.Style
max_h_24 =
    Css.property "max-height" "6rem"


{-| The tailwind class `max-h-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_28 : Css.Style
max_h_28 =
    Css.property "max-height" "7rem"


{-| The tailwind class `max-h-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_2_dot_5 : Css.Style
max_h_2_dot_5 =
    Css.property "max-height" "0.625rem"


{-| The tailwind class `max-h-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_3 : Css.Style
max_h_3 =
    Css.property "max-height" "0.75rem"


{-| The tailwind class `max-h-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_32 : Css.Style
max_h_32 =
    Css.property "max-height" "8rem"


{-| The tailwind class `max-h-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_36 : Css.Style
max_h_36 =
    Css.property "max-height" "9rem"


{-| The tailwind class `max-h-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_3_dot_5 : Css.Style
max_h_3_dot_5 =
    Css.property "max-height" "0.875rem"


{-| The tailwind class `max-h-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_4 : Css.Style
max_h_4 =
    Css.property "max-height" "1rem"


{-| The tailwind class `max-h-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_40 : Css.Style
max_h_40 =
    Css.property "max-height" "10rem"


{-| The tailwind class `max-h-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_44 : Css.Style
max_h_44 =
    Css.property "max-height" "11rem"


{-| The tailwind class `max-h-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_48 : Css.Style
max_h_48 =
    Css.property "max-height" "12rem"


{-| The tailwind class `max-h-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_5 : Css.Style
max_h_5 =
    Css.property "max-height" "1.25rem"


{-| The tailwind class `max-h-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_52 : Css.Style
max_h_52 =
    Css.property "max-height" "13rem"


{-| The tailwind class `max-h-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_56 : Css.Style
max_h_56 =
    Css.property "max-height" "14rem"


{-| The tailwind class `max-h-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_6 : Css.Style
max_h_6 =
    Css.property "max-height" "1.5rem"


{-| The tailwind class `max-h-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_60 : Css.Style
max_h_60 =
    Css.property "max-height" "15rem"


{-| The tailwind class `max-h-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_64 : Css.Style
max_h_64 =
    Css.property "max-height" "16rem"


{-| The tailwind class `max-h-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_7 : Css.Style
max_h_7 =
    Css.property "max-height" "1.75rem"


{-| The tailwind class `max-h-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_72 : Css.Style
max_h_72 =
    Css.property "max-height" "18rem"


{-| The tailwind class `max-h-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_8 : Css.Style
max_h_8 =
    Css.property "max-height" "2rem"


{-| The tailwind class `max-h-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_80 : Css.Style
max_h_80 =
    Css.property "max-height" "20rem"


{-| The tailwind class `max-h-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_9 : Css.Style
max_h_9 =
    Css.property "max-height" "2.25rem"


{-| The tailwind class `max-h-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_96 : Css.Style
max_h_96 =
    Css.property "max-height" "24rem"


{-| The tailwind class `max-h-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_full : Css.Style
max_h_full =
    Css.property "max-height" "100%"


{-| The tailwind class `max-h-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_px : Css.Style
max_h_px =
    Css.property "max-height" "1px"


{-| The tailwind class `max-h-screen`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_h_screen : Css.Style
max_h_screen =
    Css.property "max-height" "100vh"


{-| The tailwind class `max-w-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_0 : Css.Style
max_w_0 =
    Css.property "max-width" "0rem"


{-| The tailwind class `max-w-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_2xl : Css.Style
max_w_2xl =
    Css.property "max-width" "42rem"


{-| The tailwind class `max-w-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_3xl : Css.Style
max_w_3xl =
    Css.property "max-width" "48rem"


{-| The tailwind class `max-w-4xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_4xl : Css.Style
max_w_4xl =
    Css.property "max-width" "56rem"


{-| The tailwind class `max-w-5xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_5xl : Css.Style
max_w_5xl =
    Css.property "max-width" "64rem"


{-| The tailwind class `max-w-6xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_6xl : Css.Style
max_w_6xl =
    Css.property "max-width" "72rem"


{-| The tailwind class `max-w-7xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_7xl : Css.Style
max_w_7xl =
    Css.property "max-width" "80rem"


{-| The tailwind class `max-w-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_full : Css.Style
max_w_full =
    Css.property "max-width" "100%"


{-| The tailwind class `max-w-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_lg : Css.Style
max_w_lg =
    Css.property "max-width" "32rem"


{-| The tailwind class `max-w-max`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_max : Css.Style
max_w_max =
    Css.batch
        [ Css.property "max-width" "-moz-max-content"
        , Css.property "max-width" "max-content"
        ]


{-| The tailwind class `max-w-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_md : Css.Style
max_w_md =
    Css.property "max-width" "28rem"


{-| The tailwind class `max-w-min`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_min : Css.Style
max_w_min =
    Css.batch
        [ Css.property "max-width" "-moz-min-content"
        , Css.property "max-width" "min-content"
        ]


{-| The tailwind class `max-w-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_none : Css.Style
max_w_none =
    Css.property "max-width" "none"


{-| The tailwind class `max-w-prose`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_prose : Css.Style
max_w_prose =
    Css.property "max-width" "65ch"


{-| The tailwind class `max-w-screen-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_screen_2xl : Css.Style
max_w_screen_2xl =
    Css.property "max-width" "1536px"


{-| The tailwind class `max-w-screen-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_screen_lg : Css.Style
max_w_screen_lg =
    Css.property "max-width" "1024px"


{-| The tailwind class `max-w-screen-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_screen_md : Css.Style
max_w_screen_md =
    Css.property "max-width" "768px"


{-| The tailwind class `max-w-screen-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_screen_sm : Css.Style
max_w_screen_sm =
    Css.property "max-width" "640px"


{-| The tailwind class `max-w-screen-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_screen_xl : Css.Style
max_w_screen_xl =
    Css.property "max-width" "1280px"


{-| The tailwind class `max-w-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_sm : Css.Style
max_w_sm =
    Css.property "max-width" "24rem"


{-| The tailwind class `max-w-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_xl : Css.Style
max_w_xl =
    Css.property "max-width" "36rem"


{-| The tailwind class `max-w-xs`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

max_w_xs : Css.Style
max_w_xs =
    Css.property "max-width" "20rem"


{-| The tailwind class `mb-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_0 : Css.Style
mb_0 =
    Css.property "margin-bottom" "0px"


{-| The tailwind class `mb-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_0_dot_5 : Css.Style
mb_0_dot_5 =
    Css.property "margin-bottom" "0.125rem"


{-| The tailwind class `mb-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_1 : Css.Style
mb_1 =
    Css.property "margin-bottom" "0.25rem"


{-| The tailwind class `mb-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_10 : Css.Style
mb_10 =
    Css.property "margin-bottom" "2.5rem"


{-| The tailwind class `mb-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_11 : Css.Style
mb_11 =
    Css.property "margin-bottom" "2.75rem"


{-| The tailwind class `mb-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_12 : Css.Style
mb_12 =
    Css.property "margin-bottom" "3rem"


{-| The tailwind class `mb-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_14 : Css.Style
mb_14 =
    Css.property "margin-bottom" "3.5rem"


{-| The tailwind class `mb-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_16 : Css.Style
mb_16 =
    Css.property "margin-bottom" "4rem"


{-| The tailwind class `mb-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_1_dot_5 : Css.Style
mb_1_dot_5 =
    Css.property "margin-bottom" "0.375rem"


{-| The tailwind class `mb-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_2 : Css.Style
mb_2 =
    Css.property "margin-bottom" "0.5rem"


{-| The tailwind class `mb-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_20 : Css.Style
mb_20 =
    Css.property "margin-bottom" "5rem"


{-| The tailwind class `mb-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_24 : Css.Style
mb_24 =
    Css.property "margin-bottom" "6rem"


{-| The tailwind class `mb-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_28 : Css.Style
mb_28 =
    Css.property "margin-bottom" "7rem"


{-| The tailwind class `mb-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_2_dot_5 : Css.Style
mb_2_dot_5 =
    Css.property "margin-bottom" "0.625rem"


{-| The tailwind class `mb-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_3 : Css.Style
mb_3 =
    Css.property "margin-bottom" "0.75rem"


{-| The tailwind class `mb-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_32 : Css.Style
mb_32 =
    Css.property "margin-bottom" "8rem"


{-| The tailwind class `mb-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_36 : Css.Style
mb_36 =
    Css.property "margin-bottom" "9rem"


{-| The tailwind class `mb-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_3_dot_5 : Css.Style
mb_3_dot_5 =
    Css.property "margin-bottom" "0.875rem"


{-| The tailwind class `mb-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_4 : Css.Style
mb_4 =
    Css.property "margin-bottom" "1rem"


{-| The tailwind class `mb-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_40 : Css.Style
mb_40 =
    Css.property "margin-bottom" "10rem"


{-| The tailwind class `mb-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_44 : Css.Style
mb_44 =
    Css.property "margin-bottom" "11rem"


{-| The tailwind class `mb-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_48 : Css.Style
mb_48 =
    Css.property "margin-bottom" "12rem"


{-| The tailwind class `mb-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_5 : Css.Style
mb_5 =
    Css.property "margin-bottom" "1.25rem"


{-| The tailwind class `mb-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_52 : Css.Style
mb_52 =
    Css.property "margin-bottom" "13rem"


{-| The tailwind class `mb-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_56 : Css.Style
mb_56 =
    Css.property "margin-bottom" "14rem"


{-| The tailwind class `mb-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_6 : Css.Style
mb_6 =
    Css.property "margin-bottom" "1.5rem"


{-| The tailwind class `mb-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_60 : Css.Style
mb_60 =
    Css.property "margin-bottom" "15rem"


{-| The tailwind class `mb-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_64 : Css.Style
mb_64 =
    Css.property "margin-bottom" "16rem"


{-| The tailwind class `mb-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_7 : Css.Style
mb_7 =
    Css.property "margin-bottom" "1.75rem"


{-| The tailwind class `mb-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_72 : Css.Style
mb_72 =
    Css.property "margin-bottom" "18rem"


{-| The tailwind class `mb-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_8 : Css.Style
mb_8 =
    Css.property "margin-bottom" "2rem"


{-| The tailwind class `mb-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_80 : Css.Style
mb_80 =
    Css.property "margin-bottom" "20rem"


{-| The tailwind class `mb-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_9 : Css.Style
mb_9 =
    Css.property "margin-bottom" "2.25rem"


{-| The tailwind class `mb-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_96 : Css.Style
mb_96 =
    Css.property "margin-bottom" "24rem"


{-| The tailwind class `mb-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_auto : Css.Style
mb_auto =
    Css.property "margin-bottom" "auto"


{-| The tailwind class `mb-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mb_px : Css.Style
mb_px =
    Css.property "margin-bottom" "1px"


{-| The tailwind class `min-h-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

min_h_0 : Css.Style
min_h_0 =
    Css.property "min-height" "0px"


{-| The tailwind class `min-h-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

min_h_full : Css.Style
min_h_full =
    Css.property "min-height" "100%"


{-| The tailwind class `min-h-screen`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

min_h_screen : Css.Style
min_h_screen =
    Css.property "min-height" "100vh"


{-| The tailwind class `min-w-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

min_w_0 : Css.Style
min_w_0 =
    Css.property "min-width" "0px"


{-| The tailwind class `min-w-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

min_w_full : Css.Style
min_w_full =
    Css.property "min-width" "100%"


{-| The tailwind class `min-w-max`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

min_w_max : Css.Style
min_w_max =
    Css.batch
        [ Css.property "min-width" "-moz-max-content"
        , Css.property "min-width" "max-content"
        ]


{-| The tailwind class `min-w-min`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

min_w_min : Css.Style
min_w_min =
    Css.batch
        [ Css.property "min-width" "-moz-min-content"
        , Css.property "min-width" "min-content"
        ]


{-| The tailwind class `mix-blend-color`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_color : Css.Style
mix_blend_color =
    Css.property "mix-blend-mode" "color"


{-| The tailwind class `mix-blend-color-burn`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_color_burn : Css.Style
mix_blend_color_burn =
    Css.property "mix-blend-mode" "color-burn"


{-| The tailwind class `mix-blend-color-dodge`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_color_dodge : Css.Style
mix_blend_color_dodge =
    Css.property "mix-blend-mode" "color-dodge"


{-| The tailwind class `mix-blend-darken`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_darken : Css.Style
mix_blend_darken =
    Css.property "mix-blend-mode" "darken"


{-| The tailwind class `mix-blend-difference`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_difference : Css.Style
mix_blend_difference =
    Css.property "mix-blend-mode" "difference"


{-| The tailwind class `mix-blend-exclusion`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_exclusion : Css.Style
mix_blend_exclusion =
    Css.property "mix-blend-mode" "exclusion"


{-| The tailwind class `mix-blend-hard-light`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_hard_light : Css.Style
mix_blend_hard_light =
    Css.property "mix-blend-mode" "hard-light"


{-| The tailwind class `mix-blend-hue`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_hue : Css.Style
mix_blend_hue =
    Css.property "mix-blend-mode" "hue"


{-| The tailwind class `mix-blend-lighten`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_lighten : Css.Style
mix_blend_lighten =
    Css.property "mix-blend-mode" "lighten"


{-| The tailwind class `mix-blend-luminosity`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_luminosity : Css.Style
mix_blend_luminosity =
    Css.property "mix-blend-mode" "luminosity"


{-| The tailwind class `mix-blend-multiply`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_multiply : Css.Style
mix_blend_multiply =
    Css.property "mix-blend-mode" "multiply"


{-| The tailwind class `mix-blend-normal`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_normal : Css.Style
mix_blend_normal =
    Css.property "mix-blend-mode" "normal"


{-| The tailwind class `mix-blend-overlay`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_overlay : Css.Style
mix_blend_overlay =
    Css.property "mix-blend-mode" "overlay"


{-| The tailwind class `mix-blend-saturation`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_saturation : Css.Style
mix_blend_saturation =
    Css.property "mix-blend-mode" "saturation"


{-| The tailwind class `mix-blend-screen`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_screen : Css.Style
mix_blend_screen =
    Css.property "mix-blend-mode" "screen"


{-| The tailwind class `mix-blend-soft-light`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mix_blend_soft_light : Css.Style
mix_blend_soft_light =
    Css.property "mix-blend-mode" "soft-light"


{-| The tailwind class `ml-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_0 : Css.Style
ml_0 =
    Css.property "margin-left" "0px"


{-| The tailwind class `ml-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_0_dot_5 : Css.Style
ml_0_dot_5 =
    Css.property "margin-left" "0.125rem"


{-| The tailwind class `ml-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_1 : Css.Style
ml_1 =
    Css.property "margin-left" "0.25rem"


{-| The tailwind class `ml-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_10 : Css.Style
ml_10 =
    Css.property "margin-left" "2.5rem"


{-| The tailwind class `ml-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_11 : Css.Style
ml_11 =
    Css.property "margin-left" "2.75rem"


{-| The tailwind class `ml-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_12 : Css.Style
ml_12 =
    Css.property "margin-left" "3rem"


{-| The tailwind class `ml-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_14 : Css.Style
ml_14 =
    Css.property "margin-left" "3.5rem"


{-| The tailwind class `ml-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_16 : Css.Style
ml_16 =
    Css.property "margin-left" "4rem"


{-| The tailwind class `ml-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_1_dot_5 : Css.Style
ml_1_dot_5 =
    Css.property "margin-left" "0.375rem"


{-| The tailwind class `ml-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_2 : Css.Style
ml_2 =
    Css.property "margin-left" "0.5rem"


{-| The tailwind class `ml-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_20 : Css.Style
ml_20 =
    Css.property "margin-left" "5rem"


{-| The tailwind class `ml-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_24 : Css.Style
ml_24 =
    Css.property "margin-left" "6rem"


{-| The tailwind class `ml-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_28 : Css.Style
ml_28 =
    Css.property "margin-left" "7rem"


{-| The tailwind class `ml-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_2_dot_5 : Css.Style
ml_2_dot_5 =
    Css.property "margin-left" "0.625rem"


{-| The tailwind class `ml-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_3 : Css.Style
ml_3 =
    Css.property "margin-left" "0.75rem"


{-| The tailwind class `ml-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_32 : Css.Style
ml_32 =
    Css.property "margin-left" "8rem"


{-| The tailwind class `ml-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_36 : Css.Style
ml_36 =
    Css.property "margin-left" "9rem"


{-| The tailwind class `ml-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_3_dot_5 : Css.Style
ml_3_dot_5 =
    Css.property "margin-left" "0.875rem"


{-| The tailwind class `ml-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_4 : Css.Style
ml_4 =
    Css.property "margin-left" "1rem"


{-| The tailwind class `ml-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_40 : Css.Style
ml_40 =
    Css.property "margin-left" "10rem"


{-| The tailwind class `ml-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_44 : Css.Style
ml_44 =
    Css.property "margin-left" "11rem"


{-| The tailwind class `ml-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_48 : Css.Style
ml_48 =
    Css.property "margin-left" "12rem"


{-| The tailwind class `ml-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_5 : Css.Style
ml_5 =
    Css.property "margin-left" "1.25rem"


{-| The tailwind class `ml-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_52 : Css.Style
ml_52 =
    Css.property "margin-left" "13rem"


{-| The tailwind class `ml-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_56 : Css.Style
ml_56 =
    Css.property "margin-left" "14rem"


{-| The tailwind class `ml-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_6 : Css.Style
ml_6 =
    Css.property "margin-left" "1.5rem"


{-| The tailwind class `ml-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_60 : Css.Style
ml_60 =
    Css.property "margin-left" "15rem"


{-| The tailwind class `ml-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_64 : Css.Style
ml_64 =
    Css.property "margin-left" "16rem"


{-| The tailwind class `ml-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_7 : Css.Style
ml_7 =
    Css.property "margin-left" "1.75rem"


{-| The tailwind class `ml-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_72 : Css.Style
ml_72 =
    Css.property "margin-left" "18rem"


{-| The tailwind class `ml-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_8 : Css.Style
ml_8 =
    Css.property "margin-left" "2rem"


{-| The tailwind class `ml-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_80 : Css.Style
ml_80 =
    Css.property "margin-left" "20rem"


{-| The tailwind class `ml-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_9 : Css.Style
ml_9 =
    Css.property "margin-left" "2.25rem"


{-| The tailwind class `ml-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_96 : Css.Style
ml_96 =
    Css.property "margin-left" "24rem"


{-| The tailwind class `ml-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_auto : Css.Style
ml_auto =
    Css.property "margin-left" "auto"


{-| The tailwind class `ml-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ml_px : Css.Style
ml_px =
    Css.property "margin-left" "1px"


{-| The tailwind class `mr-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_0 : Css.Style
mr_0 =
    Css.property "margin-right" "0px"


{-| The tailwind class `mr-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_0_dot_5 : Css.Style
mr_0_dot_5 =
    Css.property "margin-right" "0.125rem"


{-| The tailwind class `mr-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_1 : Css.Style
mr_1 =
    Css.property "margin-right" "0.25rem"


{-| The tailwind class `mr-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_10 : Css.Style
mr_10 =
    Css.property "margin-right" "2.5rem"


{-| The tailwind class `mr-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_11 : Css.Style
mr_11 =
    Css.property "margin-right" "2.75rem"


{-| The tailwind class `mr-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_12 : Css.Style
mr_12 =
    Css.property "margin-right" "3rem"


{-| The tailwind class `mr-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_14 : Css.Style
mr_14 =
    Css.property "margin-right" "3.5rem"


{-| The tailwind class `mr-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_16 : Css.Style
mr_16 =
    Css.property "margin-right" "4rem"


{-| The tailwind class `mr-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_1_dot_5 : Css.Style
mr_1_dot_5 =
    Css.property "margin-right" "0.375rem"


{-| The tailwind class `mr-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_2 : Css.Style
mr_2 =
    Css.property "margin-right" "0.5rem"


{-| The tailwind class `mr-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_20 : Css.Style
mr_20 =
    Css.property "margin-right" "5rem"


{-| The tailwind class `mr-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_24 : Css.Style
mr_24 =
    Css.property "margin-right" "6rem"


{-| The tailwind class `mr-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_28 : Css.Style
mr_28 =
    Css.property "margin-right" "7rem"


{-| The tailwind class `mr-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_2_dot_5 : Css.Style
mr_2_dot_5 =
    Css.property "margin-right" "0.625rem"


{-| The tailwind class `mr-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_3 : Css.Style
mr_3 =
    Css.property "margin-right" "0.75rem"


{-| The tailwind class `mr-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_32 : Css.Style
mr_32 =
    Css.property "margin-right" "8rem"


{-| The tailwind class `mr-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_36 : Css.Style
mr_36 =
    Css.property "margin-right" "9rem"


{-| The tailwind class `mr-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_3_dot_5 : Css.Style
mr_3_dot_5 =
    Css.property "margin-right" "0.875rem"


{-| The tailwind class `mr-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_4 : Css.Style
mr_4 =
    Css.property "margin-right" "1rem"


{-| The tailwind class `mr-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_40 : Css.Style
mr_40 =
    Css.property "margin-right" "10rem"


{-| The tailwind class `mr-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_44 : Css.Style
mr_44 =
    Css.property "margin-right" "11rem"


{-| The tailwind class `mr-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_48 : Css.Style
mr_48 =
    Css.property "margin-right" "12rem"


{-| The tailwind class `mr-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_5 : Css.Style
mr_5 =
    Css.property "margin-right" "1.25rem"


{-| The tailwind class `mr-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_52 : Css.Style
mr_52 =
    Css.property "margin-right" "13rem"


{-| The tailwind class `mr-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_56 : Css.Style
mr_56 =
    Css.property "margin-right" "14rem"


{-| The tailwind class `mr-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_6 : Css.Style
mr_6 =
    Css.property "margin-right" "1.5rem"


{-| The tailwind class `mr-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_60 : Css.Style
mr_60 =
    Css.property "margin-right" "15rem"


{-| The tailwind class `mr-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_64 : Css.Style
mr_64 =
    Css.property "margin-right" "16rem"


{-| The tailwind class `mr-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_7 : Css.Style
mr_7 =
    Css.property "margin-right" "1.75rem"


{-| The tailwind class `mr-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_72 : Css.Style
mr_72 =
    Css.property "margin-right" "18rem"


{-| The tailwind class `mr-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_8 : Css.Style
mr_8 =
    Css.property "margin-right" "2rem"


{-| The tailwind class `mr-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_80 : Css.Style
mr_80 =
    Css.property "margin-right" "20rem"


{-| The tailwind class `mr-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_9 : Css.Style
mr_9 =
    Css.property "margin-right" "2.25rem"


{-| The tailwind class `mr-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_96 : Css.Style
mr_96 =
    Css.property "margin-right" "24rem"


{-| The tailwind class `mr-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_auto : Css.Style
mr_auto =
    Css.property "margin-right" "auto"


{-| The tailwind class `mr-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mr_px : Css.Style
mr_px =
    Css.property "margin-right" "1px"


{-| The tailwind class `mt-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_0 : Css.Style
mt_0 =
    Css.property "margin-top" "0px"


{-| The tailwind class `mt-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_0_dot_5 : Css.Style
mt_0_dot_5 =
    Css.property "margin-top" "0.125rem"


{-| The tailwind class `mt-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_1 : Css.Style
mt_1 =
    Css.property "margin-top" "0.25rem"


{-| The tailwind class `mt-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_10 : Css.Style
mt_10 =
    Css.property "margin-top" "2.5rem"


{-| The tailwind class `mt-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_11 : Css.Style
mt_11 =
    Css.property "margin-top" "2.75rem"


{-| The tailwind class `mt-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_12 : Css.Style
mt_12 =
    Css.property "margin-top" "3rem"


{-| The tailwind class `mt-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_14 : Css.Style
mt_14 =
    Css.property "margin-top" "3.5rem"


{-| The tailwind class `mt-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_16 : Css.Style
mt_16 =
    Css.property "margin-top" "4rem"


{-| The tailwind class `mt-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_1_dot_5 : Css.Style
mt_1_dot_5 =
    Css.property "margin-top" "0.375rem"


{-| The tailwind class `mt-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_2 : Css.Style
mt_2 =
    Css.property "margin-top" "0.5rem"


{-| The tailwind class `mt-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_20 : Css.Style
mt_20 =
    Css.property "margin-top" "5rem"


{-| The tailwind class `mt-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_24 : Css.Style
mt_24 =
    Css.property "margin-top" "6rem"


{-| The tailwind class `mt-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_28 : Css.Style
mt_28 =
    Css.property "margin-top" "7rem"


{-| The tailwind class `mt-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_2_dot_5 : Css.Style
mt_2_dot_5 =
    Css.property "margin-top" "0.625rem"


{-| The tailwind class `mt-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_3 : Css.Style
mt_3 =
    Css.property "margin-top" "0.75rem"


{-| The tailwind class `mt-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_32 : Css.Style
mt_32 =
    Css.property "margin-top" "8rem"


{-| The tailwind class `mt-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_36 : Css.Style
mt_36 =
    Css.property "margin-top" "9rem"


{-| The tailwind class `mt-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_3_dot_5 : Css.Style
mt_3_dot_5 =
    Css.property "margin-top" "0.875rem"


{-| The tailwind class `mt-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_4 : Css.Style
mt_4 =
    Css.property "margin-top" "1rem"


{-| The tailwind class `mt-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_40 : Css.Style
mt_40 =
    Css.property "margin-top" "10rem"


{-| The tailwind class `mt-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_44 : Css.Style
mt_44 =
    Css.property "margin-top" "11rem"


{-| The tailwind class `mt-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_48 : Css.Style
mt_48 =
    Css.property "margin-top" "12rem"


{-| The tailwind class `mt-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_5 : Css.Style
mt_5 =
    Css.property "margin-top" "1.25rem"


{-| The tailwind class `mt-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_52 : Css.Style
mt_52 =
    Css.property "margin-top" "13rem"


{-| The tailwind class `mt-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_56 : Css.Style
mt_56 =
    Css.property "margin-top" "14rem"


{-| The tailwind class `mt-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_6 : Css.Style
mt_6 =
    Css.property "margin-top" "1.5rem"


{-| The tailwind class `mt-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_60 : Css.Style
mt_60 =
    Css.property "margin-top" "15rem"


{-| The tailwind class `mt-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_64 : Css.Style
mt_64 =
    Css.property "margin-top" "16rem"


{-| The tailwind class `mt-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_7 : Css.Style
mt_7 =
    Css.property "margin-top" "1.75rem"


{-| The tailwind class `mt-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_72 : Css.Style
mt_72 =
    Css.property "margin-top" "18rem"


{-| The tailwind class `mt-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_8 : Css.Style
mt_8 =
    Css.property "margin-top" "2rem"


{-| The tailwind class `mt-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_80 : Css.Style
mt_80 =
    Css.property "margin-top" "20rem"


{-| The tailwind class `mt-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_9 : Css.Style
mt_9 =
    Css.property "margin-top" "2.25rem"


{-| The tailwind class `mt-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_96 : Css.Style
mt_96 =
    Css.property "margin-top" "24rem"


{-| The tailwind class `mt-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_auto : Css.Style
mt_auto =
    Css.property "margin-top" "auto"


{-| The tailwind class `mt-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mt_px : Css.Style
mt_px =
    Css.property "margin-top" "1px"


{-| The tailwind class `mx-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_0 : Css.Style
mx_0 =
    Css.batch
        [ Css.property "margin-left" "0px"
        , Css.property "margin-right" "0px"
        ]


{-| The tailwind class `mx-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_0_dot_5 : Css.Style
mx_0_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.125rem"
        , Css.property "margin-right" "0.125rem"
        ]


{-| The tailwind class `mx-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_1 : Css.Style
mx_1 =
    Css.batch
        [ Css.property "margin-left" "0.25rem"
        , Css.property "margin-right" "0.25rem"
        ]


{-| The tailwind class `mx-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_10 : Css.Style
mx_10 =
    Css.batch
        [ Css.property "margin-left" "2.5rem"
        , Css.property "margin-right" "2.5rem"
        ]


{-| The tailwind class `mx-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_11 : Css.Style
mx_11 =
    Css.batch
        [ Css.property "margin-left" "2.75rem"
        , Css.property "margin-right" "2.75rem"
        ]


{-| The tailwind class `mx-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_12 : Css.Style
mx_12 =
    Css.batch
        [ Css.property "margin-left" "3rem"
        , Css.property "margin-right" "3rem"
        ]


{-| The tailwind class `mx-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_14 : Css.Style
mx_14 =
    Css.batch
        [ Css.property "margin-left" "3.5rem"
        , Css.property "margin-right" "3.5rem"
        ]


{-| The tailwind class `mx-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_16 : Css.Style
mx_16 =
    Css.batch
        [ Css.property "margin-left" "4rem"
        , Css.property "margin-right" "4rem"
        ]


{-| The tailwind class `mx-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_1_dot_5 : Css.Style
mx_1_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.375rem"
        , Css.property "margin-right" "0.375rem"
        ]


{-| The tailwind class `mx-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_2 : Css.Style
mx_2 =
    Css.batch
        [ Css.property "margin-left" "0.5rem"
        , Css.property "margin-right" "0.5rem"
        ]


{-| The tailwind class `mx-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_20 : Css.Style
mx_20 =
    Css.batch
        [ Css.property "margin-left" "5rem"
        , Css.property "margin-right" "5rem"
        ]


{-| The tailwind class `mx-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_24 : Css.Style
mx_24 =
    Css.batch
        [ Css.property "margin-left" "6rem"
        , Css.property "margin-right" "6rem"
        ]


{-| The tailwind class `mx-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_28 : Css.Style
mx_28 =
    Css.batch
        [ Css.property "margin-left" "7rem"
        , Css.property "margin-right" "7rem"
        ]


{-| The tailwind class `mx-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_2_dot_5 : Css.Style
mx_2_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.625rem"
        , Css.property "margin-right" "0.625rem"
        ]


{-| The tailwind class `mx-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_3 : Css.Style
mx_3 =
    Css.batch
        [ Css.property "margin-left" "0.75rem"
        , Css.property "margin-right" "0.75rem"
        ]


{-| The tailwind class `mx-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_32 : Css.Style
mx_32 =
    Css.batch
        [ Css.property "margin-left" "8rem"
        , Css.property "margin-right" "8rem"
        ]


{-| The tailwind class `mx-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_36 : Css.Style
mx_36 =
    Css.batch
        [ Css.property "margin-left" "9rem"
        , Css.property "margin-right" "9rem"
        ]


{-| The tailwind class `mx-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_3_dot_5 : Css.Style
mx_3_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.875rem"
        , Css.property "margin-right" "0.875rem"
        ]


{-| The tailwind class `mx-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_4 : Css.Style
mx_4 =
    Css.batch
        [ Css.property "margin-left" "1rem"
        , Css.property "margin-right" "1rem"
        ]


{-| The tailwind class `mx-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_40 : Css.Style
mx_40 =
    Css.batch
        [ Css.property "margin-left" "10rem"
        , Css.property "margin-right" "10rem"
        ]


{-| The tailwind class `mx-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_44 : Css.Style
mx_44 =
    Css.batch
        [ Css.property "margin-left" "11rem"
        , Css.property "margin-right" "11rem"
        ]


{-| The tailwind class `mx-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_48 : Css.Style
mx_48 =
    Css.batch
        [ Css.property "margin-left" "12rem"
        , Css.property "margin-right" "12rem"
        ]


{-| The tailwind class `mx-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_5 : Css.Style
mx_5 =
    Css.batch
        [ Css.property "margin-left" "1.25rem"
        , Css.property "margin-right" "1.25rem"
        ]


{-| The tailwind class `mx-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_52 : Css.Style
mx_52 =
    Css.batch
        [ Css.property "margin-left" "13rem"
        , Css.property "margin-right" "13rem"
        ]


{-| The tailwind class `mx-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_56 : Css.Style
mx_56 =
    Css.batch
        [ Css.property "margin-left" "14rem"
        , Css.property "margin-right" "14rem"
        ]


{-| The tailwind class `mx-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_6 : Css.Style
mx_6 =
    Css.batch
        [ Css.property "margin-left" "1.5rem"
        , Css.property "margin-right" "1.5rem"
        ]


{-| The tailwind class `mx-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_60 : Css.Style
mx_60 =
    Css.batch
        [ Css.property "margin-left" "15rem"
        , Css.property "margin-right" "15rem"
        ]


{-| The tailwind class `mx-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_64 : Css.Style
mx_64 =
    Css.batch
        [ Css.property "margin-left" "16rem"
        , Css.property "margin-right" "16rem"
        ]


{-| The tailwind class `mx-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_7 : Css.Style
mx_7 =
    Css.batch
        [ Css.property "margin-left" "1.75rem"
        , Css.property "margin-right" "1.75rem"
        ]


{-| The tailwind class `mx-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_72 : Css.Style
mx_72 =
    Css.batch
        [ Css.property "margin-left" "18rem"
        , Css.property "margin-right" "18rem"
        ]


{-| The tailwind class `mx-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_8 : Css.Style
mx_8 =
    Css.batch
        [ Css.property "margin-left" "2rem"
        , Css.property "margin-right" "2rem"
        ]


{-| The tailwind class `mx-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_80 : Css.Style
mx_80 =
    Css.batch
        [ Css.property "margin-left" "20rem"
        , Css.property "margin-right" "20rem"
        ]


{-| The tailwind class `mx-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_9 : Css.Style
mx_9 =
    Css.batch
        [ Css.property "margin-left" "2.25rem"
        , Css.property "margin-right" "2.25rem"
        ]


{-| The tailwind class `mx-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_96 : Css.Style
mx_96 =
    Css.batch
        [ Css.property "margin-left" "24rem"
        , Css.property "margin-right" "24rem"
        ]


{-| The tailwind class `mx-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_auto : Css.Style
mx_auto =
    Css.batch
        [ Css.property "margin-left" "auto"
        , Css.property "margin-right" "auto"
        ]


{-| The tailwind class `mx-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

mx_px : Css.Style
mx_px =
    Css.batch
        [ Css.property "margin-left" "1px"
        , Css.property "margin-right" "1px"
        ]


{-| The tailwind class `my-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_0 : Css.Style
my_0 =
    Css.batch
        [ Css.property "margin-top" "0px"
        , Css.property "margin-bottom" "0px"
        ]


{-| The tailwind class `my-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_0_dot_5 : Css.Style
my_0_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.125rem"
        , Css.property "margin-bottom" "0.125rem"
        ]


{-| The tailwind class `my-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_1 : Css.Style
my_1 =
    Css.batch
        [ Css.property "margin-top" "0.25rem"
        , Css.property "margin-bottom" "0.25rem"
        ]


{-| The tailwind class `my-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_10 : Css.Style
my_10 =
    Css.batch
        [ Css.property "margin-top" "2.5rem"
        , Css.property "margin-bottom" "2.5rem"
        ]


{-| The tailwind class `my-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_11 : Css.Style
my_11 =
    Css.batch
        [ Css.property "margin-top" "2.75rem"
        , Css.property "margin-bottom" "2.75rem"
        ]


{-| The tailwind class `my-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_12 : Css.Style
my_12 =
    Css.batch
        [ Css.property "margin-top" "3rem"
        , Css.property "margin-bottom" "3rem"
        ]


{-| The tailwind class `my-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_14 : Css.Style
my_14 =
    Css.batch
        [ Css.property "margin-top" "3.5rem"
        , Css.property "margin-bottom" "3.5rem"
        ]


{-| The tailwind class `my-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_16 : Css.Style
my_16 =
    Css.batch
        [ Css.property "margin-top" "4rem"
        , Css.property "margin-bottom" "4rem"
        ]


{-| The tailwind class `my-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_1_dot_5 : Css.Style
my_1_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.375rem"
        , Css.property "margin-bottom" "0.375rem"
        ]


{-| The tailwind class `my-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_2 : Css.Style
my_2 =
    Css.batch
        [ Css.property "margin-top" "0.5rem"
        , Css.property "margin-bottom" "0.5rem"
        ]


{-| The tailwind class `my-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_20 : Css.Style
my_20 =
    Css.batch
        [ Css.property "margin-top" "5rem"
        , Css.property "margin-bottom" "5rem"
        ]


{-| The tailwind class `my-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_24 : Css.Style
my_24 =
    Css.batch
        [ Css.property "margin-top" "6rem"
        , Css.property "margin-bottom" "6rem"
        ]


{-| The tailwind class `my-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_28 : Css.Style
my_28 =
    Css.batch
        [ Css.property "margin-top" "7rem"
        , Css.property "margin-bottom" "7rem"
        ]


{-| The tailwind class `my-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_2_dot_5 : Css.Style
my_2_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.625rem"
        , Css.property "margin-bottom" "0.625rem"
        ]


{-| The tailwind class `my-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_3 : Css.Style
my_3 =
    Css.batch
        [ Css.property "margin-top" "0.75rem"
        , Css.property "margin-bottom" "0.75rem"
        ]


{-| The tailwind class `my-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_32 : Css.Style
my_32 =
    Css.batch
        [ Css.property "margin-top" "8rem"
        , Css.property "margin-bottom" "8rem"
        ]


{-| The tailwind class `my-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_36 : Css.Style
my_36 =
    Css.batch
        [ Css.property "margin-top" "9rem"
        , Css.property "margin-bottom" "9rem"
        ]


{-| The tailwind class `my-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_3_dot_5 : Css.Style
my_3_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.875rem"
        , Css.property "margin-bottom" "0.875rem"
        ]


{-| The tailwind class `my-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_4 : Css.Style
my_4 =
    Css.batch
        [ Css.property "margin-top" "1rem"
        , Css.property "margin-bottom" "1rem"
        ]


{-| The tailwind class `my-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_40 : Css.Style
my_40 =
    Css.batch
        [ Css.property "margin-top" "10rem"
        , Css.property "margin-bottom" "10rem"
        ]


{-| The tailwind class `my-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_44 : Css.Style
my_44 =
    Css.batch
        [ Css.property "margin-top" "11rem"
        , Css.property "margin-bottom" "11rem"
        ]


{-| The tailwind class `my-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_48 : Css.Style
my_48 =
    Css.batch
        [ Css.property "margin-top" "12rem"
        , Css.property "margin-bottom" "12rem"
        ]


{-| The tailwind class `my-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_5 : Css.Style
my_5 =
    Css.batch
        [ Css.property "margin-top" "1.25rem"
        , Css.property "margin-bottom" "1.25rem"
        ]


{-| The tailwind class `my-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_52 : Css.Style
my_52 =
    Css.batch
        [ Css.property "margin-top" "13rem"
        , Css.property "margin-bottom" "13rem"
        ]


{-| The tailwind class `my-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_56 : Css.Style
my_56 =
    Css.batch
        [ Css.property "margin-top" "14rem"
        , Css.property "margin-bottom" "14rem"
        ]


{-| The tailwind class `my-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_6 : Css.Style
my_6 =
    Css.batch
        [ Css.property "margin-top" "1.5rem"
        , Css.property "margin-bottom" "1.5rem"
        ]


{-| The tailwind class `my-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_60 : Css.Style
my_60 =
    Css.batch
        [ Css.property "margin-top" "15rem"
        , Css.property "margin-bottom" "15rem"
        ]


{-| The tailwind class `my-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_64 : Css.Style
my_64 =
    Css.batch
        [ Css.property "margin-top" "16rem"
        , Css.property "margin-bottom" "16rem"
        ]


{-| The tailwind class `my-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_7 : Css.Style
my_7 =
    Css.batch
        [ Css.property "margin-top" "1.75rem"
        , Css.property "margin-bottom" "1.75rem"
        ]


{-| The tailwind class `my-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_72 : Css.Style
my_72 =
    Css.batch
        [ Css.property "margin-top" "18rem"
        , Css.property "margin-bottom" "18rem"
        ]


{-| The tailwind class `my-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_8 : Css.Style
my_8 =
    Css.batch
        [ Css.property "margin-top" "2rem"
        , Css.property "margin-bottom" "2rem"
        ]


{-| The tailwind class `my-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_80 : Css.Style
my_80 =
    Css.batch
        [ Css.property "margin-top" "20rem"
        , Css.property "margin-bottom" "20rem"
        ]


{-| The tailwind class `my-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_9 : Css.Style
my_9 =
    Css.batch
        [ Css.property "margin-top" "2.25rem"
        , Css.property "margin-bottom" "2.25rem"
        ]


{-| The tailwind class `my-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_96 : Css.Style
my_96 =
    Css.batch
        [ Css.property "margin-top" "24rem"
        , Css.property "margin-bottom" "24rem"
        ]


{-| The tailwind class `my-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_auto : Css.Style
my_auto =
    Css.batch
        [ Css.property "margin-top" "auto"
        , Css.property "margin-bottom" "auto"
        ]


{-| The tailwind class `my-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

my_px : Css.Style
my_px =
    Css.batch
        [ Css.property "margin-top" "1px"
        , Css.property "margin-bottom" "1px"
        ]


{-| The tailwind class `-backdrop-hue-rotate-15`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_backdrop_hue_rotate_15 : Css.Style
neg_backdrop_hue_rotate_15 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-15deg)"


{-| The tailwind class `-backdrop-hue-rotate-180`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_backdrop_hue_rotate_180 : Css.Style
neg_backdrop_hue_rotate_180 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-180deg)"


{-| The tailwind class `-backdrop-hue-rotate-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_backdrop_hue_rotate_30 : Css.Style
neg_backdrop_hue_rotate_30 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-30deg)"


{-| The tailwind class `-backdrop-hue-rotate-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_backdrop_hue_rotate_60 : Css.Style
neg_backdrop_hue_rotate_60 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-60deg)"


{-| The tailwind class `-backdrop-hue-rotate-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_backdrop_hue_rotate_90 : Css.Style
neg_backdrop_hue_rotate_90 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-90deg)"


{-| The tailwind class `-bottom-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_0 : Css.Style
neg_bottom_0 =
    Css.property "bottom" "0px"


{-| The tailwind class `-bottom-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_0_dot_5 : Css.Style
neg_bottom_0_dot_5 =
    Css.property "bottom" "-0.125rem"


{-| The tailwind class `-bottom-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_1 : Css.Style
neg_bottom_1 =
    Css.property "bottom" "-0.25rem"


{-| The tailwind class `-bottom-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_10 : Css.Style
neg_bottom_10 =
    Css.property "bottom" "-2.5rem"


{-| The tailwind class `-bottom-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_11 : Css.Style
neg_bottom_11 =
    Css.property "bottom" "-2.75rem"


{-| The tailwind class `-bottom-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_12 : Css.Style
neg_bottom_12 =
    Css.property "bottom" "-3rem"


{-| The tailwind class `-bottom-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_14 : Css.Style
neg_bottom_14 =
    Css.property "bottom" "-3.5rem"


{-| The tailwind class `-bottom-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_16 : Css.Style
neg_bottom_16 =
    Css.property "bottom" "-4rem"


{-| The tailwind class `-bottom-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_1_dot_5 : Css.Style
neg_bottom_1_dot_5 =
    Css.property "bottom" "-0.375rem"


{-| The tailwind class `-bottom-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_1over2 : Css.Style
neg_bottom_1over2 =
    Css.property "bottom" "-50%"


{-| The tailwind class `-bottom-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_1over3 : Css.Style
neg_bottom_1over3 =
    Css.property "bottom" "-33.333333%"


{-| The tailwind class `-bottom-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_1over4 : Css.Style
neg_bottom_1over4 =
    Css.property "bottom" "-25%"


{-| The tailwind class `-bottom-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_2 : Css.Style
neg_bottom_2 =
    Css.property "bottom" "-0.5rem"


{-| The tailwind class `-bottom-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_20 : Css.Style
neg_bottom_20 =
    Css.property "bottom" "-5rem"


{-| The tailwind class `-bottom-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_24 : Css.Style
neg_bottom_24 =
    Css.property "bottom" "-6rem"


{-| The tailwind class `-bottom-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_28 : Css.Style
neg_bottom_28 =
    Css.property "bottom" "-7rem"


{-| The tailwind class `-bottom-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_2_dot_5 : Css.Style
neg_bottom_2_dot_5 =
    Css.property "bottom" "-0.625rem"


{-| The tailwind class `-bottom-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_2over3 : Css.Style
neg_bottom_2over3 =
    Css.property "bottom" "-66.666667%"


{-| The tailwind class `-bottom-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_2over4 : Css.Style
neg_bottom_2over4 =
    Css.property "bottom" "-50%"


{-| The tailwind class `-bottom-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_3 : Css.Style
neg_bottom_3 =
    Css.property "bottom" "-0.75rem"


{-| The tailwind class `-bottom-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_32 : Css.Style
neg_bottom_32 =
    Css.property "bottom" "-8rem"


{-| The tailwind class `-bottom-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_36 : Css.Style
neg_bottom_36 =
    Css.property "bottom" "-9rem"


{-| The tailwind class `-bottom-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_3_dot_5 : Css.Style
neg_bottom_3_dot_5 =
    Css.property "bottom" "-0.875rem"


{-| The tailwind class `-bottom-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_3over4 : Css.Style
neg_bottom_3over4 =
    Css.property "bottom" "-75%"


{-| The tailwind class `-bottom-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_4 : Css.Style
neg_bottom_4 =
    Css.property "bottom" "-1rem"


{-| The tailwind class `-bottom-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_40 : Css.Style
neg_bottom_40 =
    Css.property "bottom" "-10rem"


{-| The tailwind class `-bottom-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_44 : Css.Style
neg_bottom_44 =
    Css.property "bottom" "-11rem"


{-| The tailwind class `-bottom-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_48 : Css.Style
neg_bottom_48 =
    Css.property "bottom" "-12rem"


{-| The tailwind class `-bottom-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_5 : Css.Style
neg_bottom_5 =
    Css.property "bottom" "-1.25rem"


{-| The tailwind class `-bottom-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_52 : Css.Style
neg_bottom_52 =
    Css.property "bottom" "-13rem"


{-| The tailwind class `-bottom-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_56 : Css.Style
neg_bottom_56 =
    Css.property "bottom" "-14rem"


{-| The tailwind class `-bottom-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_6 : Css.Style
neg_bottom_6 =
    Css.property "bottom" "-1.5rem"


{-| The tailwind class `-bottom-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_60 : Css.Style
neg_bottom_60 =
    Css.property "bottom" "-15rem"


{-| The tailwind class `-bottom-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_64 : Css.Style
neg_bottom_64 =
    Css.property "bottom" "-16rem"


{-| The tailwind class `-bottom-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_7 : Css.Style
neg_bottom_7 =
    Css.property "bottom" "-1.75rem"


{-| The tailwind class `-bottom-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_72 : Css.Style
neg_bottom_72 =
    Css.property "bottom" "-18rem"


{-| The tailwind class `-bottom-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_8 : Css.Style
neg_bottom_8 =
    Css.property "bottom" "-2rem"


{-| The tailwind class `-bottom-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_80 : Css.Style
neg_bottom_80 =
    Css.property "bottom" "-20rem"


{-| The tailwind class `-bottom-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_9 : Css.Style
neg_bottom_9 =
    Css.property "bottom" "-2.25rem"


{-| The tailwind class `-bottom-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_96 : Css.Style
neg_bottom_96 =
    Css.property "bottom" "-24rem"


{-| The tailwind class `-bottom-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_full : Css.Style
neg_bottom_full =
    Css.property "bottom" "-100%"


{-| The tailwind class `-bottom-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_bottom_px : Css.Style
neg_bottom_px =
    Css.property "bottom" "-1px"


{-| The tailwind class `-hue-rotate-15`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_hue_rotate_15 : Css.Style
neg_hue_rotate_15 =
    Css.property "--tw-hue-rotate" "hue-rotate(-15deg)"


{-| The tailwind class `-hue-rotate-180`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_hue_rotate_180 : Css.Style
neg_hue_rotate_180 =
    Css.property "--tw-hue-rotate" "hue-rotate(-180deg)"


{-| The tailwind class `-hue-rotate-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_hue_rotate_30 : Css.Style
neg_hue_rotate_30 =
    Css.property "--tw-hue-rotate" "hue-rotate(-30deg)"


{-| The tailwind class `-hue-rotate-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_hue_rotate_60 : Css.Style
neg_hue_rotate_60 =
    Css.property "--tw-hue-rotate" "hue-rotate(-60deg)"


{-| The tailwind class `-hue-rotate-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_hue_rotate_90 : Css.Style
neg_hue_rotate_90 =
    Css.property "--tw-hue-rotate" "hue-rotate(-90deg)"


{-| The tailwind class `-inset-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_0 : Css.Style
neg_inset_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "right" "0px"
        , Css.property "bottom" "0px"
        , Css.property "left" "0px"
        ]


{-| The tailwind class `-inset-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_0_dot_5 : Css.Style
neg_inset_0_dot_5 =
    Css.batch
        [ Css.property "top" "-0.125rem"
        , Css.property "right" "-0.125rem"
        , Css.property "bottom" "-0.125rem"
        , Css.property "left" "-0.125rem"
        ]


{-| The tailwind class `-inset-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_1 : Css.Style
neg_inset_1 =
    Css.batch
        [ Css.property "top" "-0.25rem"
        , Css.property "right" "-0.25rem"
        , Css.property "bottom" "-0.25rem"
        , Css.property "left" "-0.25rem"
        ]


{-| The tailwind class `-inset-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_10 : Css.Style
neg_inset_10 =
    Css.batch
        [ Css.property "top" "-2.5rem"
        , Css.property "right" "-2.5rem"
        , Css.property "bottom" "-2.5rem"
        , Css.property "left" "-2.5rem"
        ]


{-| The tailwind class `-inset-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_11 : Css.Style
neg_inset_11 =
    Css.batch
        [ Css.property "top" "-2.75rem"
        , Css.property "right" "-2.75rem"
        , Css.property "bottom" "-2.75rem"
        , Css.property "left" "-2.75rem"
        ]


{-| The tailwind class `-inset-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_12 : Css.Style
neg_inset_12 =
    Css.batch
        [ Css.property "top" "-3rem"
        , Css.property "right" "-3rem"
        , Css.property "bottom" "-3rem"
        , Css.property "left" "-3rem"
        ]


{-| The tailwind class `-inset-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_14 : Css.Style
neg_inset_14 =
    Css.batch
        [ Css.property "top" "-3.5rem"
        , Css.property "right" "-3.5rem"
        , Css.property "bottom" "-3.5rem"
        , Css.property "left" "-3.5rem"
        ]


{-| The tailwind class `-inset-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_16 : Css.Style
neg_inset_16 =
    Css.batch
        [ Css.property "top" "-4rem"
        , Css.property "right" "-4rem"
        , Css.property "bottom" "-4rem"
        , Css.property "left" "-4rem"
        ]


{-| The tailwind class `-inset-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_1_dot_5 : Css.Style
neg_inset_1_dot_5 =
    Css.batch
        [ Css.property "top" "-0.375rem"
        , Css.property "right" "-0.375rem"
        , Css.property "bottom" "-0.375rem"
        , Css.property "left" "-0.375rem"
        ]


{-| The tailwind class `-inset-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_1over2 : Css.Style
neg_inset_1over2 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "right" "-50%"
        , Css.property "bottom" "-50%"
        , Css.property "left" "-50%"
        ]


{-| The tailwind class `-inset-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_1over3 : Css.Style
neg_inset_1over3 =
    Css.batch
        [ Css.property "top" "-33.333333%"
        , Css.property "right" "-33.333333%"
        , Css.property "bottom" "-33.333333%"
        , Css.property "left" "-33.333333%"
        ]


{-| The tailwind class `-inset-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_1over4 : Css.Style
neg_inset_1over4 =
    Css.batch
        [ Css.property "top" "-25%"
        , Css.property "right" "-25%"
        , Css.property "bottom" "-25%"
        , Css.property "left" "-25%"
        ]


{-| The tailwind class `-inset-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_2 : Css.Style
neg_inset_2 =
    Css.batch
        [ Css.property "top" "-0.5rem"
        , Css.property "right" "-0.5rem"
        , Css.property "bottom" "-0.5rem"
        , Css.property "left" "-0.5rem"
        ]


{-| The tailwind class `-inset-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_20 : Css.Style
neg_inset_20 =
    Css.batch
        [ Css.property "top" "-5rem"
        , Css.property "right" "-5rem"
        , Css.property "bottom" "-5rem"
        , Css.property "left" "-5rem"
        ]


{-| The tailwind class `-inset-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_24 : Css.Style
neg_inset_24 =
    Css.batch
        [ Css.property "top" "-6rem"
        , Css.property "right" "-6rem"
        , Css.property "bottom" "-6rem"
        , Css.property "left" "-6rem"
        ]


{-| The tailwind class `-inset-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_28 : Css.Style
neg_inset_28 =
    Css.batch
        [ Css.property "top" "-7rem"
        , Css.property "right" "-7rem"
        , Css.property "bottom" "-7rem"
        , Css.property "left" "-7rem"
        ]


{-| The tailwind class `-inset-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_2_dot_5 : Css.Style
neg_inset_2_dot_5 =
    Css.batch
        [ Css.property "top" "-0.625rem"
        , Css.property "right" "-0.625rem"
        , Css.property "bottom" "-0.625rem"
        , Css.property "left" "-0.625rem"
        ]


{-| The tailwind class `-inset-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_2over3 : Css.Style
neg_inset_2over3 =
    Css.batch
        [ Css.property "top" "-66.666667%"
        , Css.property "right" "-66.666667%"
        , Css.property "bottom" "-66.666667%"
        , Css.property "left" "-66.666667%"
        ]


{-| The tailwind class `-inset-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_2over4 : Css.Style
neg_inset_2over4 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "right" "-50%"
        , Css.property "bottom" "-50%"
        , Css.property "left" "-50%"
        ]


{-| The tailwind class `-inset-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_3 : Css.Style
neg_inset_3 =
    Css.batch
        [ Css.property "top" "-0.75rem"
        , Css.property "right" "-0.75rem"
        , Css.property "bottom" "-0.75rem"
        , Css.property "left" "-0.75rem"
        ]


{-| The tailwind class `-inset-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_32 : Css.Style
neg_inset_32 =
    Css.batch
        [ Css.property "top" "-8rem"
        , Css.property "right" "-8rem"
        , Css.property "bottom" "-8rem"
        , Css.property "left" "-8rem"
        ]


{-| The tailwind class `-inset-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_36 : Css.Style
neg_inset_36 =
    Css.batch
        [ Css.property "top" "-9rem"
        , Css.property "right" "-9rem"
        , Css.property "bottom" "-9rem"
        , Css.property "left" "-9rem"
        ]


{-| The tailwind class `-inset-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_3_dot_5 : Css.Style
neg_inset_3_dot_5 =
    Css.batch
        [ Css.property "top" "-0.875rem"
        , Css.property "right" "-0.875rem"
        , Css.property "bottom" "-0.875rem"
        , Css.property "left" "-0.875rem"
        ]


{-| The tailwind class `-inset-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_3over4 : Css.Style
neg_inset_3over4 =
    Css.batch
        [ Css.property "top" "-75%"
        , Css.property "right" "-75%"
        , Css.property "bottom" "-75%"
        , Css.property "left" "-75%"
        ]


{-| The tailwind class `-inset-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_4 : Css.Style
neg_inset_4 =
    Css.batch
        [ Css.property "top" "-1rem"
        , Css.property "right" "-1rem"
        , Css.property "bottom" "-1rem"
        , Css.property "left" "-1rem"
        ]


{-| The tailwind class `-inset-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_40 : Css.Style
neg_inset_40 =
    Css.batch
        [ Css.property "top" "-10rem"
        , Css.property "right" "-10rem"
        , Css.property "bottom" "-10rem"
        , Css.property "left" "-10rem"
        ]


{-| The tailwind class `-inset-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_44 : Css.Style
neg_inset_44 =
    Css.batch
        [ Css.property "top" "-11rem"
        , Css.property "right" "-11rem"
        , Css.property "bottom" "-11rem"
        , Css.property "left" "-11rem"
        ]


{-| The tailwind class `-inset-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_48 : Css.Style
neg_inset_48 =
    Css.batch
        [ Css.property "top" "-12rem"
        , Css.property "right" "-12rem"
        , Css.property "bottom" "-12rem"
        , Css.property "left" "-12rem"
        ]


{-| The tailwind class `-inset-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_5 : Css.Style
neg_inset_5 =
    Css.batch
        [ Css.property "top" "-1.25rem"
        , Css.property "right" "-1.25rem"
        , Css.property "bottom" "-1.25rem"
        , Css.property "left" "-1.25rem"
        ]


{-| The tailwind class `-inset-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_52 : Css.Style
neg_inset_52 =
    Css.batch
        [ Css.property "top" "-13rem"
        , Css.property "right" "-13rem"
        , Css.property "bottom" "-13rem"
        , Css.property "left" "-13rem"
        ]


{-| The tailwind class `-inset-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_56 : Css.Style
neg_inset_56 =
    Css.batch
        [ Css.property "top" "-14rem"
        , Css.property "right" "-14rem"
        , Css.property "bottom" "-14rem"
        , Css.property "left" "-14rem"
        ]


{-| The tailwind class `-inset-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_6 : Css.Style
neg_inset_6 =
    Css.batch
        [ Css.property "top" "-1.5rem"
        , Css.property "right" "-1.5rem"
        , Css.property "bottom" "-1.5rem"
        , Css.property "left" "-1.5rem"
        ]


{-| The tailwind class `-inset-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_60 : Css.Style
neg_inset_60 =
    Css.batch
        [ Css.property "top" "-15rem"
        , Css.property "right" "-15rem"
        , Css.property "bottom" "-15rem"
        , Css.property "left" "-15rem"
        ]


{-| The tailwind class `-inset-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_64 : Css.Style
neg_inset_64 =
    Css.batch
        [ Css.property "top" "-16rem"
        , Css.property "right" "-16rem"
        , Css.property "bottom" "-16rem"
        , Css.property "left" "-16rem"
        ]


{-| The tailwind class `-inset-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_7 : Css.Style
neg_inset_7 =
    Css.batch
        [ Css.property "top" "-1.75rem"
        , Css.property "right" "-1.75rem"
        , Css.property "bottom" "-1.75rem"
        , Css.property "left" "-1.75rem"
        ]


{-| The tailwind class `-inset-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_72 : Css.Style
neg_inset_72 =
    Css.batch
        [ Css.property "top" "-18rem"
        , Css.property "right" "-18rem"
        , Css.property "bottom" "-18rem"
        , Css.property "left" "-18rem"
        ]


{-| The tailwind class `-inset-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_8 : Css.Style
neg_inset_8 =
    Css.batch
        [ Css.property "top" "-2rem"
        , Css.property "right" "-2rem"
        , Css.property "bottom" "-2rem"
        , Css.property "left" "-2rem"
        ]


{-| The tailwind class `-inset-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_80 : Css.Style
neg_inset_80 =
    Css.batch
        [ Css.property "top" "-20rem"
        , Css.property "right" "-20rem"
        , Css.property "bottom" "-20rem"
        , Css.property "left" "-20rem"
        ]


{-| The tailwind class `-inset-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_9 : Css.Style
neg_inset_9 =
    Css.batch
        [ Css.property "top" "-2.25rem"
        , Css.property "right" "-2.25rem"
        , Css.property "bottom" "-2.25rem"
        , Css.property "left" "-2.25rem"
        ]


{-| The tailwind class `-inset-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_96 : Css.Style
neg_inset_96 =
    Css.batch
        [ Css.property "top" "-24rem"
        , Css.property "right" "-24rem"
        , Css.property "bottom" "-24rem"
        , Css.property "left" "-24rem"
        ]


{-| The tailwind class `-inset-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_full : Css.Style
neg_inset_full =
    Css.batch
        [ Css.property "top" "-100%"
        , Css.property "right" "-100%"
        , Css.property "bottom" "-100%"
        , Css.property "left" "-100%"
        ]


{-| The tailwind class `-inset-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_px : Css.Style
neg_inset_px =
    Css.batch
        [ Css.property "top" "-1px"
        , Css.property "right" "-1px"
        , Css.property "bottom" "-1px"
        , Css.property "left" "-1px"
        ]


{-| The tailwind class `-inset-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_0 : Css.Style
neg_inset_x_0 =
    Css.batch
        [ Css.property "left" "0px"
        , Css.property "right" "0px"
        ]


{-| The tailwind class `-inset-x-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_0_dot_5 : Css.Style
neg_inset_x_0_dot_5 =
    Css.batch
        [ Css.property "left" "-0.125rem"
        , Css.property "right" "-0.125rem"
        ]


{-| The tailwind class `-inset-x-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_1 : Css.Style
neg_inset_x_1 =
    Css.batch
        [ Css.property "left" "-0.25rem"
        , Css.property "right" "-0.25rem"
        ]


{-| The tailwind class `-inset-x-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_10 : Css.Style
neg_inset_x_10 =
    Css.batch
        [ Css.property "left" "-2.5rem"
        , Css.property "right" "-2.5rem"
        ]


{-| The tailwind class `-inset-x-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_11 : Css.Style
neg_inset_x_11 =
    Css.batch
        [ Css.property "left" "-2.75rem"
        , Css.property "right" "-2.75rem"
        ]


{-| The tailwind class `-inset-x-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_12 : Css.Style
neg_inset_x_12 =
    Css.batch
        [ Css.property "left" "-3rem"
        , Css.property "right" "-3rem"
        ]


{-| The tailwind class `-inset-x-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_14 : Css.Style
neg_inset_x_14 =
    Css.batch
        [ Css.property "left" "-3.5rem"
        , Css.property "right" "-3.5rem"
        ]


{-| The tailwind class `-inset-x-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_16 : Css.Style
neg_inset_x_16 =
    Css.batch
        [ Css.property "left" "-4rem"
        , Css.property "right" "-4rem"
        ]


{-| The tailwind class `-inset-x-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_1_dot_5 : Css.Style
neg_inset_x_1_dot_5 =
    Css.batch
        [ Css.property "left" "-0.375rem"
        , Css.property "right" "-0.375rem"
        ]


{-| The tailwind class `-inset-x-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_1over2 : Css.Style
neg_inset_x_1over2 =
    Css.batch
        [ Css.property "left" "-50%"
        , Css.property "right" "-50%"
        ]


{-| The tailwind class `-inset-x-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_1over3 : Css.Style
neg_inset_x_1over3 =
    Css.batch
        [ Css.property "left" "-33.333333%"
        , Css.property "right" "-33.333333%"
        ]


{-| The tailwind class `-inset-x-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_1over4 : Css.Style
neg_inset_x_1over4 =
    Css.batch
        [ Css.property "left" "-25%"
        , Css.property "right" "-25%"
        ]


{-| The tailwind class `-inset-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_2 : Css.Style
neg_inset_x_2 =
    Css.batch
        [ Css.property "left" "-0.5rem"
        , Css.property "right" "-0.5rem"
        ]


{-| The tailwind class `-inset-x-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_20 : Css.Style
neg_inset_x_20 =
    Css.batch
        [ Css.property "left" "-5rem"
        , Css.property "right" "-5rem"
        ]


{-| The tailwind class `-inset-x-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_24 : Css.Style
neg_inset_x_24 =
    Css.batch
        [ Css.property "left" "-6rem"
        , Css.property "right" "-6rem"
        ]


{-| The tailwind class `-inset-x-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_28 : Css.Style
neg_inset_x_28 =
    Css.batch
        [ Css.property "left" "-7rem"
        , Css.property "right" "-7rem"
        ]


{-| The tailwind class `-inset-x-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_2_dot_5 : Css.Style
neg_inset_x_2_dot_5 =
    Css.batch
        [ Css.property "left" "-0.625rem"
        , Css.property "right" "-0.625rem"
        ]


{-| The tailwind class `-inset-x-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_2over3 : Css.Style
neg_inset_x_2over3 =
    Css.batch
        [ Css.property "left" "-66.666667%"
        , Css.property "right" "-66.666667%"
        ]


{-| The tailwind class `-inset-x-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_2over4 : Css.Style
neg_inset_x_2over4 =
    Css.batch
        [ Css.property "left" "-50%"
        , Css.property "right" "-50%"
        ]


{-| The tailwind class `-inset-x-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_3 : Css.Style
neg_inset_x_3 =
    Css.batch
        [ Css.property "left" "-0.75rem"
        , Css.property "right" "-0.75rem"
        ]


{-| The tailwind class `-inset-x-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_32 : Css.Style
neg_inset_x_32 =
    Css.batch
        [ Css.property "left" "-8rem"
        , Css.property "right" "-8rem"
        ]


{-| The tailwind class `-inset-x-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_36 : Css.Style
neg_inset_x_36 =
    Css.batch
        [ Css.property "left" "-9rem"
        , Css.property "right" "-9rem"
        ]


{-| The tailwind class `-inset-x-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_3_dot_5 : Css.Style
neg_inset_x_3_dot_5 =
    Css.batch
        [ Css.property "left" "-0.875rem"
        , Css.property "right" "-0.875rem"
        ]


{-| The tailwind class `-inset-x-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_3over4 : Css.Style
neg_inset_x_3over4 =
    Css.batch
        [ Css.property "left" "-75%"
        , Css.property "right" "-75%"
        ]


{-| The tailwind class `-inset-x-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_4 : Css.Style
neg_inset_x_4 =
    Css.batch
        [ Css.property "left" "-1rem"
        , Css.property "right" "-1rem"
        ]


{-| The tailwind class `-inset-x-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_40 : Css.Style
neg_inset_x_40 =
    Css.batch
        [ Css.property "left" "-10rem"
        , Css.property "right" "-10rem"
        ]


{-| The tailwind class `-inset-x-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_44 : Css.Style
neg_inset_x_44 =
    Css.batch
        [ Css.property "left" "-11rem"
        , Css.property "right" "-11rem"
        ]


{-| The tailwind class `-inset-x-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_48 : Css.Style
neg_inset_x_48 =
    Css.batch
        [ Css.property "left" "-12rem"
        , Css.property "right" "-12rem"
        ]


{-| The tailwind class `-inset-x-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_5 : Css.Style
neg_inset_x_5 =
    Css.batch
        [ Css.property "left" "-1.25rem"
        , Css.property "right" "-1.25rem"
        ]


{-| The tailwind class `-inset-x-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_52 : Css.Style
neg_inset_x_52 =
    Css.batch
        [ Css.property "left" "-13rem"
        , Css.property "right" "-13rem"
        ]


{-| The tailwind class `-inset-x-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_56 : Css.Style
neg_inset_x_56 =
    Css.batch
        [ Css.property "left" "-14rem"
        , Css.property "right" "-14rem"
        ]


{-| The tailwind class `-inset-x-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_6 : Css.Style
neg_inset_x_6 =
    Css.batch
        [ Css.property "left" "-1.5rem"
        , Css.property "right" "-1.5rem"
        ]


{-| The tailwind class `-inset-x-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_60 : Css.Style
neg_inset_x_60 =
    Css.batch
        [ Css.property "left" "-15rem"
        , Css.property "right" "-15rem"
        ]


{-| The tailwind class `-inset-x-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_64 : Css.Style
neg_inset_x_64 =
    Css.batch
        [ Css.property "left" "-16rem"
        , Css.property "right" "-16rem"
        ]


{-| The tailwind class `-inset-x-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_7 : Css.Style
neg_inset_x_7 =
    Css.batch
        [ Css.property "left" "-1.75rem"
        , Css.property "right" "-1.75rem"
        ]


{-| The tailwind class `-inset-x-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_72 : Css.Style
neg_inset_x_72 =
    Css.batch
        [ Css.property "left" "-18rem"
        , Css.property "right" "-18rem"
        ]


{-| The tailwind class `-inset-x-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_8 : Css.Style
neg_inset_x_8 =
    Css.batch
        [ Css.property "left" "-2rem"
        , Css.property "right" "-2rem"
        ]


{-| The tailwind class `-inset-x-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_80 : Css.Style
neg_inset_x_80 =
    Css.batch
        [ Css.property "left" "-20rem"
        , Css.property "right" "-20rem"
        ]


{-| The tailwind class `-inset-x-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_9 : Css.Style
neg_inset_x_9 =
    Css.batch
        [ Css.property "left" "-2.25rem"
        , Css.property "right" "-2.25rem"
        ]


{-| The tailwind class `-inset-x-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_96 : Css.Style
neg_inset_x_96 =
    Css.batch
        [ Css.property "left" "-24rem"
        , Css.property "right" "-24rem"
        ]


{-| The tailwind class `-inset-x-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_full : Css.Style
neg_inset_x_full =
    Css.batch
        [ Css.property "left" "-100%"
        , Css.property "right" "-100%"
        ]


{-| The tailwind class `-inset-x-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_x_px : Css.Style
neg_inset_x_px =
    Css.batch
        [ Css.property "left" "-1px"
        , Css.property "right" "-1px"
        ]


{-| The tailwind class `-inset-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_0 : Css.Style
neg_inset_y_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "bottom" "0px"
        ]


{-| The tailwind class `-inset-y-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_0_dot_5 : Css.Style
neg_inset_y_0_dot_5 =
    Css.batch
        [ Css.property "top" "-0.125rem"
        , Css.property "bottom" "-0.125rem"
        ]


{-| The tailwind class `-inset-y-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_1 : Css.Style
neg_inset_y_1 =
    Css.batch
        [ Css.property "top" "-0.25rem"
        , Css.property "bottom" "-0.25rem"
        ]


{-| The tailwind class `-inset-y-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_10 : Css.Style
neg_inset_y_10 =
    Css.batch
        [ Css.property "top" "-2.5rem"
        , Css.property "bottom" "-2.5rem"
        ]


{-| The tailwind class `-inset-y-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_11 : Css.Style
neg_inset_y_11 =
    Css.batch
        [ Css.property "top" "-2.75rem"
        , Css.property "bottom" "-2.75rem"
        ]


{-| The tailwind class `-inset-y-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_12 : Css.Style
neg_inset_y_12 =
    Css.batch
        [ Css.property "top" "-3rem"
        , Css.property "bottom" "-3rem"
        ]


{-| The tailwind class `-inset-y-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_14 : Css.Style
neg_inset_y_14 =
    Css.batch
        [ Css.property "top" "-3.5rem"
        , Css.property "bottom" "-3.5rem"
        ]


{-| The tailwind class `-inset-y-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_16 : Css.Style
neg_inset_y_16 =
    Css.batch
        [ Css.property "top" "-4rem"
        , Css.property "bottom" "-4rem"
        ]


{-| The tailwind class `-inset-y-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_1_dot_5 : Css.Style
neg_inset_y_1_dot_5 =
    Css.batch
        [ Css.property "top" "-0.375rem"
        , Css.property "bottom" "-0.375rem"
        ]


{-| The tailwind class `-inset-y-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_1over2 : Css.Style
neg_inset_y_1over2 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "bottom" "-50%"
        ]


{-| The tailwind class `-inset-y-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_1over3 : Css.Style
neg_inset_y_1over3 =
    Css.batch
        [ Css.property "top" "-33.333333%"
        , Css.property "bottom" "-33.333333%"
        ]


{-| The tailwind class `-inset-y-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_1over4 : Css.Style
neg_inset_y_1over4 =
    Css.batch
        [ Css.property "top" "-25%"
        , Css.property "bottom" "-25%"
        ]


{-| The tailwind class `-inset-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_2 : Css.Style
neg_inset_y_2 =
    Css.batch
        [ Css.property "top" "-0.5rem"
        , Css.property "bottom" "-0.5rem"
        ]


{-| The tailwind class `-inset-y-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_20 : Css.Style
neg_inset_y_20 =
    Css.batch
        [ Css.property "top" "-5rem"
        , Css.property "bottom" "-5rem"
        ]


{-| The tailwind class `-inset-y-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_24 : Css.Style
neg_inset_y_24 =
    Css.batch
        [ Css.property "top" "-6rem"
        , Css.property "bottom" "-6rem"
        ]


{-| The tailwind class `-inset-y-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_28 : Css.Style
neg_inset_y_28 =
    Css.batch
        [ Css.property "top" "-7rem"
        , Css.property "bottom" "-7rem"
        ]


{-| The tailwind class `-inset-y-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_2_dot_5 : Css.Style
neg_inset_y_2_dot_5 =
    Css.batch
        [ Css.property "top" "-0.625rem"
        , Css.property "bottom" "-0.625rem"
        ]


{-| The tailwind class `-inset-y-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_2over3 : Css.Style
neg_inset_y_2over3 =
    Css.batch
        [ Css.property "top" "-66.666667%"
        , Css.property "bottom" "-66.666667%"
        ]


{-| The tailwind class `-inset-y-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_2over4 : Css.Style
neg_inset_y_2over4 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "bottom" "-50%"
        ]


{-| The tailwind class `-inset-y-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_3 : Css.Style
neg_inset_y_3 =
    Css.batch
        [ Css.property "top" "-0.75rem"
        , Css.property "bottom" "-0.75rem"
        ]


{-| The tailwind class `-inset-y-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_32 : Css.Style
neg_inset_y_32 =
    Css.batch
        [ Css.property "top" "-8rem"
        , Css.property "bottom" "-8rem"
        ]


{-| The tailwind class `-inset-y-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_36 : Css.Style
neg_inset_y_36 =
    Css.batch
        [ Css.property "top" "-9rem"
        , Css.property "bottom" "-9rem"
        ]


{-| The tailwind class `-inset-y-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_3_dot_5 : Css.Style
neg_inset_y_3_dot_5 =
    Css.batch
        [ Css.property "top" "-0.875rem"
        , Css.property "bottom" "-0.875rem"
        ]


{-| The tailwind class `-inset-y-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_3over4 : Css.Style
neg_inset_y_3over4 =
    Css.batch
        [ Css.property "top" "-75%"
        , Css.property "bottom" "-75%"
        ]


{-| The tailwind class `-inset-y-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_4 : Css.Style
neg_inset_y_4 =
    Css.batch
        [ Css.property "top" "-1rem"
        , Css.property "bottom" "-1rem"
        ]


{-| The tailwind class `-inset-y-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_40 : Css.Style
neg_inset_y_40 =
    Css.batch
        [ Css.property "top" "-10rem"
        , Css.property "bottom" "-10rem"
        ]


{-| The tailwind class `-inset-y-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_44 : Css.Style
neg_inset_y_44 =
    Css.batch
        [ Css.property "top" "-11rem"
        , Css.property "bottom" "-11rem"
        ]


{-| The tailwind class `-inset-y-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_48 : Css.Style
neg_inset_y_48 =
    Css.batch
        [ Css.property "top" "-12rem"
        , Css.property "bottom" "-12rem"
        ]


{-| The tailwind class `-inset-y-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_5 : Css.Style
neg_inset_y_5 =
    Css.batch
        [ Css.property "top" "-1.25rem"
        , Css.property "bottom" "-1.25rem"
        ]


{-| The tailwind class `-inset-y-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_52 : Css.Style
neg_inset_y_52 =
    Css.batch
        [ Css.property "top" "-13rem"
        , Css.property "bottom" "-13rem"
        ]


{-| The tailwind class `-inset-y-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_56 : Css.Style
neg_inset_y_56 =
    Css.batch
        [ Css.property "top" "-14rem"
        , Css.property "bottom" "-14rem"
        ]


{-| The tailwind class `-inset-y-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_6 : Css.Style
neg_inset_y_6 =
    Css.batch
        [ Css.property "top" "-1.5rem"
        , Css.property "bottom" "-1.5rem"
        ]


{-| The tailwind class `-inset-y-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_60 : Css.Style
neg_inset_y_60 =
    Css.batch
        [ Css.property "top" "-15rem"
        , Css.property "bottom" "-15rem"
        ]


{-| The tailwind class `-inset-y-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_64 : Css.Style
neg_inset_y_64 =
    Css.batch
        [ Css.property "top" "-16rem"
        , Css.property "bottom" "-16rem"
        ]


{-| The tailwind class `-inset-y-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_7 : Css.Style
neg_inset_y_7 =
    Css.batch
        [ Css.property "top" "-1.75rem"
        , Css.property "bottom" "-1.75rem"
        ]


{-| The tailwind class `-inset-y-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_72 : Css.Style
neg_inset_y_72 =
    Css.batch
        [ Css.property "top" "-18rem"
        , Css.property "bottom" "-18rem"
        ]


{-| The tailwind class `-inset-y-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_8 : Css.Style
neg_inset_y_8 =
    Css.batch
        [ Css.property "top" "-2rem"
        , Css.property "bottom" "-2rem"
        ]


{-| The tailwind class `-inset-y-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_80 : Css.Style
neg_inset_y_80 =
    Css.batch
        [ Css.property "top" "-20rem"
        , Css.property "bottom" "-20rem"
        ]


{-| The tailwind class `-inset-y-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_9 : Css.Style
neg_inset_y_9 =
    Css.batch
        [ Css.property "top" "-2.25rem"
        , Css.property "bottom" "-2.25rem"
        ]


{-| The tailwind class `-inset-y-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_96 : Css.Style
neg_inset_y_96 =
    Css.batch
        [ Css.property "top" "-24rem"
        , Css.property "bottom" "-24rem"
        ]


{-| The tailwind class `-inset-y-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_full : Css.Style
neg_inset_y_full =
    Css.batch
        [ Css.property "top" "-100%"
        , Css.property "bottom" "-100%"
        ]


{-| The tailwind class `-inset-y-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_inset_y_px : Css.Style
neg_inset_y_px =
    Css.batch
        [ Css.property "top" "-1px"
        , Css.property "bottom" "-1px"
        ]


{-| The tailwind class `-left-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_0 : Css.Style
neg_left_0 =
    Css.property "left" "0px"


{-| The tailwind class `-left-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_0_dot_5 : Css.Style
neg_left_0_dot_5 =
    Css.property "left" "-0.125rem"


{-| The tailwind class `-left-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_1 : Css.Style
neg_left_1 =
    Css.property "left" "-0.25rem"


{-| The tailwind class `-left-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_10 : Css.Style
neg_left_10 =
    Css.property "left" "-2.5rem"


{-| The tailwind class `-left-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_11 : Css.Style
neg_left_11 =
    Css.property "left" "-2.75rem"


{-| The tailwind class `-left-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_12 : Css.Style
neg_left_12 =
    Css.property "left" "-3rem"


{-| The tailwind class `-left-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_14 : Css.Style
neg_left_14 =
    Css.property "left" "-3.5rem"


{-| The tailwind class `-left-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_16 : Css.Style
neg_left_16 =
    Css.property "left" "-4rem"


{-| The tailwind class `-left-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_1_dot_5 : Css.Style
neg_left_1_dot_5 =
    Css.property "left" "-0.375rem"


{-| The tailwind class `-left-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_1over2 : Css.Style
neg_left_1over2 =
    Css.property "left" "-50%"


{-| The tailwind class `-left-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_1over3 : Css.Style
neg_left_1over3 =
    Css.property "left" "-33.333333%"


{-| The tailwind class `-left-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_1over4 : Css.Style
neg_left_1over4 =
    Css.property "left" "-25%"


{-| The tailwind class `-left-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_2 : Css.Style
neg_left_2 =
    Css.property "left" "-0.5rem"


{-| The tailwind class `-left-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_20 : Css.Style
neg_left_20 =
    Css.property "left" "-5rem"


{-| The tailwind class `-left-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_24 : Css.Style
neg_left_24 =
    Css.property "left" "-6rem"


{-| The tailwind class `-left-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_28 : Css.Style
neg_left_28 =
    Css.property "left" "-7rem"


{-| The tailwind class `-left-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_2_dot_5 : Css.Style
neg_left_2_dot_5 =
    Css.property "left" "-0.625rem"


{-| The tailwind class `-left-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_2over3 : Css.Style
neg_left_2over3 =
    Css.property "left" "-66.666667%"


{-| The tailwind class `-left-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_2over4 : Css.Style
neg_left_2over4 =
    Css.property "left" "-50%"


{-| The tailwind class `-left-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_3 : Css.Style
neg_left_3 =
    Css.property "left" "-0.75rem"


{-| The tailwind class `-left-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_32 : Css.Style
neg_left_32 =
    Css.property "left" "-8rem"


{-| The tailwind class `-left-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_36 : Css.Style
neg_left_36 =
    Css.property "left" "-9rem"


{-| The tailwind class `-left-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_3_dot_5 : Css.Style
neg_left_3_dot_5 =
    Css.property "left" "-0.875rem"


{-| The tailwind class `-left-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_3over4 : Css.Style
neg_left_3over4 =
    Css.property "left" "-75%"


{-| The tailwind class `-left-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_4 : Css.Style
neg_left_4 =
    Css.property "left" "-1rem"


{-| The tailwind class `-left-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_40 : Css.Style
neg_left_40 =
    Css.property "left" "-10rem"


{-| The tailwind class `-left-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_44 : Css.Style
neg_left_44 =
    Css.property "left" "-11rem"


{-| The tailwind class `-left-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_48 : Css.Style
neg_left_48 =
    Css.property "left" "-12rem"


{-| The tailwind class `-left-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_5 : Css.Style
neg_left_5 =
    Css.property "left" "-1.25rem"


{-| The tailwind class `-left-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_52 : Css.Style
neg_left_52 =
    Css.property "left" "-13rem"


{-| The tailwind class `-left-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_56 : Css.Style
neg_left_56 =
    Css.property "left" "-14rem"


{-| The tailwind class `-left-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_6 : Css.Style
neg_left_6 =
    Css.property "left" "-1.5rem"


{-| The tailwind class `-left-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_60 : Css.Style
neg_left_60 =
    Css.property "left" "-15rem"


{-| The tailwind class `-left-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_64 : Css.Style
neg_left_64 =
    Css.property "left" "-16rem"


{-| The tailwind class `-left-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_7 : Css.Style
neg_left_7 =
    Css.property "left" "-1.75rem"


{-| The tailwind class `-left-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_72 : Css.Style
neg_left_72 =
    Css.property "left" "-18rem"


{-| The tailwind class `-left-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_8 : Css.Style
neg_left_8 =
    Css.property "left" "-2rem"


{-| The tailwind class `-left-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_80 : Css.Style
neg_left_80 =
    Css.property "left" "-20rem"


{-| The tailwind class `-left-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_9 : Css.Style
neg_left_9 =
    Css.property "left" "-2.25rem"


{-| The tailwind class `-left-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_96 : Css.Style
neg_left_96 =
    Css.property "left" "-24rem"


{-| The tailwind class `-left-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_full : Css.Style
neg_left_full =
    Css.property "left" "-100%"


{-| The tailwind class `-left-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_left_px : Css.Style
neg_left_px =
    Css.property "left" "-1px"


{-| The tailwind class `-m-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_0 : Css.Style
neg_m_0 =
    Css.property "margin" "0px"


{-| The tailwind class `-m-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_0_dot_5 : Css.Style
neg_m_0_dot_5 =
    Css.property "margin" "-0.125rem"


{-| The tailwind class `-m-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_1 : Css.Style
neg_m_1 =
    Css.property "margin" "-0.25rem"


{-| The tailwind class `-m-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_10 : Css.Style
neg_m_10 =
    Css.property "margin" "-2.5rem"


{-| The tailwind class `-m-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_11 : Css.Style
neg_m_11 =
    Css.property "margin" "-2.75rem"


{-| The tailwind class `-m-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_12 : Css.Style
neg_m_12 =
    Css.property "margin" "-3rem"


{-| The tailwind class `-m-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_14 : Css.Style
neg_m_14 =
    Css.property "margin" "-3.5rem"


{-| The tailwind class `-m-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_16 : Css.Style
neg_m_16 =
    Css.property "margin" "-4rem"


{-| The tailwind class `-m-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_1_dot_5 : Css.Style
neg_m_1_dot_5 =
    Css.property "margin" "-0.375rem"


{-| The tailwind class `-m-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_2 : Css.Style
neg_m_2 =
    Css.property "margin" "-0.5rem"


{-| The tailwind class `-m-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_20 : Css.Style
neg_m_20 =
    Css.property "margin" "-5rem"


{-| The tailwind class `-m-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_24 : Css.Style
neg_m_24 =
    Css.property "margin" "-6rem"


{-| The tailwind class `-m-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_28 : Css.Style
neg_m_28 =
    Css.property "margin" "-7rem"


{-| The tailwind class `-m-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_2_dot_5 : Css.Style
neg_m_2_dot_5 =
    Css.property "margin" "-0.625rem"


{-| The tailwind class `-m-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_3 : Css.Style
neg_m_3 =
    Css.property "margin" "-0.75rem"


{-| The tailwind class `-m-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_32 : Css.Style
neg_m_32 =
    Css.property "margin" "-8rem"


{-| The tailwind class `-m-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_36 : Css.Style
neg_m_36 =
    Css.property "margin" "-9rem"


{-| The tailwind class `-m-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_3_dot_5 : Css.Style
neg_m_3_dot_5 =
    Css.property "margin" "-0.875rem"


{-| The tailwind class `-m-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_4 : Css.Style
neg_m_4 =
    Css.property "margin" "-1rem"


{-| The tailwind class `-m-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_40 : Css.Style
neg_m_40 =
    Css.property "margin" "-10rem"


{-| The tailwind class `-m-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_44 : Css.Style
neg_m_44 =
    Css.property "margin" "-11rem"


{-| The tailwind class `-m-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_48 : Css.Style
neg_m_48 =
    Css.property "margin" "-12rem"


{-| The tailwind class `-m-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_5 : Css.Style
neg_m_5 =
    Css.property "margin" "-1.25rem"


{-| The tailwind class `-m-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_52 : Css.Style
neg_m_52 =
    Css.property "margin" "-13rem"


{-| The tailwind class `-m-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_56 : Css.Style
neg_m_56 =
    Css.property "margin" "-14rem"


{-| The tailwind class `-m-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_6 : Css.Style
neg_m_6 =
    Css.property "margin" "-1.5rem"


{-| The tailwind class `-m-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_60 : Css.Style
neg_m_60 =
    Css.property "margin" "-15rem"


{-| The tailwind class `-m-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_64 : Css.Style
neg_m_64 =
    Css.property "margin" "-16rem"


{-| The tailwind class `-m-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_7 : Css.Style
neg_m_7 =
    Css.property "margin" "-1.75rem"


{-| The tailwind class `-m-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_72 : Css.Style
neg_m_72 =
    Css.property "margin" "-18rem"


{-| The tailwind class `-m-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_8 : Css.Style
neg_m_8 =
    Css.property "margin" "-2rem"


{-| The tailwind class `-m-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_80 : Css.Style
neg_m_80 =
    Css.property "margin" "-20rem"


{-| The tailwind class `-m-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_9 : Css.Style
neg_m_9 =
    Css.property "margin" "-2.25rem"


{-| The tailwind class `-m-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_96 : Css.Style
neg_m_96 =
    Css.property "margin" "-24rem"


{-| The tailwind class `-m-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_m_px : Css.Style
neg_m_px =
    Css.property "margin" "-1px"


{-| The tailwind class `-mb-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_0 : Css.Style
neg_mb_0 =
    Css.property "margin-bottom" "0px"


{-| The tailwind class `-mb-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_0_dot_5 : Css.Style
neg_mb_0_dot_5 =
    Css.property "margin-bottom" "-0.125rem"


{-| The tailwind class `-mb-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_1 : Css.Style
neg_mb_1 =
    Css.property "margin-bottom" "-0.25rem"


{-| The tailwind class `-mb-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_10 : Css.Style
neg_mb_10 =
    Css.property "margin-bottom" "-2.5rem"


{-| The tailwind class `-mb-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_11 : Css.Style
neg_mb_11 =
    Css.property "margin-bottom" "-2.75rem"


{-| The tailwind class `-mb-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_12 : Css.Style
neg_mb_12 =
    Css.property "margin-bottom" "-3rem"


{-| The tailwind class `-mb-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_14 : Css.Style
neg_mb_14 =
    Css.property "margin-bottom" "-3.5rem"


{-| The tailwind class `-mb-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_16 : Css.Style
neg_mb_16 =
    Css.property "margin-bottom" "-4rem"


{-| The tailwind class `-mb-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_1_dot_5 : Css.Style
neg_mb_1_dot_5 =
    Css.property "margin-bottom" "-0.375rem"


{-| The tailwind class `-mb-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_2 : Css.Style
neg_mb_2 =
    Css.property "margin-bottom" "-0.5rem"


{-| The tailwind class `-mb-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_20 : Css.Style
neg_mb_20 =
    Css.property "margin-bottom" "-5rem"


{-| The tailwind class `-mb-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_24 : Css.Style
neg_mb_24 =
    Css.property "margin-bottom" "-6rem"


{-| The tailwind class `-mb-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_28 : Css.Style
neg_mb_28 =
    Css.property "margin-bottom" "-7rem"


{-| The tailwind class `-mb-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_2_dot_5 : Css.Style
neg_mb_2_dot_5 =
    Css.property "margin-bottom" "-0.625rem"


{-| The tailwind class `-mb-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_3 : Css.Style
neg_mb_3 =
    Css.property "margin-bottom" "-0.75rem"


{-| The tailwind class `-mb-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_32 : Css.Style
neg_mb_32 =
    Css.property "margin-bottom" "-8rem"


{-| The tailwind class `-mb-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_36 : Css.Style
neg_mb_36 =
    Css.property "margin-bottom" "-9rem"


{-| The tailwind class `-mb-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_3_dot_5 : Css.Style
neg_mb_3_dot_5 =
    Css.property "margin-bottom" "-0.875rem"


{-| The tailwind class `-mb-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_4 : Css.Style
neg_mb_4 =
    Css.property "margin-bottom" "-1rem"


{-| The tailwind class `-mb-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_40 : Css.Style
neg_mb_40 =
    Css.property "margin-bottom" "-10rem"


{-| The tailwind class `-mb-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_44 : Css.Style
neg_mb_44 =
    Css.property "margin-bottom" "-11rem"


{-| The tailwind class `-mb-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_48 : Css.Style
neg_mb_48 =
    Css.property "margin-bottom" "-12rem"


{-| The tailwind class `-mb-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_5 : Css.Style
neg_mb_5 =
    Css.property "margin-bottom" "-1.25rem"


{-| The tailwind class `-mb-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_52 : Css.Style
neg_mb_52 =
    Css.property "margin-bottom" "-13rem"


{-| The tailwind class `-mb-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_56 : Css.Style
neg_mb_56 =
    Css.property "margin-bottom" "-14rem"


{-| The tailwind class `-mb-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_6 : Css.Style
neg_mb_6 =
    Css.property "margin-bottom" "-1.5rem"


{-| The tailwind class `-mb-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_60 : Css.Style
neg_mb_60 =
    Css.property "margin-bottom" "-15rem"


{-| The tailwind class `-mb-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_64 : Css.Style
neg_mb_64 =
    Css.property "margin-bottom" "-16rem"


{-| The tailwind class `-mb-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_7 : Css.Style
neg_mb_7 =
    Css.property "margin-bottom" "-1.75rem"


{-| The tailwind class `-mb-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_72 : Css.Style
neg_mb_72 =
    Css.property "margin-bottom" "-18rem"


{-| The tailwind class `-mb-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_8 : Css.Style
neg_mb_8 =
    Css.property "margin-bottom" "-2rem"


{-| The tailwind class `-mb-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_80 : Css.Style
neg_mb_80 =
    Css.property "margin-bottom" "-20rem"


{-| The tailwind class `-mb-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_9 : Css.Style
neg_mb_9 =
    Css.property "margin-bottom" "-2.25rem"


{-| The tailwind class `-mb-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_96 : Css.Style
neg_mb_96 =
    Css.property "margin-bottom" "-24rem"


{-| The tailwind class `-mb-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mb_px : Css.Style
neg_mb_px =
    Css.property "margin-bottom" "-1px"


{-| The tailwind class `-ml-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_0 : Css.Style
neg_ml_0 =
    Css.property "margin-left" "0px"


{-| The tailwind class `-ml-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_0_dot_5 : Css.Style
neg_ml_0_dot_5 =
    Css.property "margin-left" "-0.125rem"


{-| The tailwind class `-ml-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_1 : Css.Style
neg_ml_1 =
    Css.property "margin-left" "-0.25rem"


{-| The tailwind class `-ml-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_10 : Css.Style
neg_ml_10 =
    Css.property "margin-left" "-2.5rem"


{-| The tailwind class `-ml-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_11 : Css.Style
neg_ml_11 =
    Css.property "margin-left" "-2.75rem"


{-| The tailwind class `-ml-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_12 : Css.Style
neg_ml_12 =
    Css.property "margin-left" "-3rem"


{-| The tailwind class `-ml-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_14 : Css.Style
neg_ml_14 =
    Css.property "margin-left" "-3.5rem"


{-| The tailwind class `-ml-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_16 : Css.Style
neg_ml_16 =
    Css.property "margin-left" "-4rem"


{-| The tailwind class `-ml-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_1_dot_5 : Css.Style
neg_ml_1_dot_5 =
    Css.property "margin-left" "-0.375rem"


{-| The tailwind class `-ml-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_2 : Css.Style
neg_ml_2 =
    Css.property "margin-left" "-0.5rem"


{-| The tailwind class `-ml-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_20 : Css.Style
neg_ml_20 =
    Css.property "margin-left" "-5rem"


{-| The tailwind class `-ml-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_24 : Css.Style
neg_ml_24 =
    Css.property "margin-left" "-6rem"


{-| The tailwind class `-ml-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_28 : Css.Style
neg_ml_28 =
    Css.property "margin-left" "-7rem"


{-| The tailwind class `-ml-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_2_dot_5 : Css.Style
neg_ml_2_dot_5 =
    Css.property "margin-left" "-0.625rem"


{-| The tailwind class `-ml-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_3 : Css.Style
neg_ml_3 =
    Css.property "margin-left" "-0.75rem"


{-| The tailwind class `-ml-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_32 : Css.Style
neg_ml_32 =
    Css.property "margin-left" "-8rem"


{-| The tailwind class `-ml-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_36 : Css.Style
neg_ml_36 =
    Css.property "margin-left" "-9rem"


{-| The tailwind class `-ml-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_3_dot_5 : Css.Style
neg_ml_3_dot_5 =
    Css.property "margin-left" "-0.875rem"


{-| The tailwind class `-ml-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_4 : Css.Style
neg_ml_4 =
    Css.property "margin-left" "-1rem"


{-| The tailwind class `-ml-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_40 : Css.Style
neg_ml_40 =
    Css.property "margin-left" "-10rem"


{-| The tailwind class `-ml-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_44 : Css.Style
neg_ml_44 =
    Css.property "margin-left" "-11rem"


{-| The tailwind class `-ml-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_48 : Css.Style
neg_ml_48 =
    Css.property "margin-left" "-12rem"


{-| The tailwind class `-ml-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_5 : Css.Style
neg_ml_5 =
    Css.property "margin-left" "-1.25rem"


{-| The tailwind class `-ml-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_52 : Css.Style
neg_ml_52 =
    Css.property "margin-left" "-13rem"


{-| The tailwind class `-ml-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_56 : Css.Style
neg_ml_56 =
    Css.property "margin-left" "-14rem"


{-| The tailwind class `-ml-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_6 : Css.Style
neg_ml_6 =
    Css.property "margin-left" "-1.5rem"


{-| The tailwind class `-ml-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_60 : Css.Style
neg_ml_60 =
    Css.property "margin-left" "-15rem"


{-| The tailwind class `-ml-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_64 : Css.Style
neg_ml_64 =
    Css.property "margin-left" "-16rem"


{-| The tailwind class `-ml-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_7 : Css.Style
neg_ml_7 =
    Css.property "margin-left" "-1.75rem"


{-| The tailwind class `-ml-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_72 : Css.Style
neg_ml_72 =
    Css.property "margin-left" "-18rem"


{-| The tailwind class `-ml-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_8 : Css.Style
neg_ml_8 =
    Css.property "margin-left" "-2rem"


{-| The tailwind class `-ml-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_80 : Css.Style
neg_ml_80 =
    Css.property "margin-left" "-20rem"


{-| The tailwind class `-ml-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_9 : Css.Style
neg_ml_9 =
    Css.property "margin-left" "-2.25rem"


{-| The tailwind class `-ml-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_96 : Css.Style
neg_ml_96 =
    Css.property "margin-left" "-24rem"


{-| The tailwind class `-ml-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_ml_px : Css.Style
neg_ml_px =
    Css.property "margin-left" "-1px"


{-| The tailwind class `-mr-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_0 : Css.Style
neg_mr_0 =
    Css.property "margin-right" "0px"


{-| The tailwind class `-mr-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_0_dot_5 : Css.Style
neg_mr_0_dot_5 =
    Css.property "margin-right" "-0.125rem"


{-| The tailwind class `-mr-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_1 : Css.Style
neg_mr_1 =
    Css.property "margin-right" "-0.25rem"


{-| The tailwind class `-mr-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_10 : Css.Style
neg_mr_10 =
    Css.property "margin-right" "-2.5rem"


{-| The tailwind class `-mr-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_11 : Css.Style
neg_mr_11 =
    Css.property "margin-right" "-2.75rem"


{-| The tailwind class `-mr-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_12 : Css.Style
neg_mr_12 =
    Css.property "margin-right" "-3rem"


{-| The tailwind class `-mr-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_14 : Css.Style
neg_mr_14 =
    Css.property "margin-right" "-3.5rem"


{-| The tailwind class `-mr-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_16 : Css.Style
neg_mr_16 =
    Css.property "margin-right" "-4rem"


{-| The tailwind class `-mr-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_1_dot_5 : Css.Style
neg_mr_1_dot_5 =
    Css.property "margin-right" "-0.375rem"


{-| The tailwind class `-mr-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_2 : Css.Style
neg_mr_2 =
    Css.property "margin-right" "-0.5rem"


{-| The tailwind class `-mr-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_20 : Css.Style
neg_mr_20 =
    Css.property "margin-right" "-5rem"


{-| The tailwind class `-mr-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_24 : Css.Style
neg_mr_24 =
    Css.property "margin-right" "-6rem"


{-| The tailwind class `-mr-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_28 : Css.Style
neg_mr_28 =
    Css.property "margin-right" "-7rem"


{-| The tailwind class `-mr-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_2_dot_5 : Css.Style
neg_mr_2_dot_5 =
    Css.property "margin-right" "-0.625rem"


{-| The tailwind class `-mr-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_3 : Css.Style
neg_mr_3 =
    Css.property "margin-right" "-0.75rem"


{-| The tailwind class `-mr-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_32 : Css.Style
neg_mr_32 =
    Css.property "margin-right" "-8rem"


{-| The tailwind class `-mr-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_36 : Css.Style
neg_mr_36 =
    Css.property "margin-right" "-9rem"


{-| The tailwind class `-mr-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_3_dot_5 : Css.Style
neg_mr_3_dot_5 =
    Css.property "margin-right" "-0.875rem"


{-| The tailwind class `-mr-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_4 : Css.Style
neg_mr_4 =
    Css.property "margin-right" "-1rem"


{-| The tailwind class `-mr-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_40 : Css.Style
neg_mr_40 =
    Css.property "margin-right" "-10rem"


{-| The tailwind class `-mr-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_44 : Css.Style
neg_mr_44 =
    Css.property "margin-right" "-11rem"


{-| The tailwind class `-mr-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_48 : Css.Style
neg_mr_48 =
    Css.property "margin-right" "-12rem"


{-| The tailwind class `-mr-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_5 : Css.Style
neg_mr_5 =
    Css.property "margin-right" "-1.25rem"


{-| The tailwind class `-mr-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_52 : Css.Style
neg_mr_52 =
    Css.property "margin-right" "-13rem"


{-| The tailwind class `-mr-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_56 : Css.Style
neg_mr_56 =
    Css.property "margin-right" "-14rem"


{-| The tailwind class `-mr-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_6 : Css.Style
neg_mr_6 =
    Css.property "margin-right" "-1.5rem"


{-| The tailwind class `-mr-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_60 : Css.Style
neg_mr_60 =
    Css.property "margin-right" "-15rem"


{-| The tailwind class `-mr-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_64 : Css.Style
neg_mr_64 =
    Css.property "margin-right" "-16rem"


{-| The tailwind class `-mr-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_7 : Css.Style
neg_mr_7 =
    Css.property "margin-right" "-1.75rem"


{-| The tailwind class `-mr-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_72 : Css.Style
neg_mr_72 =
    Css.property "margin-right" "-18rem"


{-| The tailwind class `-mr-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_8 : Css.Style
neg_mr_8 =
    Css.property "margin-right" "-2rem"


{-| The tailwind class `-mr-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_80 : Css.Style
neg_mr_80 =
    Css.property "margin-right" "-20rem"


{-| The tailwind class `-mr-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_9 : Css.Style
neg_mr_9 =
    Css.property "margin-right" "-2.25rem"


{-| The tailwind class `-mr-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_96 : Css.Style
neg_mr_96 =
    Css.property "margin-right" "-24rem"


{-| The tailwind class `-mr-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mr_px : Css.Style
neg_mr_px =
    Css.property "margin-right" "-1px"


{-| The tailwind class `-mt-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_0 : Css.Style
neg_mt_0 =
    Css.property "margin-top" "0px"


{-| The tailwind class `-mt-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_0_dot_5 : Css.Style
neg_mt_0_dot_5 =
    Css.property "margin-top" "-0.125rem"


{-| The tailwind class `-mt-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_1 : Css.Style
neg_mt_1 =
    Css.property "margin-top" "-0.25rem"


{-| The tailwind class `-mt-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_10 : Css.Style
neg_mt_10 =
    Css.property "margin-top" "-2.5rem"


{-| The tailwind class `-mt-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_11 : Css.Style
neg_mt_11 =
    Css.property "margin-top" "-2.75rem"


{-| The tailwind class `-mt-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_12 : Css.Style
neg_mt_12 =
    Css.property "margin-top" "-3rem"


{-| The tailwind class `-mt-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_14 : Css.Style
neg_mt_14 =
    Css.property "margin-top" "-3.5rem"


{-| The tailwind class `-mt-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_16 : Css.Style
neg_mt_16 =
    Css.property "margin-top" "-4rem"


{-| The tailwind class `-mt-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_1_dot_5 : Css.Style
neg_mt_1_dot_5 =
    Css.property "margin-top" "-0.375rem"


{-| The tailwind class `-mt-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_2 : Css.Style
neg_mt_2 =
    Css.property "margin-top" "-0.5rem"


{-| The tailwind class `-mt-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_20 : Css.Style
neg_mt_20 =
    Css.property "margin-top" "-5rem"


{-| The tailwind class `-mt-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_24 : Css.Style
neg_mt_24 =
    Css.property "margin-top" "-6rem"


{-| The tailwind class `-mt-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_28 : Css.Style
neg_mt_28 =
    Css.property "margin-top" "-7rem"


{-| The tailwind class `-mt-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_2_dot_5 : Css.Style
neg_mt_2_dot_5 =
    Css.property "margin-top" "-0.625rem"


{-| The tailwind class `-mt-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_3 : Css.Style
neg_mt_3 =
    Css.property "margin-top" "-0.75rem"


{-| The tailwind class `-mt-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_32 : Css.Style
neg_mt_32 =
    Css.property "margin-top" "-8rem"


{-| The tailwind class `-mt-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_36 : Css.Style
neg_mt_36 =
    Css.property "margin-top" "-9rem"


{-| The tailwind class `-mt-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_3_dot_5 : Css.Style
neg_mt_3_dot_5 =
    Css.property "margin-top" "-0.875rem"


{-| The tailwind class `-mt-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_4 : Css.Style
neg_mt_4 =
    Css.property "margin-top" "-1rem"


{-| The tailwind class `-mt-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_40 : Css.Style
neg_mt_40 =
    Css.property "margin-top" "-10rem"


{-| The tailwind class `-mt-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_44 : Css.Style
neg_mt_44 =
    Css.property "margin-top" "-11rem"


{-| The tailwind class `-mt-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_48 : Css.Style
neg_mt_48 =
    Css.property "margin-top" "-12rem"


{-| The tailwind class `-mt-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_5 : Css.Style
neg_mt_5 =
    Css.property "margin-top" "-1.25rem"


{-| The tailwind class `-mt-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_52 : Css.Style
neg_mt_52 =
    Css.property "margin-top" "-13rem"


{-| The tailwind class `-mt-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_56 : Css.Style
neg_mt_56 =
    Css.property "margin-top" "-14rem"


{-| The tailwind class `-mt-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_6 : Css.Style
neg_mt_6 =
    Css.property "margin-top" "-1.5rem"


{-| The tailwind class `-mt-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_60 : Css.Style
neg_mt_60 =
    Css.property "margin-top" "-15rem"


{-| The tailwind class `-mt-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_64 : Css.Style
neg_mt_64 =
    Css.property "margin-top" "-16rem"


{-| The tailwind class `-mt-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_7 : Css.Style
neg_mt_7 =
    Css.property "margin-top" "-1.75rem"


{-| The tailwind class `-mt-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_72 : Css.Style
neg_mt_72 =
    Css.property "margin-top" "-18rem"


{-| The tailwind class `-mt-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_8 : Css.Style
neg_mt_8 =
    Css.property "margin-top" "-2rem"


{-| The tailwind class `-mt-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_80 : Css.Style
neg_mt_80 =
    Css.property "margin-top" "-20rem"


{-| The tailwind class `-mt-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_9 : Css.Style
neg_mt_9 =
    Css.property "margin-top" "-2.25rem"


{-| The tailwind class `-mt-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_96 : Css.Style
neg_mt_96 =
    Css.property "margin-top" "-24rem"


{-| The tailwind class `-mt-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mt_px : Css.Style
neg_mt_px =
    Css.property "margin-top" "-1px"


{-| The tailwind class `-mx-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_0 : Css.Style
neg_mx_0 =
    Css.batch
        [ Css.property "margin-left" "0px"
        , Css.property "margin-right" "0px"
        ]


{-| The tailwind class `-mx-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_0_dot_5 : Css.Style
neg_mx_0_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.125rem"
        , Css.property "margin-right" "-0.125rem"
        ]


{-| The tailwind class `-mx-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_1 : Css.Style
neg_mx_1 =
    Css.batch
        [ Css.property "margin-left" "-0.25rem"
        , Css.property "margin-right" "-0.25rem"
        ]


{-| The tailwind class `-mx-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_10 : Css.Style
neg_mx_10 =
    Css.batch
        [ Css.property "margin-left" "-2.5rem"
        , Css.property "margin-right" "-2.5rem"
        ]


{-| The tailwind class `-mx-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_11 : Css.Style
neg_mx_11 =
    Css.batch
        [ Css.property "margin-left" "-2.75rem"
        , Css.property "margin-right" "-2.75rem"
        ]


{-| The tailwind class `-mx-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_12 : Css.Style
neg_mx_12 =
    Css.batch
        [ Css.property "margin-left" "-3rem"
        , Css.property "margin-right" "-3rem"
        ]


{-| The tailwind class `-mx-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_14 : Css.Style
neg_mx_14 =
    Css.batch
        [ Css.property "margin-left" "-3.5rem"
        , Css.property "margin-right" "-3.5rem"
        ]


{-| The tailwind class `-mx-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_16 : Css.Style
neg_mx_16 =
    Css.batch
        [ Css.property "margin-left" "-4rem"
        , Css.property "margin-right" "-4rem"
        ]


{-| The tailwind class `-mx-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_1_dot_5 : Css.Style
neg_mx_1_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.375rem"
        , Css.property "margin-right" "-0.375rem"
        ]


{-| The tailwind class `-mx-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_2 : Css.Style
neg_mx_2 =
    Css.batch
        [ Css.property "margin-left" "-0.5rem"
        , Css.property "margin-right" "-0.5rem"
        ]


{-| The tailwind class `-mx-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_20 : Css.Style
neg_mx_20 =
    Css.batch
        [ Css.property "margin-left" "-5rem"
        , Css.property "margin-right" "-5rem"
        ]


{-| The tailwind class `-mx-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_24 : Css.Style
neg_mx_24 =
    Css.batch
        [ Css.property "margin-left" "-6rem"
        , Css.property "margin-right" "-6rem"
        ]


{-| The tailwind class `-mx-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_28 : Css.Style
neg_mx_28 =
    Css.batch
        [ Css.property "margin-left" "-7rem"
        , Css.property "margin-right" "-7rem"
        ]


{-| The tailwind class `-mx-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_2_dot_5 : Css.Style
neg_mx_2_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.625rem"
        , Css.property "margin-right" "-0.625rem"
        ]


{-| The tailwind class `-mx-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_3 : Css.Style
neg_mx_3 =
    Css.batch
        [ Css.property "margin-left" "-0.75rem"
        , Css.property "margin-right" "-0.75rem"
        ]


{-| The tailwind class `-mx-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_32 : Css.Style
neg_mx_32 =
    Css.batch
        [ Css.property "margin-left" "-8rem"
        , Css.property "margin-right" "-8rem"
        ]


{-| The tailwind class `-mx-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_36 : Css.Style
neg_mx_36 =
    Css.batch
        [ Css.property "margin-left" "-9rem"
        , Css.property "margin-right" "-9rem"
        ]


{-| The tailwind class `-mx-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_3_dot_5 : Css.Style
neg_mx_3_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.875rem"
        , Css.property "margin-right" "-0.875rem"
        ]


{-| The tailwind class `-mx-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_4 : Css.Style
neg_mx_4 =
    Css.batch
        [ Css.property "margin-left" "-1rem"
        , Css.property "margin-right" "-1rem"
        ]


{-| The tailwind class `-mx-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_40 : Css.Style
neg_mx_40 =
    Css.batch
        [ Css.property "margin-left" "-10rem"
        , Css.property "margin-right" "-10rem"
        ]


{-| The tailwind class `-mx-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_44 : Css.Style
neg_mx_44 =
    Css.batch
        [ Css.property "margin-left" "-11rem"
        , Css.property "margin-right" "-11rem"
        ]


{-| The tailwind class `-mx-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_48 : Css.Style
neg_mx_48 =
    Css.batch
        [ Css.property "margin-left" "-12rem"
        , Css.property "margin-right" "-12rem"
        ]


{-| The tailwind class `-mx-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_5 : Css.Style
neg_mx_5 =
    Css.batch
        [ Css.property "margin-left" "-1.25rem"
        , Css.property "margin-right" "-1.25rem"
        ]


{-| The tailwind class `-mx-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_52 : Css.Style
neg_mx_52 =
    Css.batch
        [ Css.property "margin-left" "-13rem"
        , Css.property "margin-right" "-13rem"
        ]


{-| The tailwind class `-mx-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_56 : Css.Style
neg_mx_56 =
    Css.batch
        [ Css.property "margin-left" "-14rem"
        , Css.property "margin-right" "-14rem"
        ]


{-| The tailwind class `-mx-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_6 : Css.Style
neg_mx_6 =
    Css.batch
        [ Css.property "margin-left" "-1.5rem"
        , Css.property "margin-right" "-1.5rem"
        ]


{-| The tailwind class `-mx-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_60 : Css.Style
neg_mx_60 =
    Css.batch
        [ Css.property "margin-left" "-15rem"
        , Css.property "margin-right" "-15rem"
        ]


{-| The tailwind class `-mx-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_64 : Css.Style
neg_mx_64 =
    Css.batch
        [ Css.property "margin-left" "-16rem"
        , Css.property "margin-right" "-16rem"
        ]


{-| The tailwind class `-mx-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_7 : Css.Style
neg_mx_7 =
    Css.batch
        [ Css.property "margin-left" "-1.75rem"
        , Css.property "margin-right" "-1.75rem"
        ]


{-| The tailwind class `-mx-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_72 : Css.Style
neg_mx_72 =
    Css.batch
        [ Css.property "margin-left" "-18rem"
        , Css.property "margin-right" "-18rem"
        ]


{-| The tailwind class `-mx-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_8 : Css.Style
neg_mx_8 =
    Css.batch
        [ Css.property "margin-left" "-2rem"
        , Css.property "margin-right" "-2rem"
        ]


{-| The tailwind class `-mx-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_80 : Css.Style
neg_mx_80 =
    Css.batch
        [ Css.property "margin-left" "-20rem"
        , Css.property "margin-right" "-20rem"
        ]


{-| The tailwind class `-mx-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_9 : Css.Style
neg_mx_9 =
    Css.batch
        [ Css.property "margin-left" "-2.25rem"
        , Css.property "margin-right" "-2.25rem"
        ]


{-| The tailwind class `-mx-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_96 : Css.Style
neg_mx_96 =
    Css.batch
        [ Css.property "margin-left" "-24rem"
        , Css.property "margin-right" "-24rem"
        ]


{-| The tailwind class `-mx-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_mx_px : Css.Style
neg_mx_px =
    Css.batch
        [ Css.property "margin-left" "-1px"
        , Css.property "margin-right" "-1px"
        ]


{-| The tailwind class `-my-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_0 : Css.Style
neg_my_0 =
    Css.batch
        [ Css.property "margin-top" "0px"
        , Css.property "margin-bottom" "0px"
        ]


{-| The tailwind class `-my-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_0_dot_5 : Css.Style
neg_my_0_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.125rem"
        , Css.property "margin-bottom" "-0.125rem"
        ]


{-| The tailwind class `-my-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_1 : Css.Style
neg_my_1 =
    Css.batch
        [ Css.property "margin-top" "-0.25rem"
        , Css.property "margin-bottom" "-0.25rem"
        ]


{-| The tailwind class `-my-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_10 : Css.Style
neg_my_10 =
    Css.batch
        [ Css.property "margin-top" "-2.5rem"
        , Css.property "margin-bottom" "-2.5rem"
        ]


{-| The tailwind class `-my-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_11 : Css.Style
neg_my_11 =
    Css.batch
        [ Css.property "margin-top" "-2.75rem"
        , Css.property "margin-bottom" "-2.75rem"
        ]


{-| The tailwind class `-my-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_12 : Css.Style
neg_my_12 =
    Css.batch
        [ Css.property "margin-top" "-3rem"
        , Css.property "margin-bottom" "-3rem"
        ]


{-| The tailwind class `-my-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_14 : Css.Style
neg_my_14 =
    Css.batch
        [ Css.property "margin-top" "-3.5rem"
        , Css.property "margin-bottom" "-3.5rem"
        ]


{-| The tailwind class `-my-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_16 : Css.Style
neg_my_16 =
    Css.batch
        [ Css.property "margin-top" "-4rem"
        , Css.property "margin-bottom" "-4rem"
        ]


{-| The tailwind class `-my-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_1_dot_5 : Css.Style
neg_my_1_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.375rem"
        , Css.property "margin-bottom" "-0.375rem"
        ]


{-| The tailwind class `-my-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_2 : Css.Style
neg_my_2 =
    Css.batch
        [ Css.property "margin-top" "-0.5rem"
        , Css.property "margin-bottom" "-0.5rem"
        ]


{-| The tailwind class `-my-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_20 : Css.Style
neg_my_20 =
    Css.batch
        [ Css.property "margin-top" "-5rem"
        , Css.property "margin-bottom" "-5rem"
        ]


{-| The tailwind class `-my-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_24 : Css.Style
neg_my_24 =
    Css.batch
        [ Css.property "margin-top" "-6rem"
        , Css.property "margin-bottom" "-6rem"
        ]


{-| The tailwind class `-my-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_28 : Css.Style
neg_my_28 =
    Css.batch
        [ Css.property "margin-top" "-7rem"
        , Css.property "margin-bottom" "-7rem"
        ]


{-| The tailwind class `-my-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_2_dot_5 : Css.Style
neg_my_2_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.625rem"
        , Css.property "margin-bottom" "-0.625rem"
        ]


{-| The tailwind class `-my-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_3 : Css.Style
neg_my_3 =
    Css.batch
        [ Css.property "margin-top" "-0.75rem"
        , Css.property "margin-bottom" "-0.75rem"
        ]


{-| The tailwind class `-my-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_32 : Css.Style
neg_my_32 =
    Css.batch
        [ Css.property "margin-top" "-8rem"
        , Css.property "margin-bottom" "-8rem"
        ]


{-| The tailwind class `-my-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_36 : Css.Style
neg_my_36 =
    Css.batch
        [ Css.property "margin-top" "-9rem"
        , Css.property "margin-bottom" "-9rem"
        ]


{-| The tailwind class `-my-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_3_dot_5 : Css.Style
neg_my_3_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.875rem"
        , Css.property "margin-bottom" "-0.875rem"
        ]


{-| The tailwind class `-my-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_4 : Css.Style
neg_my_4 =
    Css.batch
        [ Css.property "margin-top" "-1rem"
        , Css.property "margin-bottom" "-1rem"
        ]


{-| The tailwind class `-my-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_40 : Css.Style
neg_my_40 =
    Css.batch
        [ Css.property "margin-top" "-10rem"
        , Css.property "margin-bottom" "-10rem"
        ]


{-| The tailwind class `-my-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_44 : Css.Style
neg_my_44 =
    Css.batch
        [ Css.property "margin-top" "-11rem"
        , Css.property "margin-bottom" "-11rem"
        ]


{-| The tailwind class `-my-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_48 : Css.Style
neg_my_48 =
    Css.batch
        [ Css.property "margin-top" "-12rem"
        , Css.property "margin-bottom" "-12rem"
        ]


{-| The tailwind class `-my-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_5 : Css.Style
neg_my_5 =
    Css.batch
        [ Css.property "margin-top" "-1.25rem"
        , Css.property "margin-bottom" "-1.25rem"
        ]


{-| The tailwind class `-my-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_52 : Css.Style
neg_my_52 =
    Css.batch
        [ Css.property "margin-top" "-13rem"
        , Css.property "margin-bottom" "-13rem"
        ]


{-| The tailwind class `-my-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_56 : Css.Style
neg_my_56 =
    Css.batch
        [ Css.property "margin-top" "-14rem"
        , Css.property "margin-bottom" "-14rem"
        ]


{-| The tailwind class `-my-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_6 : Css.Style
neg_my_6 =
    Css.batch
        [ Css.property "margin-top" "-1.5rem"
        , Css.property "margin-bottom" "-1.5rem"
        ]


{-| The tailwind class `-my-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_60 : Css.Style
neg_my_60 =
    Css.batch
        [ Css.property "margin-top" "-15rem"
        , Css.property "margin-bottom" "-15rem"
        ]


{-| The tailwind class `-my-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_64 : Css.Style
neg_my_64 =
    Css.batch
        [ Css.property "margin-top" "-16rem"
        , Css.property "margin-bottom" "-16rem"
        ]


{-| The tailwind class `-my-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_7 : Css.Style
neg_my_7 =
    Css.batch
        [ Css.property "margin-top" "-1.75rem"
        , Css.property "margin-bottom" "-1.75rem"
        ]


{-| The tailwind class `-my-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_72 : Css.Style
neg_my_72 =
    Css.batch
        [ Css.property "margin-top" "-18rem"
        , Css.property "margin-bottom" "-18rem"
        ]


{-| The tailwind class `-my-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_8 : Css.Style
neg_my_8 =
    Css.batch
        [ Css.property "margin-top" "-2rem"
        , Css.property "margin-bottom" "-2rem"
        ]


{-| The tailwind class `-my-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_80 : Css.Style
neg_my_80 =
    Css.batch
        [ Css.property "margin-top" "-20rem"
        , Css.property "margin-bottom" "-20rem"
        ]


{-| The tailwind class `-my-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_9 : Css.Style
neg_my_9 =
    Css.batch
        [ Css.property "margin-top" "-2.25rem"
        , Css.property "margin-bottom" "-2.25rem"
        ]


{-| The tailwind class `-my-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_96 : Css.Style
neg_my_96 =
    Css.batch
        [ Css.property "margin-top" "-24rem"
        , Css.property "margin-bottom" "-24rem"
        ]


{-| The tailwind class `-my-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_my_px : Css.Style
neg_my_px =
    Css.batch
        [ Css.property "margin-top" "-1px"
        , Css.property "margin-bottom" "-1px"
        ]


{-| The tailwind class `-right-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_0 : Css.Style
neg_right_0 =
    Css.property "right" "0px"


{-| The tailwind class `-right-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_0_dot_5 : Css.Style
neg_right_0_dot_5 =
    Css.property "right" "-0.125rem"


{-| The tailwind class `-right-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_1 : Css.Style
neg_right_1 =
    Css.property "right" "-0.25rem"


{-| The tailwind class `-right-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_10 : Css.Style
neg_right_10 =
    Css.property "right" "-2.5rem"


{-| The tailwind class `-right-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_11 : Css.Style
neg_right_11 =
    Css.property "right" "-2.75rem"


{-| The tailwind class `-right-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_12 : Css.Style
neg_right_12 =
    Css.property "right" "-3rem"


{-| The tailwind class `-right-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_14 : Css.Style
neg_right_14 =
    Css.property "right" "-3.5rem"


{-| The tailwind class `-right-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_16 : Css.Style
neg_right_16 =
    Css.property "right" "-4rem"


{-| The tailwind class `-right-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_1_dot_5 : Css.Style
neg_right_1_dot_5 =
    Css.property "right" "-0.375rem"


{-| The tailwind class `-right-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_1over2 : Css.Style
neg_right_1over2 =
    Css.property "right" "-50%"


{-| The tailwind class `-right-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_1over3 : Css.Style
neg_right_1over3 =
    Css.property "right" "-33.333333%"


{-| The tailwind class `-right-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_1over4 : Css.Style
neg_right_1over4 =
    Css.property "right" "-25%"


{-| The tailwind class `-right-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_2 : Css.Style
neg_right_2 =
    Css.property "right" "-0.5rem"


{-| The tailwind class `-right-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_20 : Css.Style
neg_right_20 =
    Css.property "right" "-5rem"


{-| The tailwind class `-right-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_24 : Css.Style
neg_right_24 =
    Css.property "right" "-6rem"


{-| The tailwind class `-right-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_28 : Css.Style
neg_right_28 =
    Css.property "right" "-7rem"


{-| The tailwind class `-right-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_2_dot_5 : Css.Style
neg_right_2_dot_5 =
    Css.property "right" "-0.625rem"


{-| The tailwind class `-right-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_2over3 : Css.Style
neg_right_2over3 =
    Css.property "right" "-66.666667%"


{-| The tailwind class `-right-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_2over4 : Css.Style
neg_right_2over4 =
    Css.property "right" "-50%"


{-| The tailwind class `-right-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_3 : Css.Style
neg_right_3 =
    Css.property "right" "-0.75rem"


{-| The tailwind class `-right-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_32 : Css.Style
neg_right_32 =
    Css.property "right" "-8rem"


{-| The tailwind class `-right-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_36 : Css.Style
neg_right_36 =
    Css.property "right" "-9rem"


{-| The tailwind class `-right-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_3_dot_5 : Css.Style
neg_right_3_dot_5 =
    Css.property "right" "-0.875rem"


{-| The tailwind class `-right-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_3over4 : Css.Style
neg_right_3over4 =
    Css.property "right" "-75%"


{-| The tailwind class `-right-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_4 : Css.Style
neg_right_4 =
    Css.property "right" "-1rem"


{-| The tailwind class `-right-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_40 : Css.Style
neg_right_40 =
    Css.property "right" "-10rem"


{-| The tailwind class `-right-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_44 : Css.Style
neg_right_44 =
    Css.property "right" "-11rem"


{-| The tailwind class `-right-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_48 : Css.Style
neg_right_48 =
    Css.property "right" "-12rem"


{-| The tailwind class `-right-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_5 : Css.Style
neg_right_5 =
    Css.property "right" "-1.25rem"


{-| The tailwind class `-right-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_52 : Css.Style
neg_right_52 =
    Css.property "right" "-13rem"


{-| The tailwind class `-right-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_56 : Css.Style
neg_right_56 =
    Css.property "right" "-14rem"


{-| The tailwind class `-right-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_6 : Css.Style
neg_right_6 =
    Css.property "right" "-1.5rem"


{-| The tailwind class `-right-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_60 : Css.Style
neg_right_60 =
    Css.property "right" "-15rem"


{-| The tailwind class `-right-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_64 : Css.Style
neg_right_64 =
    Css.property "right" "-16rem"


{-| The tailwind class `-right-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_7 : Css.Style
neg_right_7 =
    Css.property "right" "-1.75rem"


{-| The tailwind class `-right-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_72 : Css.Style
neg_right_72 =
    Css.property "right" "-18rem"


{-| The tailwind class `-right-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_8 : Css.Style
neg_right_8 =
    Css.property "right" "-2rem"


{-| The tailwind class `-right-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_80 : Css.Style
neg_right_80 =
    Css.property "right" "-20rem"


{-| The tailwind class `-right-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_9 : Css.Style
neg_right_9 =
    Css.property "right" "-2.25rem"


{-| The tailwind class `-right-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_96 : Css.Style
neg_right_96 =
    Css.property "right" "-24rem"


{-| The tailwind class `-right-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_full : Css.Style
neg_right_full =
    Css.property "right" "-100%"


{-| The tailwind class `-right-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_right_px : Css.Style
neg_right_px =
    Css.property "right" "-1px"


{-| The tailwind class `-rotate-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_rotate_1 : Css.Style
neg_rotate_1 =
    Css.property "--tw-rotate" "-1deg"


{-| The tailwind class `-rotate-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_rotate_12 : Css.Style
neg_rotate_12 =
    Css.property "--tw-rotate" "-12deg"


{-| The tailwind class `-rotate-180`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_rotate_180 : Css.Style
neg_rotate_180 =
    Css.property "--tw-rotate" "-180deg"


{-| The tailwind class `-rotate-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_rotate_2 : Css.Style
neg_rotate_2 =
    Css.property "--tw-rotate" "-2deg"


{-| The tailwind class `-rotate-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_rotate_3 : Css.Style
neg_rotate_3 =
    Css.property "--tw-rotate" "-3deg"


{-| The tailwind class `-rotate-45`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_rotate_45 : Css.Style
neg_rotate_45 =
    Css.property "--tw-rotate" "-45deg"


{-| The tailwind class `-rotate-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_rotate_6 : Css.Style
neg_rotate_6 =
    Css.property "--tw-rotate" "-6deg"


{-| The tailwind class `-rotate-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_rotate_90 : Css.Style
neg_rotate_90 =
    Css.property "--tw-rotate" "-90deg"


{-| The tailwind class `-skew-x-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_x_1 : Css.Style
neg_skew_x_1 =
    Css.property "--tw-skew-x" "-1deg"


{-| The tailwind class `-skew-x-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_x_12 : Css.Style
neg_skew_x_12 =
    Css.property "--tw-skew-x" "-12deg"


{-| The tailwind class `-skew-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_x_2 : Css.Style
neg_skew_x_2 =
    Css.property "--tw-skew-x" "-2deg"


{-| The tailwind class `-skew-x-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_x_3 : Css.Style
neg_skew_x_3 =
    Css.property "--tw-skew-x" "-3deg"


{-| The tailwind class `-skew-x-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_x_6 : Css.Style
neg_skew_x_6 =
    Css.property "--tw-skew-x" "-6deg"


{-| The tailwind class `-skew-y-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_y_1 : Css.Style
neg_skew_y_1 =
    Css.property "--tw-skew-y" "-1deg"


{-| The tailwind class `-skew-y-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_y_12 : Css.Style
neg_skew_y_12 =
    Css.property "--tw-skew-y" "-12deg"


{-| The tailwind class `-skew-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_y_2 : Css.Style
neg_skew_y_2 =
    Css.property "--tw-skew-y" "-2deg"


{-| The tailwind class `-skew-y-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_y_3 : Css.Style
neg_skew_y_3 =
    Css.property "--tw-skew-y" "-3deg"


{-| The tailwind class `-skew-y-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_skew_y_6 : Css.Style
neg_skew_y_6 =
    Css.property "--tw-skew-y" "-6deg"


{-| The tailwind class `-space-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_0 : Css.Style
neg_space_x_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0px * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0px * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_0_dot_5 : Css.Style
neg_space_x_0_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.125rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.125rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_1 : Css.Style
neg_space_x_1 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.25rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.25rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_10 : Css.Style
neg_space_x_10 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-2.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-2.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_11 : Css.Style
neg_space_x_11 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-2.75rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-2.75rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_12 : Css.Style
neg_space_x_12 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-3rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-3rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_14 : Css.Style
neg_space_x_14 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-3.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-3.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_16 : Css.Style
neg_space_x_16 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-4rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-4rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_1_dot_5 : Css.Style
neg_space_x_1_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.375rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.375rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_2 : Css.Style
neg_space_x_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_20 : Css.Style
neg_space_x_20 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_24 : Css.Style
neg_space_x_24 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-6rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-6rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_28 : Css.Style
neg_space_x_28 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-7rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-7rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_2_dot_5 : Css.Style
neg_space_x_2_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.625rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.625rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_3 : Css.Style
neg_space_x_3 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.75rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.75rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_32 : Css.Style
neg_space_x_32 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-8rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-8rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_36 : Css.Style
neg_space_x_36 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-9rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-9rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_3_dot_5 : Css.Style
neg_space_x_3_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.875rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.875rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_4 : Css.Style
neg_space_x_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_40 : Css.Style
neg_space_x_40 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-10rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-10rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_44 : Css.Style
neg_space_x_44 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-11rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-11rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_48 : Css.Style
neg_space_x_48 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-12rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-12rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_5 : Css.Style
neg_space_x_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1.25rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1.25rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_52 : Css.Style
neg_space_x_52 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-13rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-13rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_56 : Css.Style
neg_space_x_56 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-14rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-14rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_6 : Css.Style
neg_space_x_6 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_60 : Css.Style
neg_space_x_60 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-15rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-15rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_64 : Css.Style
neg_space_x_64 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-16rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-16rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_7 : Css.Style
neg_space_x_7 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1.75rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1.75rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_72 : Css.Style
neg_space_x_72 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-18rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-18rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_8 : Css.Style
neg_space_x_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-2rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-2rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_80 : Css.Style
neg_space_x_80 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-20rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-20rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_9 : Css.Style
neg_space_x_9 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-2.25rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-2.25rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_96 : Css.Style
neg_space_x_96 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-24rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-24rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-x-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_x_px : Css.Style
neg_space_x_px =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1px * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1px * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_0 : Css.Style
neg_space_y_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0px * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0px * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_0_dot_5 : Css.Style
neg_space_y_0_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.125rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.125rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_1 : Css.Style
neg_space_y_1 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.25rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.25rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_10 : Css.Style
neg_space_y_10 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-2.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-2.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_11 : Css.Style
neg_space_y_11 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-2.75rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-2.75rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_12 : Css.Style
neg_space_y_12 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-3rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-3rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_14 : Css.Style
neg_space_y_14 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-3.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-3.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_16 : Css.Style
neg_space_y_16 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-4rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-4rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_1_dot_5 : Css.Style
neg_space_y_1_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.375rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.375rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_2 : Css.Style
neg_space_y_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_20 : Css.Style
neg_space_y_20 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_24 : Css.Style
neg_space_y_24 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-6rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-6rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_28 : Css.Style
neg_space_y_28 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-7rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-7rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_2_dot_5 : Css.Style
neg_space_y_2_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.625rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.625rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_3 : Css.Style
neg_space_y_3 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.75rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.75rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_32 : Css.Style
neg_space_y_32 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-8rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-8rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_36 : Css.Style
neg_space_y_36 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-9rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-9rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_3_dot_5 : Css.Style
neg_space_y_3_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.875rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.875rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_4 : Css.Style
neg_space_y_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_40 : Css.Style
neg_space_y_40 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-10rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-10rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_44 : Css.Style
neg_space_y_44 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-11rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-11rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_48 : Css.Style
neg_space_y_48 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-12rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-12rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_5 : Css.Style
neg_space_y_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1.25rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1.25rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_52 : Css.Style
neg_space_y_52 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-13rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-13rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_56 : Css.Style
neg_space_y_56 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-14rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-14rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_6 : Css.Style
neg_space_y_6 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_60 : Css.Style
neg_space_y_60 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-15rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-15rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_64 : Css.Style
neg_space_y_64 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-16rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-16rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_7 : Css.Style
neg_space_y_7 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1.75rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1.75rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_72 : Css.Style
neg_space_y_72 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-18rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-18rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_8 : Css.Style
neg_space_y_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-2rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-2rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_80 : Css.Style
neg_space_y_80 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-20rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-20rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_9 : Css.Style
neg_space_y_9 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-2.25rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-2.25rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_96 : Css.Style
neg_space_y_96 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-24rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-24rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-space-y-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_space_y_px : Css.Style
neg_space_y_px =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1px * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1px * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `-top-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_0 : Css.Style
neg_top_0 =
    Css.property "top" "0px"


{-| The tailwind class `-top-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_0_dot_5 : Css.Style
neg_top_0_dot_5 =
    Css.property "top" "-0.125rem"


{-| The tailwind class `-top-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_1 : Css.Style
neg_top_1 =
    Css.property "top" "-0.25rem"


{-| The tailwind class `-top-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_10 : Css.Style
neg_top_10 =
    Css.property "top" "-2.5rem"


{-| The tailwind class `-top-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_11 : Css.Style
neg_top_11 =
    Css.property "top" "-2.75rem"


{-| The tailwind class `-top-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_12 : Css.Style
neg_top_12 =
    Css.property "top" "-3rem"


{-| The tailwind class `-top-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_14 : Css.Style
neg_top_14 =
    Css.property "top" "-3.5rem"


{-| The tailwind class `-top-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_16 : Css.Style
neg_top_16 =
    Css.property "top" "-4rem"


{-| The tailwind class `-top-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_1_dot_5 : Css.Style
neg_top_1_dot_5 =
    Css.property "top" "-0.375rem"


{-| The tailwind class `-top-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_1over2 : Css.Style
neg_top_1over2 =
    Css.property "top" "-50%"


{-| The tailwind class `-top-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_1over3 : Css.Style
neg_top_1over3 =
    Css.property "top" "-33.333333%"


{-| The tailwind class `-top-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_1over4 : Css.Style
neg_top_1over4 =
    Css.property "top" "-25%"


{-| The tailwind class `-top-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_2 : Css.Style
neg_top_2 =
    Css.property "top" "-0.5rem"


{-| The tailwind class `-top-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_20 : Css.Style
neg_top_20 =
    Css.property "top" "-5rem"


{-| The tailwind class `-top-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_24 : Css.Style
neg_top_24 =
    Css.property "top" "-6rem"


{-| The tailwind class `-top-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_28 : Css.Style
neg_top_28 =
    Css.property "top" "-7rem"


{-| The tailwind class `-top-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_2_dot_5 : Css.Style
neg_top_2_dot_5 =
    Css.property "top" "-0.625rem"


{-| The tailwind class `-top-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_2over3 : Css.Style
neg_top_2over3 =
    Css.property "top" "-66.666667%"


{-| The tailwind class `-top-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_2over4 : Css.Style
neg_top_2over4 =
    Css.property "top" "-50%"


{-| The tailwind class `-top-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_3 : Css.Style
neg_top_3 =
    Css.property "top" "-0.75rem"


{-| The tailwind class `-top-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_32 : Css.Style
neg_top_32 =
    Css.property "top" "-8rem"


{-| The tailwind class `-top-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_36 : Css.Style
neg_top_36 =
    Css.property "top" "-9rem"


{-| The tailwind class `-top-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_3_dot_5 : Css.Style
neg_top_3_dot_5 =
    Css.property "top" "-0.875rem"


{-| The tailwind class `-top-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_3over4 : Css.Style
neg_top_3over4 =
    Css.property "top" "-75%"


{-| The tailwind class `-top-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_4 : Css.Style
neg_top_4 =
    Css.property "top" "-1rem"


{-| The tailwind class `-top-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_40 : Css.Style
neg_top_40 =
    Css.property "top" "-10rem"


{-| The tailwind class `-top-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_44 : Css.Style
neg_top_44 =
    Css.property "top" "-11rem"


{-| The tailwind class `-top-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_48 : Css.Style
neg_top_48 =
    Css.property "top" "-12rem"


{-| The tailwind class `-top-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_5 : Css.Style
neg_top_5 =
    Css.property "top" "-1.25rem"


{-| The tailwind class `-top-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_52 : Css.Style
neg_top_52 =
    Css.property "top" "-13rem"


{-| The tailwind class `-top-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_56 : Css.Style
neg_top_56 =
    Css.property "top" "-14rem"


{-| The tailwind class `-top-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_6 : Css.Style
neg_top_6 =
    Css.property "top" "-1.5rem"


{-| The tailwind class `-top-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_60 : Css.Style
neg_top_60 =
    Css.property "top" "-15rem"


{-| The tailwind class `-top-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_64 : Css.Style
neg_top_64 =
    Css.property "top" "-16rem"


{-| The tailwind class `-top-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_7 : Css.Style
neg_top_7 =
    Css.property "top" "-1.75rem"


{-| The tailwind class `-top-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_72 : Css.Style
neg_top_72 =
    Css.property "top" "-18rem"


{-| The tailwind class `-top-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_8 : Css.Style
neg_top_8 =
    Css.property "top" "-2rem"


{-| The tailwind class `-top-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_80 : Css.Style
neg_top_80 =
    Css.property "top" "-20rem"


{-| The tailwind class `-top-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_9 : Css.Style
neg_top_9 =
    Css.property "top" "-2.25rem"


{-| The tailwind class `-top-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_96 : Css.Style
neg_top_96 =
    Css.property "top" "-24rem"


{-| The tailwind class `-top-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_full : Css.Style
neg_top_full =
    Css.property "top" "-100%"


{-| The tailwind class `-top-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_top_px : Css.Style
neg_top_px =
    Css.property "top" "-1px"


{-| The tailwind class `-translate-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_0 : Css.Style
neg_translate_x_0 =
    Css.property "--tw-translate-x" "0px"


{-| The tailwind class `-translate-x-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_0_dot_5 : Css.Style
neg_translate_x_0_dot_5 =
    Css.property "--tw-translate-x" "-0.125rem"


{-| The tailwind class `-translate-x-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_1 : Css.Style
neg_translate_x_1 =
    Css.property "--tw-translate-x" "-0.25rem"


{-| The tailwind class `-translate-x-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_10 : Css.Style
neg_translate_x_10 =
    Css.property "--tw-translate-x" "-2.5rem"


{-| The tailwind class `-translate-x-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_11 : Css.Style
neg_translate_x_11 =
    Css.property "--tw-translate-x" "-2.75rem"


{-| The tailwind class `-translate-x-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_12 : Css.Style
neg_translate_x_12 =
    Css.property "--tw-translate-x" "-3rem"


{-| The tailwind class `-translate-x-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_14 : Css.Style
neg_translate_x_14 =
    Css.property "--tw-translate-x" "-3.5rem"


{-| The tailwind class `-translate-x-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_16 : Css.Style
neg_translate_x_16 =
    Css.property "--tw-translate-x" "-4rem"


{-| The tailwind class `-translate-x-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_1_dot_5 : Css.Style
neg_translate_x_1_dot_5 =
    Css.property "--tw-translate-x" "-0.375rem"


{-| The tailwind class `-translate-x-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_1over2 : Css.Style
neg_translate_x_1over2 =
    Css.property "--tw-translate-x" "-50%"


{-| The tailwind class `-translate-x-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_1over3 : Css.Style
neg_translate_x_1over3 =
    Css.property "--tw-translate-x" "-33.333333%"


{-| The tailwind class `-translate-x-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_1over4 : Css.Style
neg_translate_x_1over4 =
    Css.property "--tw-translate-x" "-25%"


{-| The tailwind class `-translate-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_2 : Css.Style
neg_translate_x_2 =
    Css.property "--tw-translate-x" "-0.5rem"


{-| The tailwind class `-translate-x-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_20 : Css.Style
neg_translate_x_20 =
    Css.property "--tw-translate-x" "-5rem"


{-| The tailwind class `-translate-x-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_24 : Css.Style
neg_translate_x_24 =
    Css.property "--tw-translate-x" "-6rem"


{-| The tailwind class `-translate-x-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_28 : Css.Style
neg_translate_x_28 =
    Css.property "--tw-translate-x" "-7rem"


{-| The tailwind class `-translate-x-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_2_dot_5 : Css.Style
neg_translate_x_2_dot_5 =
    Css.property "--tw-translate-x" "-0.625rem"


{-| The tailwind class `-translate-x-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_2over3 : Css.Style
neg_translate_x_2over3 =
    Css.property "--tw-translate-x" "-66.666667%"


{-| The tailwind class `-translate-x-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_2over4 : Css.Style
neg_translate_x_2over4 =
    Css.property "--tw-translate-x" "-50%"


{-| The tailwind class `-translate-x-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_3 : Css.Style
neg_translate_x_3 =
    Css.property "--tw-translate-x" "-0.75rem"


{-| The tailwind class `-translate-x-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_32 : Css.Style
neg_translate_x_32 =
    Css.property "--tw-translate-x" "-8rem"


{-| The tailwind class `-translate-x-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_36 : Css.Style
neg_translate_x_36 =
    Css.property "--tw-translate-x" "-9rem"


{-| The tailwind class `-translate-x-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_3_dot_5 : Css.Style
neg_translate_x_3_dot_5 =
    Css.property "--tw-translate-x" "-0.875rem"


{-| The tailwind class `-translate-x-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_3over4 : Css.Style
neg_translate_x_3over4 =
    Css.property "--tw-translate-x" "-75%"


{-| The tailwind class `-translate-x-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_4 : Css.Style
neg_translate_x_4 =
    Css.property "--tw-translate-x" "-1rem"


{-| The tailwind class `-translate-x-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_40 : Css.Style
neg_translate_x_40 =
    Css.property "--tw-translate-x" "-10rem"


{-| The tailwind class `-translate-x-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_44 : Css.Style
neg_translate_x_44 =
    Css.property "--tw-translate-x" "-11rem"


{-| The tailwind class `-translate-x-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_48 : Css.Style
neg_translate_x_48 =
    Css.property "--tw-translate-x" "-12rem"


{-| The tailwind class `-translate-x-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_5 : Css.Style
neg_translate_x_5 =
    Css.property "--tw-translate-x" "-1.25rem"


{-| The tailwind class `-translate-x-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_52 : Css.Style
neg_translate_x_52 =
    Css.property "--tw-translate-x" "-13rem"


{-| The tailwind class `-translate-x-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_56 : Css.Style
neg_translate_x_56 =
    Css.property "--tw-translate-x" "-14rem"


{-| The tailwind class `-translate-x-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_6 : Css.Style
neg_translate_x_6 =
    Css.property "--tw-translate-x" "-1.5rem"


{-| The tailwind class `-translate-x-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_60 : Css.Style
neg_translate_x_60 =
    Css.property "--tw-translate-x" "-15rem"


{-| The tailwind class `-translate-x-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_64 : Css.Style
neg_translate_x_64 =
    Css.property "--tw-translate-x" "-16rem"


{-| The tailwind class `-translate-x-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_7 : Css.Style
neg_translate_x_7 =
    Css.property "--tw-translate-x" "-1.75rem"


{-| The tailwind class `-translate-x-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_72 : Css.Style
neg_translate_x_72 =
    Css.property "--tw-translate-x" "-18rem"


{-| The tailwind class `-translate-x-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_8 : Css.Style
neg_translate_x_8 =
    Css.property "--tw-translate-x" "-2rem"


{-| The tailwind class `-translate-x-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_80 : Css.Style
neg_translate_x_80 =
    Css.property "--tw-translate-x" "-20rem"


{-| The tailwind class `-translate-x-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_9 : Css.Style
neg_translate_x_9 =
    Css.property "--tw-translate-x" "-2.25rem"


{-| The tailwind class `-translate-x-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_96 : Css.Style
neg_translate_x_96 =
    Css.property "--tw-translate-x" "-24rem"


{-| The tailwind class `-translate-x-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_full : Css.Style
neg_translate_x_full =
    Css.property "--tw-translate-x" "-100%"


{-| The tailwind class `-translate-x-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_x_px : Css.Style
neg_translate_x_px =
    Css.property "--tw-translate-x" "-1px"


{-| The tailwind class `-translate-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_0 : Css.Style
neg_translate_y_0 =
    Css.property "--tw-translate-y" "0px"


{-| The tailwind class `-translate-y-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_0_dot_5 : Css.Style
neg_translate_y_0_dot_5 =
    Css.property "--tw-translate-y" "-0.125rem"


{-| The tailwind class `-translate-y-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_1 : Css.Style
neg_translate_y_1 =
    Css.property "--tw-translate-y" "-0.25rem"


{-| The tailwind class `-translate-y-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_10 : Css.Style
neg_translate_y_10 =
    Css.property "--tw-translate-y" "-2.5rem"


{-| The tailwind class `-translate-y-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_11 : Css.Style
neg_translate_y_11 =
    Css.property "--tw-translate-y" "-2.75rem"


{-| The tailwind class `-translate-y-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_12 : Css.Style
neg_translate_y_12 =
    Css.property "--tw-translate-y" "-3rem"


{-| The tailwind class `-translate-y-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_14 : Css.Style
neg_translate_y_14 =
    Css.property "--tw-translate-y" "-3.5rem"


{-| The tailwind class `-translate-y-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_16 : Css.Style
neg_translate_y_16 =
    Css.property "--tw-translate-y" "-4rem"


{-| The tailwind class `-translate-y-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_1_dot_5 : Css.Style
neg_translate_y_1_dot_5 =
    Css.property "--tw-translate-y" "-0.375rem"


{-| The tailwind class `-translate-y-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_1over2 : Css.Style
neg_translate_y_1over2 =
    Css.property "--tw-translate-y" "-50%"


{-| The tailwind class `-translate-y-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_1over3 : Css.Style
neg_translate_y_1over3 =
    Css.property "--tw-translate-y" "-33.333333%"


{-| The tailwind class `-translate-y-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_1over4 : Css.Style
neg_translate_y_1over4 =
    Css.property "--tw-translate-y" "-25%"


{-| The tailwind class `-translate-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_2 : Css.Style
neg_translate_y_2 =
    Css.property "--tw-translate-y" "-0.5rem"


{-| The tailwind class `-translate-y-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_20 : Css.Style
neg_translate_y_20 =
    Css.property "--tw-translate-y" "-5rem"


{-| The tailwind class `-translate-y-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_24 : Css.Style
neg_translate_y_24 =
    Css.property "--tw-translate-y" "-6rem"


{-| The tailwind class `-translate-y-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_28 : Css.Style
neg_translate_y_28 =
    Css.property "--tw-translate-y" "-7rem"


{-| The tailwind class `-translate-y-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_2_dot_5 : Css.Style
neg_translate_y_2_dot_5 =
    Css.property "--tw-translate-y" "-0.625rem"


{-| The tailwind class `-translate-y-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_2over3 : Css.Style
neg_translate_y_2over3 =
    Css.property "--tw-translate-y" "-66.666667%"


{-| The tailwind class `-translate-y-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_2over4 : Css.Style
neg_translate_y_2over4 =
    Css.property "--tw-translate-y" "-50%"


{-| The tailwind class `-translate-y-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_3 : Css.Style
neg_translate_y_3 =
    Css.property "--tw-translate-y" "-0.75rem"


{-| The tailwind class `-translate-y-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_32 : Css.Style
neg_translate_y_32 =
    Css.property "--tw-translate-y" "-8rem"


{-| The tailwind class `-translate-y-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_36 : Css.Style
neg_translate_y_36 =
    Css.property "--tw-translate-y" "-9rem"


{-| The tailwind class `-translate-y-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_3_dot_5 : Css.Style
neg_translate_y_3_dot_5 =
    Css.property "--tw-translate-y" "-0.875rem"


{-| The tailwind class `-translate-y-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_3over4 : Css.Style
neg_translate_y_3over4 =
    Css.property "--tw-translate-y" "-75%"


{-| The tailwind class `-translate-y-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_4 : Css.Style
neg_translate_y_4 =
    Css.property "--tw-translate-y" "-1rem"


{-| The tailwind class `-translate-y-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_40 : Css.Style
neg_translate_y_40 =
    Css.property "--tw-translate-y" "-10rem"


{-| The tailwind class `-translate-y-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_44 : Css.Style
neg_translate_y_44 =
    Css.property "--tw-translate-y" "-11rem"


{-| The tailwind class `-translate-y-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_48 : Css.Style
neg_translate_y_48 =
    Css.property "--tw-translate-y" "-12rem"


{-| The tailwind class `-translate-y-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_5 : Css.Style
neg_translate_y_5 =
    Css.property "--tw-translate-y" "-1.25rem"


{-| The tailwind class `-translate-y-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_52 : Css.Style
neg_translate_y_52 =
    Css.property "--tw-translate-y" "-13rem"


{-| The tailwind class `-translate-y-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_56 : Css.Style
neg_translate_y_56 =
    Css.property "--tw-translate-y" "-14rem"


{-| The tailwind class `-translate-y-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_6 : Css.Style
neg_translate_y_6 =
    Css.property "--tw-translate-y" "-1.5rem"


{-| The tailwind class `-translate-y-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_60 : Css.Style
neg_translate_y_60 =
    Css.property "--tw-translate-y" "-15rem"


{-| The tailwind class `-translate-y-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_64 : Css.Style
neg_translate_y_64 =
    Css.property "--tw-translate-y" "-16rem"


{-| The tailwind class `-translate-y-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_7 : Css.Style
neg_translate_y_7 =
    Css.property "--tw-translate-y" "-1.75rem"


{-| The tailwind class `-translate-y-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_72 : Css.Style
neg_translate_y_72 =
    Css.property "--tw-translate-y" "-18rem"


{-| The tailwind class `-translate-y-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_8 : Css.Style
neg_translate_y_8 =
    Css.property "--tw-translate-y" "-2rem"


{-| The tailwind class `-translate-y-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_80 : Css.Style
neg_translate_y_80 =
    Css.property "--tw-translate-y" "-20rem"


{-| The tailwind class `-translate-y-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_9 : Css.Style
neg_translate_y_9 =
    Css.property "--tw-translate-y" "-2.25rem"


{-| The tailwind class `-translate-y-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_96 : Css.Style
neg_translate_y_96 =
    Css.property "--tw-translate-y" "-24rem"


{-| The tailwind class `-translate-y-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_full : Css.Style
neg_translate_y_full =
    Css.property "--tw-translate-y" "-100%"


{-| The tailwind class `-translate-y-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

neg_translate_y_px : Css.Style
neg_translate_y_px =
    Css.property "--tw-translate-y" "-1px"


{-| The tailwind class `no-underline`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

no_underline : Css.Style
no_underline =
    Css.property "text-decoration" "none"


{-| The tailwind class `normal-case`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

normal_case : Css.Style
normal_case =
    Css.property "text-transform" "none"


{-| The tailwind class `normal-nums`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

normal_nums : Css.Style
normal_nums =
    Css.property "font-variant-numeric" "normal"


{-| The tailwind class `not-italic`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

not_italic : Css.Style
not_italic =
    Css.property "font-style" "normal"


{-| The tailwind class `not-sr-only`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

not_sr_only : Css.Style
not_sr_only =
    Css.batch
        [ Css.property "position" "static"
        , Css.property "width" "auto"
        , Css.property "height" "auto"
        , Css.property "padding" "0"
        , Css.property "margin" "0"
        , Css.property "overflow" "visible"
        , Css.property "clip" "auto"
        , Css.property "white-space" "normal"
        ]


{-| The tailwind class `object-bottom`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_bottom : Css.Style
object_bottom =
    Css.batch
        [ Css.property "-o-object-position" "bottom"
        , Css.property "object-position" "bottom"
        ]


{-| The tailwind class `object-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_center : Css.Style
object_center =
    Css.batch
        [ Css.property "-o-object-position" "center"
        , Css.property "object-position" "center"
        ]


{-| The tailwind class `object-contain`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_contain : Css.Style
object_contain =
    Css.batch
        [ Css.property "-o-object-fit" "contain"
        , Css.property "object-fit" "contain"
        ]


{-| The tailwind class `object-cover`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_cover : Css.Style
object_cover =
    Css.batch
        [ Css.property "-o-object-fit" "cover"
        , Css.property "object-fit" "cover"
        ]


{-| The tailwind class `object-fill`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_fill : Css.Style
object_fill =
    Css.batch
        [ Css.property "-o-object-fit" "fill"
        , Css.property "object-fit" "fill"
        ]


{-| The tailwind class `object-left`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_left : Css.Style
object_left =
    Css.batch
        [ Css.property "-o-object-position" "left"
        , Css.property "object-position" "left"
        ]


{-| The tailwind class `object-left-bottom`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_left_bottom : Css.Style
object_left_bottom =
    Css.batch
        [ Css.property "-o-object-position" "left bottom"
        , Css.property "object-position" "left bottom"
        ]


{-| The tailwind class `object-left-top`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_left_top : Css.Style
object_left_top =
    Css.batch
        [ Css.property "-o-object-position" "left top"
        , Css.property "object-position" "left top"
        ]


{-| The tailwind class `object-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_none : Css.Style
object_none =
    Css.batch
        [ Css.property "-o-object-fit" "none"
        , Css.property "object-fit" "none"
        ]


{-| The tailwind class `object-right`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_right : Css.Style
object_right =
    Css.batch
        [ Css.property "-o-object-position" "right"
        , Css.property "object-position" "right"
        ]


{-| The tailwind class `object-right-bottom`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_right_bottom : Css.Style
object_right_bottom =
    Css.batch
        [ Css.property "-o-object-position" "right bottom"
        , Css.property "object-position" "right bottom"
        ]


{-| The tailwind class `object-right-top`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_right_top : Css.Style
object_right_top =
    Css.batch
        [ Css.property "-o-object-position" "right top"
        , Css.property "object-position" "right top"
        ]


{-| The tailwind class `object-scale-down`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_scale_down : Css.Style
object_scale_down =
    Css.batch
        [ Css.property "-o-object-fit" "scale-down"
        , Css.property "object-fit" "scale-down"
        ]


{-| The tailwind class `object-top`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

object_top : Css.Style
object_top =
    Css.batch
        [ Css.property "-o-object-position" "top"
        , Css.property "object-position" "top"
        ]


{-| The tailwind class `oldstyle-nums`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

oldstyle_nums : Css.Style
oldstyle_nums =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-numeric-figure" "oldstyle-nums"
        ]


{-| The tailwind class `opacity-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_0 : Css.Style
opacity_0 =
    Css.property "opacity" "0"


{-| The tailwind class `opacity-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_10 : Css.Style
opacity_10 =
    Css.property "opacity" "0.1"


{-| The tailwind class `opacity-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_100 : Css.Style
opacity_100 =
    Css.property "opacity" "1"


{-| The tailwind class `opacity-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_20 : Css.Style
opacity_20 =
    Css.property "opacity" "0.2"


{-| The tailwind class `opacity-25`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_25 : Css.Style
opacity_25 =
    Css.property "opacity" "0.25"


{-| The tailwind class `opacity-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_30 : Css.Style
opacity_30 =
    Css.property "opacity" "0.3"


{-| The tailwind class `opacity-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_40 : Css.Style
opacity_40 =
    Css.property "opacity" "0.4"


{-| The tailwind class `opacity-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_5 : Css.Style
opacity_5 =
    Css.property "opacity" "0.05"


{-| The tailwind class `opacity-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_50 : Css.Style
opacity_50 =
    Css.property "opacity" "0.5"


{-| The tailwind class `opacity-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_60 : Css.Style
opacity_60 =
    Css.property "opacity" "0.6"


{-| The tailwind class `opacity-70`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_70 : Css.Style
opacity_70 =
    Css.property "opacity" "0.7"


{-| The tailwind class `opacity-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_75 : Css.Style
opacity_75 =
    Css.property "opacity" "0.75"


{-| The tailwind class `opacity-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_80 : Css.Style
opacity_80 =
    Css.property "opacity" "0.8"


{-| The tailwind class `opacity-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_90 : Css.Style
opacity_90 =
    Css.property "opacity" "0.9"


{-| The tailwind class `opacity-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

opacity_95 : Css.Style
opacity_95 =
    Css.property "opacity" "0.95"


{-| The tailwind class `order-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_1 : Css.Style
order_1 =
    Css.property "order" "1"


{-| The tailwind class `order-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_10 : Css.Style
order_10 =
    Css.property "order" "10"


{-| The tailwind class `order-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_11 : Css.Style
order_11 =
    Css.property "order" "11"


{-| The tailwind class `order-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_12 : Css.Style
order_12 =
    Css.property "order" "12"


{-| The tailwind class `order-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_2 : Css.Style
order_2 =
    Css.property "order" "2"


{-| The tailwind class `order-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_3 : Css.Style
order_3 =
    Css.property "order" "3"


{-| The tailwind class `order-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_4 : Css.Style
order_4 =
    Css.property "order" "4"


{-| The tailwind class `order-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_5 : Css.Style
order_5 =
    Css.property "order" "5"


{-| The tailwind class `order-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_6 : Css.Style
order_6 =
    Css.property "order" "6"


{-| The tailwind class `order-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_7 : Css.Style
order_7 =
    Css.property "order" "7"


{-| The tailwind class `order-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_8 : Css.Style
order_8 =
    Css.property "order" "8"


{-| The tailwind class `order-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_9 : Css.Style
order_9 =
    Css.property "order" "9"


{-| The tailwind class `order-first`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_first : Css.Style
order_first =
    Css.property "order" "-9999"


{-| The tailwind class `order-last`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_last : Css.Style
order_last =
    Css.property "order" "9999"


{-| The tailwind class `order-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

order_none : Css.Style
order_none =
    Css.property "order" "0"


{-| The tailwind class `ordinal`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ordinal : Css.Style
ordinal =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-ordinal" "ordinal"
        ]


{-| The tailwind class `origin-bottom`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

origin_bottom : Css.Style
origin_bottom =
    Css.property "transform-origin" "bottom"


{-| The tailwind class `origin-bottom-left`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

origin_bottom_left : Css.Style
origin_bottom_left =
    Css.property "transform-origin" "bottom left"


{-| The tailwind class `origin-bottom-right`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

origin_bottom_right : Css.Style
origin_bottom_right =
    Css.property "transform-origin" "bottom right"


{-| The tailwind class `origin-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

origin_center : Css.Style
origin_center =
    Css.property "transform-origin" "center"


{-| The tailwind class `origin-left`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

origin_left : Css.Style
origin_left =
    Css.property "transform-origin" "left"


{-| The tailwind class `origin-right`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

origin_right : Css.Style
origin_right =
    Css.property "transform-origin" "right"


{-| The tailwind class `origin-top`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

origin_top : Css.Style
origin_top =
    Css.property "transform-origin" "top"


{-| The tailwind class `origin-top-left`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

origin_top_left : Css.Style
origin_top_left =
    Css.property "transform-origin" "top left"


{-| The tailwind class `origin-top-right`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

origin_top_right : Css.Style
origin_top_right =
    Css.property "transform-origin" "top right"


{-| The tailwind class `outline-black`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

outline_black : Css.Style
outline_black =
    Css.batch
        [ Css.property "outline" "2px dotted black"
        , Css.property "outline-offset" "2px"
        ]


{-| The tailwind class `outline-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

outline_none : Css.Style
outline_none =
    Css.batch
        [ Css.property "outline" "2px solid transparent"
        , Css.property "outline-offset" "2px"
        ]


{-| The tailwind class `outline-white`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

outline_white : Css.Style
outline_white =
    Css.batch
        [ Css.property "outline" "2px dotted white"
        , Css.property "outline-offset" "2px"
        ]


{-| The tailwind class `overflow-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_auto : Css.Style
overflow_auto =
    Css.property "overflow" "auto"


{-| The tailwind class `overflow-clip`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_clip : Css.Style
overflow_clip =
    Css.property "text-overflow" "clip"


{-| The tailwind class `overflow-ellipsis`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_ellipsis : Css.Style
overflow_ellipsis =
    Css.property "text-overflow" "ellipsis"


{-| The tailwind class `overflow-hidden`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_hidden : Css.Style
overflow_hidden =
    Css.property "overflow" "hidden"


{-| The tailwind class `overflow-scroll`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_scroll : Css.Style
overflow_scroll =
    Css.property "overflow" "scroll"


{-| The tailwind class `overflow-visible`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_visible : Css.Style
overflow_visible =
    Css.property "overflow" "visible"


{-| The tailwind class `overflow-x-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_x_auto : Css.Style
overflow_x_auto =
    Css.property "overflow-x" "auto"


{-| The tailwind class `overflow-x-hidden`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_x_hidden : Css.Style
overflow_x_hidden =
    Css.property "overflow-x" "hidden"


{-| The tailwind class `overflow-x-scroll`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_x_scroll : Css.Style
overflow_x_scroll =
    Css.property "overflow-x" "scroll"


{-| The tailwind class `overflow-x-visible`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_x_visible : Css.Style
overflow_x_visible =
    Css.property "overflow-x" "visible"


{-| The tailwind class `overflow-y-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_y_auto : Css.Style
overflow_y_auto =
    Css.property "overflow-y" "auto"


{-| The tailwind class `overflow-y-hidden`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_y_hidden : Css.Style
overflow_y_hidden =
    Css.property "overflow-y" "hidden"


{-| The tailwind class `overflow-y-scroll`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_y_scroll : Css.Style
overflow_y_scroll =
    Css.property "overflow-y" "scroll"


{-| The tailwind class `overflow-y-visible`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overflow_y_visible : Css.Style
overflow_y_visible =
    Css.property "overflow-y" "visible"


{-| The tailwind class `overscroll-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overscroll_auto : Css.Style
overscroll_auto =
    Css.property "overscroll-behavior" "auto"


{-| The tailwind class `overscroll-contain`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overscroll_contain : Css.Style
overscroll_contain =
    Css.property "overscroll-behavior" "contain"


{-| The tailwind class `overscroll-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overscroll_none : Css.Style
overscroll_none =
    Css.property "overscroll-behavior" "none"


{-| The tailwind class `overscroll-x-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overscroll_x_auto : Css.Style
overscroll_x_auto =
    Css.property "overscroll-behavior-x" "auto"


{-| The tailwind class `overscroll-x-contain`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overscroll_x_contain : Css.Style
overscroll_x_contain =
    Css.property "overscroll-behavior-x" "contain"


{-| The tailwind class `overscroll-x-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overscroll_x_none : Css.Style
overscroll_x_none =
    Css.property "overscroll-behavior-x" "none"


{-| The tailwind class `overscroll-y-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overscroll_y_auto : Css.Style
overscroll_y_auto =
    Css.property "overscroll-behavior-y" "auto"


{-| The tailwind class `overscroll-y-contain`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overscroll_y_contain : Css.Style
overscroll_y_contain =
    Css.property "overscroll-behavior-y" "contain"


{-| The tailwind class `overscroll-y-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

overscroll_y_none : Css.Style
overscroll_y_none =
    Css.property "overscroll-behavior-y" "none"


{-| The tailwind class `p-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_0 : Css.Style
p_0 =
    Css.property "padding" "0px"


{-| The tailwind class `p-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_0_dot_5 : Css.Style
p_0_dot_5 =
    Css.property "padding" "0.125rem"


{-| The tailwind class `p-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_1 : Css.Style
p_1 =
    Css.property "padding" "0.25rem"


{-| The tailwind class `p-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_10 : Css.Style
p_10 =
    Css.property "padding" "2.5rem"


{-| The tailwind class `p-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_11 : Css.Style
p_11 =
    Css.property "padding" "2.75rem"


{-| The tailwind class `p-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_12 : Css.Style
p_12 =
    Css.property "padding" "3rem"


{-| The tailwind class `p-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_14 : Css.Style
p_14 =
    Css.property "padding" "3.5rem"


{-| The tailwind class `p-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_16 : Css.Style
p_16 =
    Css.property "padding" "4rem"


{-| The tailwind class `p-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_1_dot_5 : Css.Style
p_1_dot_5 =
    Css.property "padding" "0.375rem"


{-| The tailwind class `p-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_2 : Css.Style
p_2 =
    Css.property "padding" "0.5rem"


{-| The tailwind class `p-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_20 : Css.Style
p_20 =
    Css.property "padding" "5rem"


{-| The tailwind class `p-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_24 : Css.Style
p_24 =
    Css.property "padding" "6rem"


{-| The tailwind class `p-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_28 : Css.Style
p_28 =
    Css.property "padding" "7rem"


{-| The tailwind class `p-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_2_dot_5 : Css.Style
p_2_dot_5 =
    Css.property "padding" "0.625rem"


{-| The tailwind class `p-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_3 : Css.Style
p_3 =
    Css.property "padding" "0.75rem"


{-| The tailwind class `p-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_32 : Css.Style
p_32 =
    Css.property "padding" "8rem"


{-| The tailwind class `p-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_36 : Css.Style
p_36 =
    Css.property "padding" "9rem"


{-| The tailwind class `p-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_3_dot_5 : Css.Style
p_3_dot_5 =
    Css.property "padding" "0.875rem"


{-| The tailwind class `p-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_4 : Css.Style
p_4 =
    Css.property "padding" "1rem"


{-| The tailwind class `p-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_40 : Css.Style
p_40 =
    Css.property "padding" "10rem"


{-| The tailwind class `p-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_44 : Css.Style
p_44 =
    Css.property "padding" "11rem"


{-| The tailwind class `p-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_48 : Css.Style
p_48 =
    Css.property "padding" "12rem"


{-| The tailwind class `p-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_5 : Css.Style
p_5 =
    Css.property "padding" "1.25rem"


{-| The tailwind class `p-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_52 : Css.Style
p_52 =
    Css.property "padding" "13rem"


{-| The tailwind class `p-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_56 : Css.Style
p_56 =
    Css.property "padding" "14rem"


{-| The tailwind class `p-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_6 : Css.Style
p_6 =
    Css.property "padding" "1.5rem"


{-| The tailwind class `p-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_60 : Css.Style
p_60 =
    Css.property "padding" "15rem"


{-| The tailwind class `p-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_64 : Css.Style
p_64 =
    Css.property "padding" "16rem"


{-| The tailwind class `p-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_7 : Css.Style
p_7 =
    Css.property "padding" "1.75rem"


{-| The tailwind class `p-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_72 : Css.Style
p_72 =
    Css.property "padding" "18rem"


{-| The tailwind class `p-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_8 : Css.Style
p_8 =
    Css.property "padding" "2rem"


{-| The tailwind class `p-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_80 : Css.Style
p_80 =
    Css.property "padding" "20rem"


{-| The tailwind class `p-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_9 : Css.Style
p_9 =
    Css.property "padding" "2.25rem"


{-| The tailwind class `p-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_96 : Css.Style
p_96 =
    Css.property "padding" "24rem"


{-| The tailwind class `p-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

p_px : Css.Style
p_px =
    Css.property "padding" "1px"


{-| The tailwind class `pb-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_0 : Css.Style
pb_0 =
    Css.property "padding-bottom" "0px"


{-| The tailwind class `pb-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_0_dot_5 : Css.Style
pb_0_dot_5 =
    Css.property "padding-bottom" "0.125rem"


{-| The tailwind class `pb-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_1 : Css.Style
pb_1 =
    Css.property "padding-bottom" "0.25rem"


{-| The tailwind class `pb-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_10 : Css.Style
pb_10 =
    Css.property "padding-bottom" "2.5rem"


{-| The tailwind class `pb-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_11 : Css.Style
pb_11 =
    Css.property "padding-bottom" "2.75rem"


{-| The tailwind class `pb-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_12 : Css.Style
pb_12 =
    Css.property "padding-bottom" "3rem"


{-| The tailwind class `pb-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_14 : Css.Style
pb_14 =
    Css.property "padding-bottom" "3.5rem"


{-| The tailwind class `pb-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_16 : Css.Style
pb_16 =
    Css.property "padding-bottom" "4rem"


{-| The tailwind class `pb-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_1_dot_5 : Css.Style
pb_1_dot_5 =
    Css.property "padding-bottom" "0.375rem"


{-| The tailwind class `pb-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_2 : Css.Style
pb_2 =
    Css.property "padding-bottom" "0.5rem"


{-| The tailwind class `pb-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_20 : Css.Style
pb_20 =
    Css.property "padding-bottom" "5rem"


{-| The tailwind class `pb-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_24 : Css.Style
pb_24 =
    Css.property "padding-bottom" "6rem"


{-| The tailwind class `pb-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_28 : Css.Style
pb_28 =
    Css.property "padding-bottom" "7rem"


{-| The tailwind class `pb-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_2_dot_5 : Css.Style
pb_2_dot_5 =
    Css.property "padding-bottom" "0.625rem"


{-| The tailwind class `pb-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_3 : Css.Style
pb_3 =
    Css.property "padding-bottom" "0.75rem"


{-| The tailwind class `pb-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_32 : Css.Style
pb_32 =
    Css.property "padding-bottom" "8rem"


{-| The tailwind class `pb-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_36 : Css.Style
pb_36 =
    Css.property "padding-bottom" "9rem"


{-| The tailwind class `pb-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_3_dot_5 : Css.Style
pb_3_dot_5 =
    Css.property "padding-bottom" "0.875rem"


{-| The tailwind class `pb-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_4 : Css.Style
pb_4 =
    Css.property "padding-bottom" "1rem"


{-| The tailwind class `pb-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_40 : Css.Style
pb_40 =
    Css.property "padding-bottom" "10rem"


{-| The tailwind class `pb-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_44 : Css.Style
pb_44 =
    Css.property "padding-bottom" "11rem"


{-| The tailwind class `pb-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_48 : Css.Style
pb_48 =
    Css.property "padding-bottom" "12rem"


{-| The tailwind class `pb-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_5 : Css.Style
pb_5 =
    Css.property "padding-bottom" "1.25rem"


{-| The tailwind class `pb-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_52 : Css.Style
pb_52 =
    Css.property "padding-bottom" "13rem"


{-| The tailwind class `pb-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_56 : Css.Style
pb_56 =
    Css.property "padding-bottom" "14rem"


{-| The tailwind class `pb-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_6 : Css.Style
pb_6 =
    Css.property "padding-bottom" "1.5rem"


{-| The tailwind class `pb-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_60 : Css.Style
pb_60 =
    Css.property "padding-bottom" "15rem"


{-| The tailwind class `pb-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_64 : Css.Style
pb_64 =
    Css.property "padding-bottom" "16rem"


{-| The tailwind class `pb-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_7 : Css.Style
pb_7 =
    Css.property "padding-bottom" "1.75rem"


{-| The tailwind class `pb-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_72 : Css.Style
pb_72 =
    Css.property "padding-bottom" "18rem"


{-| The tailwind class `pb-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_8 : Css.Style
pb_8 =
    Css.property "padding-bottom" "2rem"


{-| The tailwind class `pb-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_80 : Css.Style
pb_80 =
    Css.property "padding-bottom" "20rem"


{-| The tailwind class `pb-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_9 : Css.Style
pb_9 =
    Css.property "padding-bottom" "2.25rem"


{-| The tailwind class `pb-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_96 : Css.Style
pb_96 =
    Css.property "padding-bottom" "24rem"


{-| The tailwind class `pb-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pb_px : Css.Style
pb_px =
    Css.property "padding-bottom" "1px"


{-| The tailwind class `pl-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_0 : Css.Style
pl_0 =
    Css.property "padding-left" "0px"


{-| The tailwind class `pl-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_0_dot_5 : Css.Style
pl_0_dot_5 =
    Css.property "padding-left" "0.125rem"


{-| The tailwind class `pl-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_1 : Css.Style
pl_1 =
    Css.property "padding-left" "0.25rem"


{-| The tailwind class `pl-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_10 : Css.Style
pl_10 =
    Css.property "padding-left" "2.5rem"


{-| The tailwind class `pl-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_11 : Css.Style
pl_11 =
    Css.property "padding-left" "2.75rem"


{-| The tailwind class `pl-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_12 : Css.Style
pl_12 =
    Css.property "padding-left" "3rem"


{-| The tailwind class `pl-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_14 : Css.Style
pl_14 =
    Css.property "padding-left" "3.5rem"


{-| The tailwind class `pl-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_16 : Css.Style
pl_16 =
    Css.property "padding-left" "4rem"


{-| The tailwind class `pl-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_1_dot_5 : Css.Style
pl_1_dot_5 =
    Css.property "padding-left" "0.375rem"


{-| The tailwind class `pl-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_2 : Css.Style
pl_2 =
    Css.property "padding-left" "0.5rem"


{-| The tailwind class `pl-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_20 : Css.Style
pl_20 =
    Css.property "padding-left" "5rem"


{-| The tailwind class `pl-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_24 : Css.Style
pl_24 =
    Css.property "padding-left" "6rem"


{-| The tailwind class `pl-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_28 : Css.Style
pl_28 =
    Css.property "padding-left" "7rem"


{-| The tailwind class `pl-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_2_dot_5 : Css.Style
pl_2_dot_5 =
    Css.property "padding-left" "0.625rem"


{-| The tailwind class `pl-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_3 : Css.Style
pl_3 =
    Css.property "padding-left" "0.75rem"


{-| The tailwind class `pl-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_32 : Css.Style
pl_32 =
    Css.property "padding-left" "8rem"


{-| The tailwind class `pl-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_36 : Css.Style
pl_36 =
    Css.property "padding-left" "9rem"


{-| The tailwind class `pl-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_3_dot_5 : Css.Style
pl_3_dot_5 =
    Css.property "padding-left" "0.875rem"


{-| The tailwind class `pl-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_4 : Css.Style
pl_4 =
    Css.property "padding-left" "1rem"


{-| The tailwind class `pl-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_40 : Css.Style
pl_40 =
    Css.property "padding-left" "10rem"


{-| The tailwind class `pl-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_44 : Css.Style
pl_44 =
    Css.property "padding-left" "11rem"


{-| The tailwind class `pl-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_48 : Css.Style
pl_48 =
    Css.property "padding-left" "12rem"


{-| The tailwind class `pl-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_5 : Css.Style
pl_5 =
    Css.property "padding-left" "1.25rem"


{-| The tailwind class `pl-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_52 : Css.Style
pl_52 =
    Css.property "padding-left" "13rem"


{-| The tailwind class `pl-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_56 : Css.Style
pl_56 =
    Css.property "padding-left" "14rem"


{-| The tailwind class `pl-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_6 : Css.Style
pl_6 =
    Css.property "padding-left" "1.5rem"


{-| The tailwind class `pl-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_60 : Css.Style
pl_60 =
    Css.property "padding-left" "15rem"


{-| The tailwind class `pl-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_64 : Css.Style
pl_64 =
    Css.property "padding-left" "16rem"


{-| The tailwind class `pl-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_7 : Css.Style
pl_7 =
    Css.property "padding-left" "1.75rem"


{-| The tailwind class `pl-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_72 : Css.Style
pl_72 =
    Css.property "padding-left" "18rem"


{-| The tailwind class `pl-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_8 : Css.Style
pl_8 =
    Css.property "padding-left" "2rem"


{-| The tailwind class `pl-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_80 : Css.Style
pl_80 =
    Css.property "padding-left" "20rem"


{-| The tailwind class `pl-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_9 : Css.Style
pl_9 =
    Css.property "padding-left" "2.25rem"


{-| The tailwind class `pl-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_96 : Css.Style
pl_96 =
    Css.property "padding-left" "24rem"


{-| The tailwind class `pl-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pl_px : Css.Style
pl_px =
    Css.property "padding-left" "1px"


{-| The tailwind class `place-content-around`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_content_around : Css.Style
place_content_around =
    Css.property "place-content" "space-around"


{-| The tailwind class `place-content-between`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_content_between : Css.Style
place_content_between =
    Css.property "place-content" "space-between"


{-| The tailwind class `place-content-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_content_center : Css.Style
place_content_center =
    Css.property "place-content" "center"


{-| The tailwind class `place-content-end`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_content_end : Css.Style
place_content_end =
    Css.property "place-content" "end"


{-| The tailwind class `place-content-evenly`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_content_evenly : Css.Style
place_content_evenly =
    Css.property "place-content" "space-evenly"


{-| The tailwind class `place-content-start`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_content_start : Css.Style
place_content_start =
    Css.property "place-content" "start"


{-| The tailwind class `place-content-stretch`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_content_stretch : Css.Style
place_content_stretch =
    Css.property "place-content" "stretch"


{-| The tailwind class `place-items-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_items_center : Css.Style
place_items_center =
    Css.property "place-items" "center"


{-| The tailwind class `place-items-end`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_items_end : Css.Style
place_items_end =
    Css.property "place-items" "end"


{-| The tailwind class `place-items-start`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_items_start : Css.Style
place_items_start =
    Css.property "place-items" "start"


{-| The tailwind class `place-items-stretch`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_items_stretch : Css.Style
place_items_stretch =
    Css.property "place-items" "stretch"


{-| The tailwind class `place-self-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_self_auto : Css.Style
place_self_auto =
    Css.property "place-self" "auto"


{-| The tailwind class `place-self-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_self_center : Css.Style
place_self_center =
    Css.property "place-self" "center"


{-| The tailwind class `place-self-end`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_self_end : Css.Style
place_self_end =
    Css.property "place-self" "end"


{-| The tailwind class `place-self-start`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_self_start : Css.Style
place_self_start =
    Css.property "place-self" "start"


{-| The tailwind class `place-self-stretch`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

place_self_stretch : Css.Style
place_self_stretch =
    Css.property "place-self" "stretch"


{-| The tailwind class `placeholder-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_destruct : Css.Style
placeholder_destruct =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(142, 74, 73, var(--tw-placeholder-opacity))"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(142, 74, 73, var(--tw-placeholder-opacity))"
            ]
        ]


{-| The tailwind class `placeholder-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_exclaim : Css.Style
placeholder_exclaim =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(224, 144, 93, var(--tw-placeholder-opacity))"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(224, 144, 93, var(--tw-placeholder-opacity))"
            ]
        ]


{-| The tailwind class `placeholder-opacity-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_0 : Css.Style
placeholder_opacity_0 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0"
            ]
        ]


{-| The tailwind class `placeholder-opacity-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_10 : Css.Style
placeholder_opacity_10 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.1"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.1"
            ]
        ]


{-| The tailwind class `placeholder-opacity-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_100 : Css.Style
placeholder_opacity_100 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            ]
        ]


{-| The tailwind class `placeholder-opacity-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_20 : Css.Style
placeholder_opacity_20 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.2"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.2"
            ]
        ]


{-| The tailwind class `placeholder-opacity-25`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_25 : Css.Style
placeholder_opacity_25 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.25"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.25"
            ]
        ]


{-| The tailwind class `placeholder-opacity-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_30 : Css.Style
placeholder_opacity_30 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.3"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.3"
            ]
        ]


{-| The tailwind class `placeholder-opacity-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_40 : Css.Style
placeholder_opacity_40 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.4"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.4"
            ]
        ]


{-| The tailwind class `placeholder-opacity-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_5 : Css.Style
placeholder_opacity_5 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.05"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.05"
            ]
        ]


{-| The tailwind class `placeholder-opacity-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_50 : Css.Style
placeholder_opacity_50 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.5"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.5"
            ]
        ]


{-| The tailwind class `placeholder-opacity-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_60 : Css.Style
placeholder_opacity_60 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.6"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.6"
            ]
        ]


{-| The tailwind class `placeholder-opacity-70`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_70 : Css.Style
placeholder_opacity_70 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.7"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.7"
            ]
        ]


{-| The tailwind class `placeholder-opacity-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_75 : Css.Style
placeholder_opacity_75 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.75"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.75"
            ]
        ]


{-| The tailwind class `placeholder-opacity-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_80 : Css.Style
placeholder_opacity_80 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.8"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.8"
            ]
        ]


{-| The tailwind class `placeholder-opacity-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_90 : Css.Style
placeholder_opacity_90 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.9"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.9"
            ]
        ]


{-| The tailwind class `placeholder-opacity-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_opacity_95 : Css.Style
placeholder_opacity_95 =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.95"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "0.95"
            ]
        ]


{-| The tailwind class `placeholder-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_primary : Css.Style
placeholder_primary =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(150, 89, 88, var(--tw-placeholder-opacity))"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(150, 89, 88, var(--tw-placeholder-opacity))"
            ]
        ]


{-| The tailwind class `placeholder-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_secondary : Css.Style
placeholder_secondary =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "color" "#dfeee3ff"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "color" "#dfeee3ff"
            ]
        ]


{-| The tailwind class `placeholder-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_success : Css.Style
placeholder_success =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(78, 208, 182, var(--tw-placeholder-opacity))"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(78, 208, 182, var(--tw-placeholder-opacity))"
            ]
        ]


{-| The tailwind class `placeholder-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

placeholder_tertiary : Css.Style
placeholder_tertiary =
    Css.batch
        [ Css.pseudoElement "placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(161, 159, 187, var(--tw-placeholder-opacity))"
            ]
        , Css.pseudoElement "-moz-placeholder"
            [ Css.property "--tw-placeholder-opacity" "1"
            , Css.property "color" "rgba(161, 159, 187, var(--tw-placeholder-opacity))"
            ]
        ]


{-| The tailwind class `pointer-events-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pointer_events_auto : Css.Style
pointer_events_auto =
    Css.property "pointer-events" "auto"


{-| The tailwind class `pointer-events-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pointer_events_none : Css.Style
pointer_events_none =
    Css.property "pointer-events" "none"


{-| The tailwind class `pr-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_0 : Css.Style
pr_0 =
    Css.property "padding-right" "0px"


{-| The tailwind class `pr-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_0_dot_5 : Css.Style
pr_0_dot_5 =
    Css.property "padding-right" "0.125rem"


{-| The tailwind class `pr-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_1 : Css.Style
pr_1 =
    Css.property "padding-right" "0.25rem"


{-| The tailwind class `pr-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_10 : Css.Style
pr_10 =
    Css.property "padding-right" "2.5rem"


{-| The tailwind class `pr-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_11 : Css.Style
pr_11 =
    Css.property "padding-right" "2.75rem"


{-| The tailwind class `pr-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_12 : Css.Style
pr_12 =
    Css.property "padding-right" "3rem"


{-| The tailwind class `pr-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_14 : Css.Style
pr_14 =
    Css.property "padding-right" "3.5rem"


{-| The tailwind class `pr-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_16 : Css.Style
pr_16 =
    Css.property "padding-right" "4rem"


{-| The tailwind class `pr-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_1_dot_5 : Css.Style
pr_1_dot_5 =
    Css.property "padding-right" "0.375rem"


{-| The tailwind class `pr-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_2 : Css.Style
pr_2 =
    Css.property "padding-right" "0.5rem"


{-| The tailwind class `pr-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_20 : Css.Style
pr_20 =
    Css.property "padding-right" "5rem"


{-| The tailwind class `pr-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_24 : Css.Style
pr_24 =
    Css.property "padding-right" "6rem"


{-| The tailwind class `pr-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_28 : Css.Style
pr_28 =
    Css.property "padding-right" "7rem"


{-| The tailwind class `pr-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_2_dot_5 : Css.Style
pr_2_dot_5 =
    Css.property "padding-right" "0.625rem"


{-| The tailwind class `pr-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_3 : Css.Style
pr_3 =
    Css.property "padding-right" "0.75rem"


{-| The tailwind class `pr-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_32 : Css.Style
pr_32 =
    Css.property "padding-right" "8rem"


{-| The tailwind class `pr-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_36 : Css.Style
pr_36 =
    Css.property "padding-right" "9rem"


{-| The tailwind class `pr-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_3_dot_5 : Css.Style
pr_3_dot_5 =
    Css.property "padding-right" "0.875rem"


{-| The tailwind class `pr-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_4 : Css.Style
pr_4 =
    Css.property "padding-right" "1rem"


{-| The tailwind class `pr-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_40 : Css.Style
pr_40 =
    Css.property "padding-right" "10rem"


{-| The tailwind class `pr-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_44 : Css.Style
pr_44 =
    Css.property "padding-right" "11rem"


{-| The tailwind class `pr-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_48 : Css.Style
pr_48 =
    Css.property "padding-right" "12rem"


{-| The tailwind class `pr-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_5 : Css.Style
pr_5 =
    Css.property "padding-right" "1.25rem"


{-| The tailwind class `pr-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_52 : Css.Style
pr_52 =
    Css.property "padding-right" "13rem"


{-| The tailwind class `pr-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_56 : Css.Style
pr_56 =
    Css.property "padding-right" "14rem"


{-| The tailwind class `pr-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_6 : Css.Style
pr_6 =
    Css.property "padding-right" "1.5rem"


{-| The tailwind class `pr-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_60 : Css.Style
pr_60 =
    Css.property "padding-right" "15rem"


{-| The tailwind class `pr-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_64 : Css.Style
pr_64 =
    Css.property "padding-right" "16rem"


{-| The tailwind class `pr-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_7 : Css.Style
pr_7 =
    Css.property "padding-right" "1.75rem"


{-| The tailwind class `pr-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_72 : Css.Style
pr_72 =
    Css.property "padding-right" "18rem"


{-| The tailwind class `pr-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_8 : Css.Style
pr_8 =
    Css.property "padding-right" "2rem"


{-| The tailwind class `pr-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_80 : Css.Style
pr_80 =
    Css.property "padding-right" "20rem"


{-| The tailwind class `pr-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_9 : Css.Style
pr_9 =
    Css.property "padding-right" "2.25rem"


{-| The tailwind class `pr-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_96 : Css.Style
pr_96 =
    Css.property "padding-right" "24rem"


{-| The tailwind class `pr-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pr_px : Css.Style
pr_px =
    Css.property "padding-right" "1px"


{-| The tailwind class `proportional-nums`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

proportional_nums : Css.Style
proportional_nums =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-numeric-spacing" "proportional-nums"
        ]


{-| The tailwind class `prose`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

prose : Css.Style
prose =
    Css.batch
        [ Css.property "color" "#374151"
        , Css.property "max-width" "65ch"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.75"
        , Css.Global.children
            [ Css.Global.selector ":last-child"
                [ Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector ":first-child"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ol"
                [ Css.property "margin-top" "0.75em"
                , Css.property "margin-bottom" "0.75em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ul"
                [ Css.property "margin-top" "0.75em"
                , Css.property "margin-bottom" "0.75em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ol"
                [ Css.property "margin-top" "0.75em"
                , Css.property "margin-bottom" "0.75em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ul"
                [ Css.property "margin-top" "0.75em"
                , Css.property "margin-bottom" "0.75em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:last-child"
                [ Css.property "margin-bottom" "1.25em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:first-child"
                [ Css.property "margin-top" "1.25em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:last-child"
                [ Css.property "margin-bottom" "1.25em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:first-child"
                [ Css.property "margin-top" "1.25em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li p"
                [ Css.property "margin-top" "0.75em"
                , Css.property "margin-bottom" "0.75em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "li"
                [ Css.property "margin-top" "0.5em"
                , Css.property "margin-bottom" "0.5em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul"
                [ Css.property "margin-top" "1.25em"
                , Css.property "margin-bottom" "1.25em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol"
                [ Css.property "margin-top" "1.25em"
                , Css.property "margin-bottom" "1.25em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 code"
                [ Css.property "font-size" "0.9em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 code"
                [ Css.property "font-size" "0.875em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure > *"
                [ Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure"
                [ Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "video"
                [ Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "img"
                [ Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "p"
                [ Css.property "margin-top" "1.25em"
                , Css.property "margin-bottom" "1.25em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td"
                [ Css.property "vertical-align" "top"
                , Css.property "padding-top" "0.5714286em"
                , Css.property "padding-right" "0.5714286em"
                , Css.property "padding-bottom" "0.5714286em"
                , Css.property "padding-left" "0.5714286em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody tr:last-child"
                [ Css.property "border-bottom-width" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody tr"
                [ Css.property "border-bottom-width" "1px"
                , Css.property "border-bottom-color" "#e5e7eb"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th"
                [ Css.property "vertical-align" "bottom"
                , Css.property "padding-right" "0.5714286em"
                , Css.property "padding-bottom" "0.5714286em"
                , Css.property "padding-left" "0.5714286em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead"
                [ Css.property "color" "#111827"
                , Css.property "font-weight" "600"
                , Css.property "border-bottom-width" "1px"
                , Css.property "border-bottom-color" "#d1d5db"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "table"
                [ Css.property "width" "100%"
                , Css.property "table-layout" "auto"
                , Css.property "text-align" "left"
                , Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                , Css.property "font-size" "0.875em"
                , Css.property "line-height" "1.7142857"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "pre code::after"
                [ Css.property "content" "none"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "pre code::before"
                [ Css.property "content" "none"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "pre code"
                [ Css.property "background-color" "transparent"
                , Css.property "border-width" "0"
                , Css.property "border-radius" "0"
                , Css.property "padding" "0"
                , Css.property "font-weight" "400"
                , Css.property "color" "inherit"
                , Css.property "font-size" "inherit"
                , Css.property "font-family" "inherit"
                , Css.property "line-height" "inherit"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "pre"
                [ Css.property "color" "#e5e7eb"
                , Css.property "background-color" "#1f2937"
                , Css.property "overflow-x" "auto"
                , Css.property "font-size" "0.875em"
                , Css.property "line-height" "1.7142857"
                , Css.property "margin-top" "1.7142857em"
                , Css.property "margin-bottom" "1.7142857em"
                , Css.property "border-radius" "0.375rem"
                , Css.property "padding-top" "0.8571429em"
                , Css.property "padding-right" "1.1428571em"
                , Css.property "padding-bottom" "0.8571429em"
                , Css.property "padding-left" "1.1428571em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "a code"
                [ Css.property "color" "#111827"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "code::after"
                [ Css.property "content" "\"`\""
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "code::before"
                [ Css.property "content" "\"`\""
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "code"
                [ Css.property "color" "#111827"
                , Css.property "font-weight" "600"
                , Css.property "font-size" "0.875em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure figcaption"
                [ Css.property "color" "#6b7280"
                , Css.property "font-size" "0.875em"
                , Css.property "line-height" "1.4285714"
                , Css.property "margin-top" "0.8571429em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4"
                [ Css.property "color" "#111827"
                , Css.property "font-weight" "600"
                , Css.property "margin-top" "1.5em"
                , Css.property "margin-bottom" "0.5em"
                , Css.property "line-height" "1.5"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3"
                [ Css.property "color" "#111827"
                , Css.property "font-weight" "600"
                , Css.property "font-size" "1.25em"
                , Css.property "margin-top" "1.6em"
                , Css.property "margin-bottom" "0.6em"
                , Css.property "line-height" "1.6"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2"
                [ Css.property "color" "#111827"
                , Css.property "font-weight" "700"
                , Css.property "font-size" "1.5em"
                , Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "1em"
                , Css.property "line-height" "1.3333333"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h1"
                [ Css.property "color" "#111827"
                , Css.property "font-weight" "800"
                , Css.property "font-size" "2.25em"
                , Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0.8888889em"
                , Css.property "line-height" "1.1111111"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "blockquote p:last-of-type::after"
                [ Css.property "content" "close-quote"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "blockquote p:first-of-type::before"
                [ Css.property "content" "open-quote"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "blockquote"
                [ Css.property "font-weight" "500"
                , Css.property "font-style" "italic"
                , Css.property "color" "#111827"
                , Css.property "border-left-width" "0.25rem"
                , Css.property "border-left-color" "#e5e7eb"
                , Css.property "quotes" "\"\\201C\"\"\\201D\"\"\\2018\"\"\\2019\""
                , Css.property "margin-top" "1.6em"
                , Css.property "margin-bottom" "1.6em"
                , Css.property "padding-left" "1em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr"
                [ Css.property "border-color" "#e5e7eb"
                , Css.property "border-top-width" "1px"
                , Css.property "margin-top" "3em"
                , Css.property "margin-bottom" "3em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li::before"
                [ Css.property "content" "\"\""
                , Css.property "position" "absolute"
                , Css.property "background-color" "#d1d5db"
                , Css.property "border-radius" "50%"
                , Css.property "width" "0.375em"
                , Css.property "height" "0.375em"
                , Css.property "top" "calc(0.875em - 0.1875em)"
                , Css.property "left" "0.25em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li"
                [ Css.property "position" "relative"
                , Css.property "padding-left" "1.75em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li::before"
                [ Css.property "content" "counter(list-item, var(--list-counter-style, decimal)) \".\""
                , Css.property "position" "absolute"
                , Css.property "font-weight" "400"
                , Css.property "color" "#6b7280"
                , Css.property "left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li"
                [ Css.property "position" "relative"
                , Css.property "padding-left" "1.75em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol[type='1'i]"
                [ Css.property "--list-counter-style" "decimal"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol[type='i's]"
                [ Css.property "--list-counter-style" "lower-roman"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol[type='I's]"
                [ Css.property "--list-counter-style" "upper-roman"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol[type='i'i]"
                [ Css.property "--list-counter-style" "lower-roman"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol[type='I'i]"
                [ Css.property "--list-counter-style" "upper-roman"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol[type='a's]"
                [ Css.property "--list-counter-style" "lower-alpha"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol[type='A's]"
                [ Css.property "--list-counter-style" "upper-alpha"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol[type='a'i]"
                [ Css.property "--list-counter-style" "lower-alpha"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol[type='A'i]"
                [ Css.property "--list-counter-style" "upper-alpha"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "strong"
                [ Css.property "color" "#111827"
                , Css.property "font-weight" "600"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "a"
                [ Css.property "color" "#111827"
                , Css.property "text-decoration" "underline"
                , Css.property "font-weight" "500"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector ".lead"
                [ Css.property "color" "#4b5563"
                , Css.property "font-size" "1.25em"
                , Css.property "line-height" "1.6"
                , Css.property "margin-top" "1.2em"
                , Css.property "margin-bottom" "1.2em"
                ]
            ]
        ]


{-| The tailwind class `prose-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

prose_2xl : Css.Style
prose_2xl =
    Css.batch
        [ Css.property "font-size" "1.5rem"
        , Css.property "line-height" "1.6666667"
        , Css.Global.children
            [ Css.Global.selector ":last-child"
                [ Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector ":first-child"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td"
                [ Css.property "padding-top" "0.8em"
                , Css.property "padding-right" "0.6em"
                , Css.property "padding-bottom" "0.8em"
                , Css.property "padding-left" "0.6em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th"
                [ Css.property "padding-right" "0.6em"
                , Css.property "padding-bottom" "0.8em"
                , Css.property "padding-left" "0.6em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "table"
                [ Css.property "font-size" "0.8333333em"
                , Css.property "line-height" "1.4"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr"
                [ Css.property "margin-top" "3em"
                , Css.property "margin-bottom" "3em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ol"
                [ Css.property "margin-top" "0.6666667em"
                , Css.property "margin-bottom" "0.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ul"
                [ Css.property "margin-top" "0.6666667em"
                , Css.property "margin-bottom" "0.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ol"
                [ Css.property "margin-top" "0.6666667em"
                , Css.property "margin-bottom" "0.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ul"
                [ Css.property "margin-top" "0.6666667em"
                , Css.property "margin-bottom" "0.6666667em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:last-child"
                [ Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:first-child"
                [ Css.property "margin-top" "1.3333333em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:last-child"
                [ Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:first-child"
                [ Css.property "margin-top" "1.3333333em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li p"
                [ Css.property "margin-top" "0.8333333em"
                , Css.property "margin-bottom" "0.8333333em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li::before"
                [ Css.property "width" "0.3333333em"
                , Css.property "height" "0.3333333em"
                , Css.property "top" "calc(0.8333333em - 0.1666667em)"
                , Css.property "left" "0.25em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li"
                [ Css.property "padding-left" "1.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li::before"
                [ Css.property "left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li"
                [ Css.property "padding-left" "1.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "li"
                [ Css.property "margin-top" "0.5em"
                , Css.property "margin-bottom" "0.5em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul"
                [ Css.property "margin-top" "1.3333333em"
                , Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol"
                [ Css.property "margin-top" "1.3333333em"
                , Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "pre"
                [ Css.property "font-size" "0.8333333em"
                , Css.property "line-height" "1.8"
                , Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                , Css.property "border-radius" "0.5rem"
                , Css.property "padding-top" "1.2em"
                , Css.property "padding-right" "1.6em"
                , Css.property "padding-bottom" "1.2em"
                , Css.property "padding-left" "1.6em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 code"
                [ Css.property "font-size" "0.8888889em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 code"
                [ Css.property "font-size" "0.875em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "code"
                [ Css.property "font-size" "0.8333333em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure figcaption"
                [ Css.property "font-size" "0.8333333em"
                , Css.property "line-height" "1.6"
                , Css.property "margin-top" "1em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure > *"
                [ Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure"
                [ Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "video"
                [ Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "img"
                [ Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4"
                [ Css.property "margin-top" "1.6666667em"
                , Css.property "margin-bottom" "0.6666667em"
                , Css.property "line-height" "1.5"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3"
                [ Css.property "font-size" "1.5em"
                , Css.property "margin-top" "1.5555556em"
                , Css.property "margin-bottom" "0.6666667em"
                , Css.property "line-height" "1.2222222"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2"
                [ Css.property "font-size" "2em"
                , Css.property "margin-top" "1.5em"
                , Css.property "margin-bottom" "0.8333333em"
                , Css.property "line-height" "1.0833333"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h1"
                [ Css.property "font-size" "2.6666667em"
                , Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0.875em"
                , Css.property "line-height" "1"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "blockquote"
                [ Css.property "margin-top" "1.7777778em"
                , Css.property "margin-bottom" "1.7777778em"
                , Css.property "padding-left" "1.1111111em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector ".lead"
                [ Css.property "font-size" "1.25em"
                , Css.property "line-height" "1.4666667"
                , Css.property "margin-top" "1.0666667em"
                , Css.property "margin-bottom" "1.0666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "p"
                [ Css.property "margin-top" "1.3333333em"
                , Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        ]


{-| The tailwind class `prose-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

prose_lg : Css.Style
prose_lg =
    Css.batch
        [ Css.property "font-size" "1.125rem"
        , Css.property "line-height" "1.7777778"
        , Css.Global.children
            [ Css.Global.selector ":last-child"
                [ Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector ":first-child"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td"
                [ Css.property "padding-top" "0.75em"
                , Css.property "padding-right" "0.75em"
                , Css.property "padding-bottom" "0.75em"
                , Css.property "padding-left" "0.75em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th"
                [ Css.property "padding-right" "0.75em"
                , Css.property "padding-bottom" "0.75em"
                , Css.property "padding-left" "0.75em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "table"
                [ Css.property "font-size" "0.8888889em"
                , Css.property "line-height" "1.5"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr"
                [ Css.property "margin-top" "3.1111111em"
                , Css.property "margin-bottom" "3.1111111em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ol"
                [ Css.property "margin-top" "0.8888889em"
                , Css.property "margin-bottom" "0.8888889em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ul"
                [ Css.property "margin-top" "0.8888889em"
                , Css.property "margin-bottom" "0.8888889em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ol"
                [ Css.property "margin-top" "0.8888889em"
                , Css.property "margin-bottom" "0.8888889em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ul"
                [ Css.property "margin-top" "0.8888889em"
                , Css.property "margin-bottom" "0.8888889em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:last-child"
                [ Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:first-child"
                [ Css.property "margin-top" "1.3333333em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:last-child"
                [ Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:first-child"
                [ Css.property "margin-top" "1.3333333em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li p"
                [ Css.property "margin-top" "0.8888889em"
                , Css.property "margin-bottom" "0.8888889em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li::before"
                [ Css.property "width" "0.3333333em"
                , Css.property "height" "0.3333333em"
                , Css.property "top" "calc(0.8888889em - 0.1666667em)"
                , Css.property "left" "0.2222222em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li"
                [ Css.property "padding-left" "1.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li::before"
                [ Css.property "left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li"
                [ Css.property "padding-left" "1.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "li"
                [ Css.property "margin-top" "0.6666667em"
                , Css.property "margin-bottom" "0.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul"
                [ Css.property "margin-top" "1.3333333em"
                , Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol"
                [ Css.property "margin-top" "1.3333333em"
                , Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "pre"
                [ Css.property "font-size" "0.8888889em"
                , Css.property "line-height" "1.75"
                , Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                , Css.property "border-radius" "0.375rem"
                , Css.property "padding-top" "1em"
                , Css.property "padding-right" "1.5em"
                , Css.property "padding-bottom" "1em"
                , Css.property "padding-left" "1.5em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 code"
                [ Css.property "font-size" "0.875em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 code"
                [ Css.property "font-size" "0.8666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "code"
                [ Css.property "font-size" "0.8888889em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure figcaption"
                [ Css.property "font-size" "0.8888889em"
                , Css.property "line-height" "1.5"
                , Css.property "margin-top" "1em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure > *"
                [ Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure"
                [ Css.property "margin-top" "1.7777778em"
                , Css.property "margin-bottom" "1.7777778em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "video"
                [ Css.property "margin-top" "1.7777778em"
                , Css.property "margin-bottom" "1.7777778em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "img"
                [ Css.property "margin-top" "1.7777778em"
                , Css.property "margin-bottom" "1.7777778em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4"
                [ Css.property "margin-top" "1.7777778em"
                , Css.property "margin-bottom" "0.4444444em"
                , Css.property "line-height" "1.5555556"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3"
                [ Css.property "font-size" "1.3333333em"
                , Css.property "margin-top" "1.6666667em"
                , Css.property "margin-bottom" "0.6666667em"
                , Css.property "line-height" "1.5"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2"
                [ Css.property "font-size" "1.6666667em"
                , Css.property "margin-top" "1.8666667em"
                , Css.property "margin-bottom" "1.0666667em"
                , Css.property "line-height" "1.3333333"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h1"
                [ Css.property "font-size" "2.6666667em"
                , Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0.8333333em"
                , Css.property "line-height" "1"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "blockquote"
                [ Css.property "margin-top" "1.6666667em"
                , Css.property "margin-bottom" "1.6666667em"
                , Css.property "padding-left" "1em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector ".lead"
                [ Css.property "font-size" "1.2222222em"
                , Css.property "line-height" "1.4545455"
                , Css.property "margin-top" "1.0909091em"
                , Css.property "margin-bottom" "1.0909091em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "p"
                [ Css.property "margin-top" "1.3333333em"
                , Css.property "margin-bottom" "1.3333333em"
                ]
            ]
        ]


{-| The tailwind class `prose-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

prose_sm : Css.Style
prose_sm =
    Css.batch
        [ Css.property "font-size" "0.875rem"
        , Css.property "line-height" "1.7142857"
        , Css.Global.children
            [ Css.Global.selector ":last-child"
                [ Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector ":first-child"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td"
                [ Css.property "padding-top" "0.6666667em"
                , Css.property "padding-right" "1em"
                , Css.property "padding-bottom" "0.6666667em"
                , Css.property "padding-left" "1em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th"
                [ Css.property "padding-right" "1em"
                , Css.property "padding-bottom" "0.6666667em"
                , Css.property "padding-left" "1em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "table"
                [ Css.property "font-size" "0.8571429em"
                , Css.property "line-height" "1.5"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr"
                [ Css.property "margin-top" "2.8571429em"
                , Css.property "margin-bottom" "2.8571429em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ol"
                [ Css.property "margin-top" "0.5714286em"
                , Css.property "margin-bottom" "0.5714286em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ul"
                [ Css.property "margin-top" "0.5714286em"
                , Css.property "margin-bottom" "0.5714286em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ol"
                [ Css.property "margin-top" "0.5714286em"
                , Css.property "margin-bottom" "0.5714286em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ul"
                [ Css.property "margin-top" "0.5714286em"
                , Css.property "margin-bottom" "0.5714286em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:last-child"
                [ Css.property "margin-bottom" "1.1428571em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:first-child"
                [ Css.property "margin-top" "1.1428571em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:last-child"
                [ Css.property "margin-bottom" "1.1428571em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:first-child"
                [ Css.property "margin-top" "1.1428571em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li p"
                [ Css.property "margin-top" "0.5714286em"
                , Css.property "margin-bottom" "0.5714286em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li::before"
                [ Css.property "height" "0.3571429em"
                , Css.property "width" "0.3571429em"
                , Css.property "top" "calc(0.8571429em - 0.1785714em)"
                , Css.property "left" "0.2142857em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li"
                [ Css.property "padding-left" "1.5714286em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li::before"
                [ Css.property "left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li"
                [ Css.property "padding-left" "1.5714286em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "li"
                [ Css.property "margin-top" "0.2857143em"
                , Css.property "margin-bottom" "0.2857143em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul"
                [ Css.property "margin-top" "1.1428571em"
                , Css.property "margin-bottom" "1.1428571em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol"
                [ Css.property "margin-top" "1.1428571em"
                , Css.property "margin-bottom" "1.1428571em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "pre"
                [ Css.property "font-size" "0.8571429em"
                , Css.property "line-height" "1.6666667"
                , Css.property "margin-top" "1.6666667em"
                , Css.property "margin-bottom" "1.6666667em"
                , Css.property "border-radius" "0.25rem"
                , Css.property "padding-top" "0.6666667em"
                , Css.property "padding-right" "1em"
                , Css.property "padding-bottom" "0.6666667em"
                , Css.property "padding-left" "1em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 code"
                [ Css.property "font-size" "0.8888889em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 code"
                [ Css.property "font-size" "0.9em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "code"
                [ Css.property "font-size" "0.8571429em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure figcaption"
                [ Css.property "font-size" "0.8571429em"
                , Css.property "line-height" "1.3333333"
                , Css.property "margin-top" "0.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure > *"
                [ Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure"
                [ Css.property "margin-top" "1.7142857em"
                , Css.property "margin-bottom" "1.7142857em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "video"
                [ Css.property "margin-top" "1.7142857em"
                , Css.property "margin-bottom" "1.7142857em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "img"
                [ Css.property "margin-top" "1.7142857em"
                , Css.property "margin-bottom" "1.7142857em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4"
                [ Css.property "margin-top" "1.4285714em"
                , Css.property "margin-bottom" "0.5714286em"
                , Css.property "line-height" "1.4285714"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3"
                [ Css.property "font-size" "1.2857143em"
                , Css.property "margin-top" "1.5555556em"
                , Css.property "margin-bottom" "0.4444444em"
                , Css.property "line-height" "1.5555556"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2"
                [ Css.property "font-size" "1.4285714em"
                , Css.property "margin-top" "1.6em"
                , Css.property "margin-bottom" "0.8em"
                , Css.property "line-height" "1.4"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h1"
                [ Css.property "font-size" "2.1428571em"
                , Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0.8em"
                , Css.property "line-height" "1.2"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "blockquote"
                [ Css.property "margin-top" "1.3333333em"
                , Css.property "margin-bottom" "1.3333333em"
                , Css.property "padding-left" "1.1111111em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector ".lead"
                [ Css.property "font-size" "1.2857143em"
                , Css.property "line-height" "1.5555556"
                , Css.property "margin-top" "0.8888889em"
                , Css.property "margin-bottom" "0.8888889em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "p"
                [ Css.property "margin-top" "1.1428571em"
                , Css.property "margin-bottom" "1.1428571em"
                ]
            ]
        ]


{-| The tailwind class `prose-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

prose_xl : Css.Style
prose_xl =
    Css.batch
        [ Css.property "font-size" "1.25rem"
        , Css.property "line-height" "1.8"
        , Css.Global.children
            [ Css.Global.selector ":last-child"
                [ Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector ":first-child"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "tbody td"
                [ Css.property "padding-top" "0.8888889em"
                , Css.property "padding-right" "0.6666667em"
                , Css.property "padding-bottom" "0.8888889em"
                , Css.property "padding-left" "0.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:last-child"
                [ Css.property "padding-right" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th:first-child"
                [ Css.property "padding-left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "thead th"
                [ Css.property "padding-right" "0.6666667em"
                , Css.property "padding-bottom" "0.8888889em"
                , Css.property "padding-left" "0.6666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "table"
                [ Css.property "font-size" "0.9em"
                , Css.property "line-height" "1.5555556"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr + *"
                [ Css.property "margin-top" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "hr"
                [ Css.property "margin-top" "2.8em"
                , Css.property "margin-bottom" "2.8em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ol"
                [ Css.property "margin-top" "0.8em"
                , Css.property "margin-bottom" "0.8em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol ul"
                [ Css.property "margin-top" "0.8em"
                , Css.property "margin-bottom" "0.8em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ol"
                [ Css.property "margin-top" "0.8em"
                , Css.property "margin-bottom" "0.8em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul ul"
                [ Css.property "margin-top" "0.8em"
                , Css.property "margin-bottom" "0.8em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:last-child"
                [ Css.property "margin-bottom" "1.2em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ol > li > *:first-child"
                [ Css.property "margin-top" "1.2em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:last-child"
                [ Css.property "margin-bottom" "1.2em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li > *:first-child"
                [ Css.property "margin-top" "1.2em"
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector "ul > li p"
                [ Css.property "margin-top" "0.8em"
                , Css.property "margin-bottom" "0.8em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li::before"
                [ Css.property "width" "0.35em"
                , Css.property "height" "0.35em"
                , Css.property "top" "calc(0.9em - 0.175em)"
                , Css.property "left" "0.25em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul > li"
                [ Css.property "padding-left" "1.8em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li::before"
                [ Css.property "left" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol > li"
                [ Css.property "padding-left" "1.8em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "li"
                [ Css.property "margin-top" "0.6em"
                , Css.property "margin-bottom" "0.6em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ul"
                [ Css.property "margin-top" "1.2em"
                , Css.property "margin-bottom" "1.2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "ol"
                [ Css.property "margin-top" "1.2em"
                , Css.property "margin-bottom" "1.2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "pre"
                [ Css.property "font-size" "0.9em"
                , Css.property "line-height" "1.7777778"
                , Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                , Css.property "border-radius" "0.5rem"
                , Css.property "padding-top" "1.1111111em"
                , Css.property "padding-right" "1.3333333em"
                , Css.property "padding-bottom" "1.1111111em"
                , Css.property "padding-left" "1.3333333em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3 code"
                [ Css.property "font-size" "0.9em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2 code"
                [ Css.property "font-size" "0.8611111em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "code"
                [ Css.property "font-size" "0.9em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure figcaption"
                [ Css.property "font-size" "0.9em"
                , Css.property "line-height" "1.5555556"
                , Css.property "margin-top" "1em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure > *"
                [ Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "figure"
                [ Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "video"
                [ Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "img"
                [ Css.property "margin-top" "2em"
                , Css.property "margin-bottom" "2em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h4"
                [ Css.property "margin-top" "1.8em"
                , Css.property "margin-bottom" "0.6em"
                , Css.property "line-height" "1.6"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h3"
                [ Css.property "font-size" "1.5em"
                , Css.property "margin-top" "1.6em"
                , Css.property "margin-bottom" "0.6666667em"
                , Css.property "line-height" "1.3333333"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h2"
                [ Css.property "font-size" "1.8em"
                , Css.property "margin-top" "1.5555556em"
                , Css.property "margin-bottom" "0.8888889em"
                , Css.property "line-height" "1.1111111"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "h1"
                [ Css.property "font-size" "2.8em"
                , Css.property "margin-top" "0"
                , Css.property "margin-bottom" "0.8571429em"
                , Css.property "line-height" "1"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "blockquote"
                [ Css.property "margin-top" "1.6em"
                , Css.property "margin-bottom" "1.6em"
                , Css.property "padding-left" "1.0666667em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector ".lead"
                [ Css.property "font-size" "1.2em"
                , Css.property "line-height" "1.5"
                , Css.property "margin-top" "1em"
                , Css.property "margin-bottom" "1em"
                ]
            ]
        , Css.Global.descendants
            [ Css.Global.selector "p"
                [ Css.property "margin-top" "1.2em"
                , Css.property "margin-bottom" "1.2em"
                ]
            ]
        ]


{-| The tailwind class `pt-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_0 : Css.Style
pt_0 =
    Css.property "padding-top" "0px"


{-| The tailwind class `pt-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_0_dot_5 : Css.Style
pt_0_dot_5 =
    Css.property "padding-top" "0.125rem"


{-| The tailwind class `pt-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_1 : Css.Style
pt_1 =
    Css.property "padding-top" "0.25rem"


{-| The tailwind class `pt-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_10 : Css.Style
pt_10 =
    Css.property "padding-top" "2.5rem"


{-| The tailwind class `pt-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_11 : Css.Style
pt_11 =
    Css.property "padding-top" "2.75rem"


{-| The tailwind class `pt-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_12 : Css.Style
pt_12 =
    Css.property "padding-top" "3rem"


{-| The tailwind class `pt-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_14 : Css.Style
pt_14 =
    Css.property "padding-top" "3.5rem"


{-| The tailwind class `pt-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_16 : Css.Style
pt_16 =
    Css.property "padding-top" "4rem"


{-| The tailwind class `pt-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_1_dot_5 : Css.Style
pt_1_dot_5 =
    Css.property "padding-top" "0.375rem"


{-| The tailwind class `pt-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_2 : Css.Style
pt_2 =
    Css.property "padding-top" "0.5rem"


{-| The tailwind class `pt-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_20 : Css.Style
pt_20 =
    Css.property "padding-top" "5rem"


{-| The tailwind class `pt-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_24 : Css.Style
pt_24 =
    Css.property "padding-top" "6rem"


{-| The tailwind class `pt-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_28 : Css.Style
pt_28 =
    Css.property "padding-top" "7rem"


{-| The tailwind class `pt-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_2_dot_5 : Css.Style
pt_2_dot_5 =
    Css.property "padding-top" "0.625rem"


{-| The tailwind class `pt-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_3 : Css.Style
pt_3 =
    Css.property "padding-top" "0.75rem"


{-| The tailwind class `pt-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_32 : Css.Style
pt_32 =
    Css.property "padding-top" "8rem"


{-| The tailwind class `pt-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_36 : Css.Style
pt_36 =
    Css.property "padding-top" "9rem"


{-| The tailwind class `pt-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_3_dot_5 : Css.Style
pt_3_dot_5 =
    Css.property "padding-top" "0.875rem"


{-| The tailwind class `pt-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_4 : Css.Style
pt_4 =
    Css.property "padding-top" "1rem"


{-| The tailwind class `pt-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_40 : Css.Style
pt_40 =
    Css.property "padding-top" "10rem"


{-| The tailwind class `pt-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_44 : Css.Style
pt_44 =
    Css.property "padding-top" "11rem"


{-| The tailwind class `pt-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_48 : Css.Style
pt_48 =
    Css.property "padding-top" "12rem"


{-| The tailwind class `pt-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_5 : Css.Style
pt_5 =
    Css.property "padding-top" "1.25rem"


{-| The tailwind class `pt-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_52 : Css.Style
pt_52 =
    Css.property "padding-top" "13rem"


{-| The tailwind class `pt-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_56 : Css.Style
pt_56 =
    Css.property "padding-top" "14rem"


{-| The tailwind class `pt-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_6 : Css.Style
pt_6 =
    Css.property "padding-top" "1.5rem"


{-| The tailwind class `pt-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_60 : Css.Style
pt_60 =
    Css.property "padding-top" "15rem"


{-| The tailwind class `pt-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_64 : Css.Style
pt_64 =
    Css.property "padding-top" "16rem"


{-| The tailwind class `pt-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_7 : Css.Style
pt_7 =
    Css.property "padding-top" "1.75rem"


{-| The tailwind class `pt-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_72 : Css.Style
pt_72 =
    Css.property "padding-top" "18rem"


{-| The tailwind class `pt-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_8 : Css.Style
pt_8 =
    Css.property "padding-top" "2rem"


{-| The tailwind class `pt-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_80 : Css.Style
pt_80 =
    Css.property "padding-top" "20rem"


{-| The tailwind class `pt-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_9 : Css.Style
pt_9 =
    Css.property "padding-top" "2.25rem"


{-| The tailwind class `pt-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_96 : Css.Style
pt_96 =
    Css.property "padding-top" "24rem"


{-| The tailwind class `pt-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

pt_px : Css.Style
pt_px =
    Css.property "padding-top" "1px"


{-| The tailwind class `px-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_0 : Css.Style
px_0 =
    Css.batch
        [ Css.property "padding-left" "0px"
        , Css.property "padding-right" "0px"
        ]


{-| The tailwind class `px-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_0_dot_5 : Css.Style
px_0_dot_5 =
    Css.batch
        [ Css.property "padding-left" "0.125rem"
        , Css.property "padding-right" "0.125rem"
        ]


{-| The tailwind class `px-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_1 : Css.Style
px_1 =
    Css.batch
        [ Css.property "padding-left" "0.25rem"
        , Css.property "padding-right" "0.25rem"
        ]


{-| The tailwind class `px-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_10 : Css.Style
px_10 =
    Css.batch
        [ Css.property "padding-left" "2.5rem"
        , Css.property "padding-right" "2.5rem"
        ]


{-| The tailwind class `px-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_11 : Css.Style
px_11 =
    Css.batch
        [ Css.property "padding-left" "2.75rem"
        , Css.property "padding-right" "2.75rem"
        ]


{-| The tailwind class `px-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_12 : Css.Style
px_12 =
    Css.batch
        [ Css.property "padding-left" "3rem"
        , Css.property "padding-right" "3rem"
        ]


{-| The tailwind class `px-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_14 : Css.Style
px_14 =
    Css.batch
        [ Css.property "padding-left" "3.5rem"
        , Css.property "padding-right" "3.5rem"
        ]


{-| The tailwind class `px-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_16 : Css.Style
px_16 =
    Css.batch
        [ Css.property "padding-left" "4rem"
        , Css.property "padding-right" "4rem"
        ]


{-| The tailwind class `px-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_1_dot_5 : Css.Style
px_1_dot_5 =
    Css.batch
        [ Css.property "padding-left" "0.375rem"
        , Css.property "padding-right" "0.375rem"
        ]


{-| The tailwind class `px-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_2 : Css.Style
px_2 =
    Css.batch
        [ Css.property "padding-left" "0.5rem"
        , Css.property "padding-right" "0.5rem"
        ]


{-| The tailwind class `px-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_20 : Css.Style
px_20 =
    Css.batch
        [ Css.property "padding-left" "5rem"
        , Css.property "padding-right" "5rem"
        ]


{-| The tailwind class `px-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_24 : Css.Style
px_24 =
    Css.batch
        [ Css.property "padding-left" "6rem"
        , Css.property "padding-right" "6rem"
        ]


{-| The tailwind class `px-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_28 : Css.Style
px_28 =
    Css.batch
        [ Css.property "padding-left" "7rem"
        , Css.property "padding-right" "7rem"
        ]


{-| The tailwind class `px-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_2_dot_5 : Css.Style
px_2_dot_5 =
    Css.batch
        [ Css.property "padding-left" "0.625rem"
        , Css.property "padding-right" "0.625rem"
        ]


{-| The tailwind class `px-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_3 : Css.Style
px_3 =
    Css.batch
        [ Css.property "padding-left" "0.75rem"
        , Css.property "padding-right" "0.75rem"
        ]


{-| The tailwind class `px-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_32 : Css.Style
px_32 =
    Css.batch
        [ Css.property "padding-left" "8rem"
        , Css.property "padding-right" "8rem"
        ]


{-| The tailwind class `px-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_36 : Css.Style
px_36 =
    Css.batch
        [ Css.property "padding-left" "9rem"
        , Css.property "padding-right" "9rem"
        ]


{-| The tailwind class `px-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_3_dot_5 : Css.Style
px_3_dot_5 =
    Css.batch
        [ Css.property "padding-left" "0.875rem"
        , Css.property "padding-right" "0.875rem"
        ]


{-| The tailwind class `px-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_4 : Css.Style
px_4 =
    Css.batch
        [ Css.property "padding-left" "1rem"
        , Css.property "padding-right" "1rem"
        ]


{-| The tailwind class `px-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_40 : Css.Style
px_40 =
    Css.batch
        [ Css.property "padding-left" "10rem"
        , Css.property "padding-right" "10rem"
        ]


{-| The tailwind class `px-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_44 : Css.Style
px_44 =
    Css.batch
        [ Css.property "padding-left" "11rem"
        , Css.property "padding-right" "11rem"
        ]


{-| The tailwind class `px-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_48 : Css.Style
px_48 =
    Css.batch
        [ Css.property "padding-left" "12rem"
        , Css.property "padding-right" "12rem"
        ]


{-| The tailwind class `px-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_5 : Css.Style
px_5 =
    Css.batch
        [ Css.property "padding-left" "1.25rem"
        , Css.property "padding-right" "1.25rem"
        ]


{-| The tailwind class `px-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_52 : Css.Style
px_52 =
    Css.batch
        [ Css.property "padding-left" "13rem"
        , Css.property "padding-right" "13rem"
        ]


{-| The tailwind class `px-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_56 : Css.Style
px_56 =
    Css.batch
        [ Css.property "padding-left" "14rem"
        , Css.property "padding-right" "14rem"
        ]


{-| The tailwind class `px-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_6 : Css.Style
px_6 =
    Css.batch
        [ Css.property "padding-left" "1.5rem"
        , Css.property "padding-right" "1.5rem"
        ]


{-| The tailwind class `px-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_60 : Css.Style
px_60 =
    Css.batch
        [ Css.property "padding-left" "15rem"
        , Css.property "padding-right" "15rem"
        ]


{-| The tailwind class `px-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_64 : Css.Style
px_64 =
    Css.batch
        [ Css.property "padding-left" "16rem"
        , Css.property "padding-right" "16rem"
        ]


{-| The tailwind class `px-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_7 : Css.Style
px_7 =
    Css.batch
        [ Css.property "padding-left" "1.75rem"
        , Css.property "padding-right" "1.75rem"
        ]


{-| The tailwind class `px-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_72 : Css.Style
px_72 =
    Css.batch
        [ Css.property "padding-left" "18rem"
        , Css.property "padding-right" "18rem"
        ]


{-| The tailwind class `px-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_8 : Css.Style
px_8 =
    Css.batch
        [ Css.property "padding-left" "2rem"
        , Css.property "padding-right" "2rem"
        ]


{-| The tailwind class `px-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_80 : Css.Style
px_80 =
    Css.batch
        [ Css.property "padding-left" "20rem"
        , Css.property "padding-right" "20rem"
        ]


{-| The tailwind class `px-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_9 : Css.Style
px_9 =
    Css.batch
        [ Css.property "padding-left" "2.25rem"
        , Css.property "padding-right" "2.25rem"
        ]


{-| The tailwind class `px-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_96 : Css.Style
px_96 =
    Css.batch
        [ Css.property "padding-left" "24rem"
        , Css.property "padding-right" "24rem"
        ]


{-| The tailwind class `px-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

px_px : Css.Style
px_px =
    Css.batch
        [ Css.property "padding-left" "1px"
        , Css.property "padding-right" "1px"
        ]


{-| The tailwind class `py-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_0 : Css.Style
py_0 =
    Css.batch
        [ Css.property "padding-top" "0px"
        , Css.property "padding-bottom" "0px"
        ]


{-| The tailwind class `py-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_0_dot_5 : Css.Style
py_0_dot_5 =
    Css.batch
        [ Css.property "padding-top" "0.125rem"
        , Css.property "padding-bottom" "0.125rem"
        ]


{-| The tailwind class `py-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_1 : Css.Style
py_1 =
    Css.batch
        [ Css.property "padding-top" "0.25rem"
        , Css.property "padding-bottom" "0.25rem"
        ]


{-| The tailwind class `py-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_10 : Css.Style
py_10 =
    Css.batch
        [ Css.property "padding-top" "2.5rem"
        , Css.property "padding-bottom" "2.5rem"
        ]


{-| The tailwind class `py-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_11 : Css.Style
py_11 =
    Css.batch
        [ Css.property "padding-top" "2.75rem"
        , Css.property "padding-bottom" "2.75rem"
        ]


{-| The tailwind class `py-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_12 : Css.Style
py_12 =
    Css.batch
        [ Css.property "padding-top" "3rem"
        , Css.property "padding-bottom" "3rem"
        ]


{-| The tailwind class `py-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_14 : Css.Style
py_14 =
    Css.batch
        [ Css.property "padding-top" "3.5rem"
        , Css.property "padding-bottom" "3.5rem"
        ]


{-| The tailwind class `py-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_16 : Css.Style
py_16 =
    Css.batch
        [ Css.property "padding-top" "4rem"
        , Css.property "padding-bottom" "4rem"
        ]


{-| The tailwind class `py-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_1_dot_5 : Css.Style
py_1_dot_5 =
    Css.batch
        [ Css.property "padding-top" "0.375rem"
        , Css.property "padding-bottom" "0.375rem"
        ]


{-| The tailwind class `py-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_2 : Css.Style
py_2 =
    Css.batch
        [ Css.property "padding-top" "0.5rem"
        , Css.property "padding-bottom" "0.5rem"
        ]


{-| The tailwind class `py-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_20 : Css.Style
py_20 =
    Css.batch
        [ Css.property "padding-top" "5rem"
        , Css.property "padding-bottom" "5rem"
        ]


{-| The tailwind class `py-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_24 : Css.Style
py_24 =
    Css.batch
        [ Css.property "padding-top" "6rem"
        , Css.property "padding-bottom" "6rem"
        ]


{-| The tailwind class `py-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_28 : Css.Style
py_28 =
    Css.batch
        [ Css.property "padding-top" "7rem"
        , Css.property "padding-bottom" "7rem"
        ]


{-| The tailwind class `py-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_2_dot_5 : Css.Style
py_2_dot_5 =
    Css.batch
        [ Css.property "padding-top" "0.625rem"
        , Css.property "padding-bottom" "0.625rem"
        ]


{-| The tailwind class `py-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_3 : Css.Style
py_3 =
    Css.batch
        [ Css.property "padding-top" "0.75rem"
        , Css.property "padding-bottom" "0.75rem"
        ]


{-| The tailwind class `py-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_32 : Css.Style
py_32 =
    Css.batch
        [ Css.property "padding-top" "8rem"
        , Css.property "padding-bottom" "8rem"
        ]


{-| The tailwind class `py-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_36 : Css.Style
py_36 =
    Css.batch
        [ Css.property "padding-top" "9rem"
        , Css.property "padding-bottom" "9rem"
        ]


{-| The tailwind class `py-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_3_dot_5 : Css.Style
py_3_dot_5 =
    Css.batch
        [ Css.property "padding-top" "0.875rem"
        , Css.property "padding-bottom" "0.875rem"
        ]


{-| The tailwind class `py-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_4 : Css.Style
py_4 =
    Css.batch
        [ Css.property "padding-top" "1rem"
        , Css.property "padding-bottom" "1rem"
        ]


{-| The tailwind class `py-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_40 : Css.Style
py_40 =
    Css.batch
        [ Css.property "padding-top" "10rem"
        , Css.property "padding-bottom" "10rem"
        ]


{-| The tailwind class `py-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_44 : Css.Style
py_44 =
    Css.batch
        [ Css.property "padding-top" "11rem"
        , Css.property "padding-bottom" "11rem"
        ]


{-| The tailwind class `py-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_48 : Css.Style
py_48 =
    Css.batch
        [ Css.property "padding-top" "12rem"
        , Css.property "padding-bottom" "12rem"
        ]


{-| The tailwind class `py-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_5 : Css.Style
py_5 =
    Css.batch
        [ Css.property "padding-top" "1.25rem"
        , Css.property "padding-bottom" "1.25rem"
        ]


{-| The tailwind class `py-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_52 : Css.Style
py_52 =
    Css.batch
        [ Css.property "padding-top" "13rem"
        , Css.property "padding-bottom" "13rem"
        ]


{-| The tailwind class `py-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_56 : Css.Style
py_56 =
    Css.batch
        [ Css.property "padding-top" "14rem"
        , Css.property "padding-bottom" "14rem"
        ]


{-| The tailwind class `py-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_6 : Css.Style
py_6 =
    Css.batch
        [ Css.property "padding-top" "1.5rem"
        , Css.property "padding-bottom" "1.5rem"
        ]


{-| The tailwind class `py-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_60 : Css.Style
py_60 =
    Css.batch
        [ Css.property "padding-top" "15rem"
        , Css.property "padding-bottom" "15rem"
        ]


{-| The tailwind class `py-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_64 : Css.Style
py_64 =
    Css.batch
        [ Css.property "padding-top" "16rem"
        , Css.property "padding-bottom" "16rem"
        ]


{-| The tailwind class `py-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_7 : Css.Style
py_7 =
    Css.batch
        [ Css.property "padding-top" "1.75rem"
        , Css.property "padding-bottom" "1.75rem"
        ]


{-| The tailwind class `py-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_72 : Css.Style
py_72 =
    Css.batch
        [ Css.property "padding-top" "18rem"
        , Css.property "padding-bottom" "18rem"
        ]


{-| The tailwind class `py-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_8 : Css.Style
py_8 =
    Css.batch
        [ Css.property "padding-top" "2rem"
        , Css.property "padding-bottom" "2rem"
        ]


{-| The tailwind class `py-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_80 : Css.Style
py_80 =
    Css.batch
        [ Css.property "padding-top" "20rem"
        , Css.property "padding-bottom" "20rem"
        ]


{-| The tailwind class `py-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_9 : Css.Style
py_9 =
    Css.batch
        [ Css.property "padding-top" "2.25rem"
        , Css.property "padding-bottom" "2.25rem"
        ]


{-| The tailwind class `py-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_96 : Css.Style
py_96 =
    Css.batch
        [ Css.property "padding-top" "24rem"
        , Css.property "padding-bottom" "24rem"
        ]


{-| The tailwind class `py-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

py_px : Css.Style
py_px =
    Css.batch
        [ Css.property "padding-top" "1px"
        , Css.property "padding-bottom" "1px"
        ]


{-| The tailwind class `relative`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

relative : Css.Style
relative =
    Css.property "position" "relative"


{-| The tailwind class `resize`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

resize : Css.Style
resize =
    Css.property "resize" "both"


{-| The tailwind class `resize-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

resize_none : Css.Style
resize_none =
    Css.property "resize" "none"


{-| The tailwind class `resize-x`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

resize_x : Css.Style
resize_x =
    Css.property "resize" "horizontal"


{-| The tailwind class `resize-y`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

resize_y : Css.Style
resize_y =
    Css.property "resize" "vertical"


{-| The tailwind class `right-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_0 : Css.Style
right_0 =
    Css.property "right" "0px"


{-| The tailwind class `right-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_0_dot_5 : Css.Style
right_0_dot_5 =
    Css.property "right" "0.125rem"


{-| The tailwind class `right-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_1 : Css.Style
right_1 =
    Css.property "right" "0.25rem"


{-| The tailwind class `right-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_10 : Css.Style
right_10 =
    Css.property "right" "2.5rem"


{-| The tailwind class `right-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_11 : Css.Style
right_11 =
    Css.property "right" "2.75rem"


{-| The tailwind class `right-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_12 : Css.Style
right_12 =
    Css.property "right" "3rem"


{-| The tailwind class `right-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_14 : Css.Style
right_14 =
    Css.property "right" "3.5rem"


{-| The tailwind class `right-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_16 : Css.Style
right_16 =
    Css.property "right" "4rem"


{-| The tailwind class `right-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_1_dot_5 : Css.Style
right_1_dot_5 =
    Css.property "right" "0.375rem"


{-| The tailwind class `right-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_1over2 : Css.Style
right_1over2 =
    Css.property "right" "50%"


{-| The tailwind class `right-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_1over3 : Css.Style
right_1over3 =
    Css.property "right" "33.333333%"


{-| The tailwind class `right-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_1over4 : Css.Style
right_1over4 =
    Css.property "right" "25%"


{-| The tailwind class `right-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_2 : Css.Style
right_2 =
    Css.property "right" "0.5rem"


{-| The tailwind class `right-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_20 : Css.Style
right_20 =
    Css.property "right" "5rem"


{-| The tailwind class `right-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_24 : Css.Style
right_24 =
    Css.property "right" "6rem"


{-| The tailwind class `right-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_28 : Css.Style
right_28 =
    Css.property "right" "7rem"


{-| The tailwind class `right-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_2_dot_5 : Css.Style
right_2_dot_5 =
    Css.property "right" "0.625rem"


{-| The tailwind class `right-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_2over3 : Css.Style
right_2over3 =
    Css.property "right" "66.666667%"


{-| The tailwind class `right-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_2over4 : Css.Style
right_2over4 =
    Css.property "right" "50%"


{-| The tailwind class `right-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_3 : Css.Style
right_3 =
    Css.property "right" "0.75rem"


{-| The tailwind class `right-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_32 : Css.Style
right_32 =
    Css.property "right" "8rem"


{-| The tailwind class `right-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_36 : Css.Style
right_36 =
    Css.property "right" "9rem"


{-| The tailwind class `right-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_3_dot_5 : Css.Style
right_3_dot_5 =
    Css.property "right" "0.875rem"


{-| The tailwind class `right-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_3over4 : Css.Style
right_3over4 =
    Css.property "right" "75%"


{-| The tailwind class `right-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_4 : Css.Style
right_4 =
    Css.property "right" "1rem"


{-| The tailwind class `right-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_40 : Css.Style
right_40 =
    Css.property "right" "10rem"


{-| The tailwind class `right-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_44 : Css.Style
right_44 =
    Css.property "right" "11rem"


{-| The tailwind class `right-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_48 : Css.Style
right_48 =
    Css.property "right" "12rem"


{-| The tailwind class `right-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_5 : Css.Style
right_5 =
    Css.property "right" "1.25rem"


{-| The tailwind class `right-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_52 : Css.Style
right_52 =
    Css.property "right" "13rem"


{-| The tailwind class `right-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_56 : Css.Style
right_56 =
    Css.property "right" "14rem"


{-| The tailwind class `right-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_6 : Css.Style
right_6 =
    Css.property "right" "1.5rem"


{-| The tailwind class `right-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_60 : Css.Style
right_60 =
    Css.property "right" "15rem"


{-| The tailwind class `right-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_64 : Css.Style
right_64 =
    Css.property "right" "16rem"


{-| The tailwind class `right-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_7 : Css.Style
right_7 =
    Css.property "right" "1.75rem"


{-| The tailwind class `right-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_72 : Css.Style
right_72 =
    Css.property "right" "18rem"


{-| The tailwind class `right-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_8 : Css.Style
right_8 =
    Css.property "right" "2rem"


{-| The tailwind class `right-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_80 : Css.Style
right_80 =
    Css.property "right" "20rem"


{-| The tailwind class `right-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_9 : Css.Style
right_9 =
    Css.property "right" "2.25rem"


{-| The tailwind class `right-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_96 : Css.Style
right_96 =
    Css.property "right" "24rem"


{-| The tailwind class `right-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_auto : Css.Style
right_auto =
    Css.property "right" "auto"


{-| The tailwind class `right-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_full : Css.Style
right_full =
    Css.property "right" "100%"


{-| The tailwind class `right-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

right_px : Css.Style
right_px =
    Css.property "right" "1px"


{-| The tailwind class `ring`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring : Css.Style
ring =
    Css.batch
        [ Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(3px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000)"
        ]


{-| The tailwind class `ring-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_0 : Css.Style
ring_0 =
    Css.batch
        [ Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(0px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000)"
        ]


{-| The tailwind class `ring-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_1 : Css.Style
ring_1 =
    Css.batch
        [ Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000)"
        ]


{-| The tailwind class `ring-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_2 : Css.Style
ring_2 =
    Css.batch
        [ Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000)"
        ]


{-| The tailwind class `ring-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_4 : Css.Style
ring_4 =
    Css.batch
        [ Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(4px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000)"
        ]


{-| The tailwind class `ring-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_8 : Css.Style
ring_8 =
    Css.batch
        [ Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(8px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000)"
        ]


{-| The tailwind class `ring-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_destruct : Css.Style
ring_destruct =
    Css.batch
        [ Css.property "--tw-ring-opacity" "1"
        , Css.property "--tw-ring-color" "rgba(142, 74, 73, var(--tw-ring-opacity))"
        ]


{-| The tailwind class `ring-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_exclaim : Css.Style
ring_exclaim =
    Css.batch
        [ Css.property "--tw-ring-opacity" "1"
        , Css.property "--tw-ring-color" "rgba(224, 144, 93, var(--tw-ring-opacity))"
        ]


{-| The tailwind class `ring-inset`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_inset : Css.Style
ring_inset =
    Css.property "--tw-ring-inset" "inset"


{-| The tailwind class `ring-offset-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_0 : Css.Style
ring_offset_0 =
    Css.property "--tw-ring-offset-width" "0px"


{-| The tailwind class `ring-offset-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_1 : Css.Style
ring_offset_1 =
    Css.property "--tw-ring-offset-width" "1px"


{-| The tailwind class `ring-offset-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_2 : Css.Style
ring_offset_2 =
    Css.property "--tw-ring-offset-width" "2px"


{-| The tailwind class `ring-offset-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_4 : Css.Style
ring_offset_4 =
    Css.property "--tw-ring-offset-width" "4px"


{-| The tailwind class `ring-offset-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_8 : Css.Style
ring_offset_8 =
    Css.property "--tw-ring-offset-width" "8px"


{-| The tailwind class `ring-offset-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_destruct : Css.Style
ring_offset_destruct =
    Css.property "--tw-ring-offset-color" "#8E4A49"


{-| The tailwind class `ring-offset-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_exclaim : Css.Style
ring_offset_exclaim =
    Css.property "--tw-ring-offset-color" "#E0905D"


{-| The tailwind class `ring-offset-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_primary : Css.Style
ring_offset_primary =
    Css.property "--tw-ring-offset-color" "#965958"


{-| The tailwind class `ring-offset-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_secondary : Css.Style
ring_offset_secondary =
    Css.property "--tw-ring-offset-color" "#dfeee3ff"


{-| The tailwind class `ring-offset-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_success : Css.Style
ring_offset_success =
    Css.property "--tw-ring-offset-color" "#4ED0B6"


{-| The tailwind class `ring-offset-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_offset_tertiary : Css.Style
ring_offset_tertiary =
    Css.property "--tw-ring-offset-color" "#A19FBB"


{-| The tailwind class `ring-opacity-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_0 : Css.Style
ring_opacity_0 =
    Css.property "--tw-ring-opacity" "0"


{-| The tailwind class `ring-opacity-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_10 : Css.Style
ring_opacity_10 =
    Css.property "--tw-ring-opacity" "0.1"


{-| The tailwind class `ring-opacity-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_100 : Css.Style
ring_opacity_100 =
    Css.property "--tw-ring-opacity" "1"


{-| The tailwind class `ring-opacity-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_20 : Css.Style
ring_opacity_20 =
    Css.property "--tw-ring-opacity" "0.2"


{-| The tailwind class `ring-opacity-25`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_25 : Css.Style
ring_opacity_25 =
    Css.property "--tw-ring-opacity" "0.25"


{-| The tailwind class `ring-opacity-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_30 : Css.Style
ring_opacity_30 =
    Css.property "--tw-ring-opacity" "0.3"


{-| The tailwind class `ring-opacity-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_40 : Css.Style
ring_opacity_40 =
    Css.property "--tw-ring-opacity" "0.4"


{-| The tailwind class `ring-opacity-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_5 : Css.Style
ring_opacity_5 =
    Css.property "--tw-ring-opacity" "0.05"


{-| The tailwind class `ring-opacity-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_50 : Css.Style
ring_opacity_50 =
    Css.property "--tw-ring-opacity" "0.5"


{-| The tailwind class `ring-opacity-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_60 : Css.Style
ring_opacity_60 =
    Css.property "--tw-ring-opacity" "0.6"


{-| The tailwind class `ring-opacity-70`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_70 : Css.Style
ring_opacity_70 =
    Css.property "--tw-ring-opacity" "0.7"


{-| The tailwind class `ring-opacity-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_75 : Css.Style
ring_opacity_75 =
    Css.property "--tw-ring-opacity" "0.75"


{-| The tailwind class `ring-opacity-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_80 : Css.Style
ring_opacity_80 =
    Css.property "--tw-ring-opacity" "0.8"


{-| The tailwind class `ring-opacity-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_90 : Css.Style
ring_opacity_90 =
    Css.property "--tw-ring-opacity" "0.9"


{-| The tailwind class `ring-opacity-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_opacity_95 : Css.Style
ring_opacity_95 =
    Css.property "--tw-ring-opacity" "0.95"


{-| The tailwind class `ring-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_primary : Css.Style
ring_primary =
    Css.batch
        [ Css.property "--tw-ring-opacity" "1"
        , Css.property "--tw-ring-color" "rgba(150, 89, 88, var(--tw-ring-opacity))"
        ]


{-| The tailwind class `ring-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_secondary : Css.Style
ring_secondary =
    Css.property "--tw-ring-color" "#dfeee3ff"


{-| The tailwind class `ring-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_success : Css.Style
ring_success =
    Css.batch
        [ Css.property "--tw-ring-opacity" "1"
        , Css.property "--tw-ring-color" "rgba(78, 208, 182, var(--tw-ring-opacity))"
        ]


{-| The tailwind class `ring-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

ring_tertiary : Css.Style
ring_tertiary =
    Css.batch
        [ Css.property "--tw-ring-opacity" "1"
        , Css.property "--tw-ring-color" "rgba(161, 159, 187, var(--tw-ring-opacity))"
        ]


{-| The tailwind class `rotate-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rotate_0 : Css.Style
rotate_0 =
    Css.property "--tw-rotate" "0deg"


{-| The tailwind class `rotate-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rotate_1 : Css.Style
rotate_1 =
    Css.property "--tw-rotate" "1deg"


{-| The tailwind class `rotate-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rotate_12 : Css.Style
rotate_12 =
    Css.property "--tw-rotate" "12deg"


{-| The tailwind class `rotate-180`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rotate_180 : Css.Style
rotate_180 =
    Css.property "--tw-rotate" "180deg"


{-| The tailwind class `rotate-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rotate_2 : Css.Style
rotate_2 =
    Css.property "--tw-rotate" "2deg"


{-| The tailwind class `rotate-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rotate_3 : Css.Style
rotate_3 =
    Css.property "--tw-rotate" "3deg"


{-| The tailwind class `rotate-45`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rotate_45 : Css.Style
rotate_45 =
    Css.property "--tw-rotate" "45deg"


{-| The tailwind class `rotate-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rotate_6 : Css.Style
rotate_6 =
    Css.property "--tw-rotate" "6deg"


{-| The tailwind class `rotate-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rotate_90 : Css.Style
rotate_90 =
    Css.property "--tw-rotate" "90deg"


{-| The tailwind class `rounded`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded : Css.Style
rounded =
    Css.property "border-radius" "0.25rem"


{-| The tailwind class `rounded-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_2xl : Css.Style
rounded_2xl =
    Css.property "border-radius" "1rem"


{-| The tailwind class `rounded-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_3xl : Css.Style
rounded_3xl =
    Css.property "border-radius" "1.5rem"


{-| The tailwind class `rounded-b`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_b : Css.Style
rounded_b =
    Css.batch
        [ Css.property "border-bottom-right-radius" "0.25rem"
        , Css.property "border-bottom-left-radius" "0.25rem"
        ]


{-| The tailwind class `rounded-b-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_b_2xl : Css.Style
rounded_b_2xl =
    Css.batch
        [ Css.property "border-bottom-right-radius" "1rem"
        , Css.property "border-bottom-left-radius" "1rem"
        ]


{-| The tailwind class `rounded-b-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_b_3xl : Css.Style
rounded_b_3xl =
    Css.batch
        [ Css.property "border-bottom-right-radius" "1.5rem"
        , Css.property "border-bottom-left-radius" "1.5rem"
        ]


{-| The tailwind class `rounded-b-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_b_full : Css.Style
rounded_b_full =
    Css.batch
        [ Css.property "border-bottom-right-radius" "9999px"
        , Css.property "border-bottom-left-radius" "9999px"
        ]


{-| The tailwind class `rounded-b-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_b_lg : Css.Style
rounded_b_lg =
    Css.batch
        [ Css.property "border-bottom-right-radius" "0.5rem"
        , Css.property "border-bottom-left-radius" "0.5rem"
        ]


{-| The tailwind class `rounded-b-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_b_md : Css.Style
rounded_b_md =
    Css.batch
        [ Css.property "border-bottom-right-radius" "0.375rem"
        , Css.property "border-bottom-left-radius" "0.375rem"
        ]


{-| The tailwind class `rounded-b-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_b_none : Css.Style
rounded_b_none =
    Css.batch
        [ Css.property "border-bottom-right-radius" "0px"
        , Css.property "border-bottom-left-radius" "0px"
        ]


{-| The tailwind class `rounded-b-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_b_sm : Css.Style
rounded_b_sm =
    Css.batch
        [ Css.property "border-bottom-right-radius" "0.125rem"
        , Css.property "border-bottom-left-radius" "0.125rem"
        ]


{-| The tailwind class `rounded-b-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_b_xl : Css.Style
rounded_b_xl =
    Css.batch
        [ Css.property "border-bottom-right-radius" "0.75rem"
        , Css.property "border-bottom-left-radius" "0.75rem"
        ]


{-| The tailwind class `rounded-bl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_bl : Css.Style
rounded_bl =
    Css.property "border-bottom-left-radius" "0.25rem"


{-| The tailwind class `rounded-bl-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_bl_2xl : Css.Style
rounded_bl_2xl =
    Css.property "border-bottom-left-radius" "1rem"


{-| The tailwind class `rounded-bl-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_bl_3xl : Css.Style
rounded_bl_3xl =
    Css.property "border-bottom-left-radius" "1.5rem"


{-| The tailwind class `rounded-bl-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_bl_full : Css.Style
rounded_bl_full =
    Css.property "border-bottom-left-radius" "9999px"


{-| The tailwind class `rounded-bl-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_bl_lg : Css.Style
rounded_bl_lg =
    Css.property "border-bottom-left-radius" "0.5rem"


{-| The tailwind class `rounded-bl-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_bl_md : Css.Style
rounded_bl_md =
    Css.property "border-bottom-left-radius" "0.375rem"


{-| The tailwind class `rounded-bl-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_bl_none : Css.Style
rounded_bl_none =
    Css.property "border-bottom-left-radius" "0px"


{-| The tailwind class `rounded-bl-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_bl_sm : Css.Style
rounded_bl_sm =
    Css.property "border-bottom-left-radius" "0.125rem"


{-| The tailwind class `rounded-bl-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_bl_xl : Css.Style
rounded_bl_xl =
    Css.property "border-bottom-left-radius" "0.75rem"


{-| The tailwind class `rounded-br`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_br : Css.Style
rounded_br =
    Css.property "border-bottom-right-radius" "0.25rem"


{-| The tailwind class `rounded-br-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_br_2xl : Css.Style
rounded_br_2xl =
    Css.property "border-bottom-right-radius" "1rem"


{-| The tailwind class `rounded-br-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_br_3xl : Css.Style
rounded_br_3xl =
    Css.property "border-bottom-right-radius" "1.5rem"


{-| The tailwind class `rounded-br-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_br_full : Css.Style
rounded_br_full =
    Css.property "border-bottom-right-radius" "9999px"


{-| The tailwind class `rounded-br-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_br_lg : Css.Style
rounded_br_lg =
    Css.property "border-bottom-right-radius" "0.5rem"


{-| The tailwind class `rounded-br-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_br_md : Css.Style
rounded_br_md =
    Css.property "border-bottom-right-radius" "0.375rem"


{-| The tailwind class `rounded-br-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_br_none : Css.Style
rounded_br_none =
    Css.property "border-bottom-right-radius" "0px"


{-| The tailwind class `rounded-br-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_br_sm : Css.Style
rounded_br_sm =
    Css.property "border-bottom-right-radius" "0.125rem"


{-| The tailwind class `rounded-br-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_br_xl : Css.Style
rounded_br_xl =
    Css.property "border-bottom-right-radius" "0.75rem"


{-| The tailwind class `rounded-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_full : Css.Style
rounded_full =
    Css.property "border-radius" "9999px"


{-| The tailwind class `rounded-l`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_l : Css.Style
rounded_l =
    Css.batch
        [ Css.property "border-top-left-radius" "0.25rem"
        , Css.property "border-bottom-left-radius" "0.25rem"
        ]


{-| The tailwind class `rounded-l-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_l_2xl : Css.Style
rounded_l_2xl =
    Css.batch
        [ Css.property "border-top-left-radius" "1rem"
        , Css.property "border-bottom-left-radius" "1rem"
        ]


{-| The tailwind class `rounded-l-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_l_3xl : Css.Style
rounded_l_3xl =
    Css.batch
        [ Css.property "border-top-left-radius" "1.5rem"
        , Css.property "border-bottom-left-radius" "1.5rem"
        ]


{-| The tailwind class `rounded-l-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_l_full : Css.Style
rounded_l_full =
    Css.batch
        [ Css.property "border-top-left-radius" "9999px"
        , Css.property "border-bottom-left-radius" "9999px"
        ]


{-| The tailwind class `rounded-l-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_l_lg : Css.Style
rounded_l_lg =
    Css.batch
        [ Css.property "border-top-left-radius" "0.5rem"
        , Css.property "border-bottom-left-radius" "0.5rem"
        ]


{-| The tailwind class `rounded-l-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_l_md : Css.Style
rounded_l_md =
    Css.batch
        [ Css.property "border-top-left-radius" "0.375rem"
        , Css.property "border-bottom-left-radius" "0.375rem"
        ]


{-| The tailwind class `rounded-l-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_l_none : Css.Style
rounded_l_none =
    Css.batch
        [ Css.property "border-top-left-radius" "0px"
        , Css.property "border-bottom-left-radius" "0px"
        ]


{-| The tailwind class `rounded-l-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_l_sm : Css.Style
rounded_l_sm =
    Css.batch
        [ Css.property "border-top-left-radius" "0.125rem"
        , Css.property "border-bottom-left-radius" "0.125rem"
        ]


{-| The tailwind class `rounded-l-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_l_xl : Css.Style
rounded_l_xl =
    Css.batch
        [ Css.property "border-top-left-radius" "0.75rem"
        , Css.property "border-bottom-left-radius" "0.75rem"
        ]


{-| The tailwind class `rounded-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_lg : Css.Style
rounded_lg =
    Css.property "border-radius" "0.5rem"


{-| The tailwind class `rounded-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_md : Css.Style
rounded_md =
    Css.property "border-radius" "0.375rem"


{-| The tailwind class `rounded-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_none : Css.Style
rounded_none =
    Css.property "border-radius" "0px"


{-| The tailwind class `rounded-r`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_r : Css.Style
rounded_r =
    Css.batch
        [ Css.property "border-top-right-radius" "0.25rem"
        , Css.property "border-bottom-right-radius" "0.25rem"
        ]


{-| The tailwind class `rounded-r-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_r_2xl : Css.Style
rounded_r_2xl =
    Css.batch
        [ Css.property "border-top-right-radius" "1rem"
        , Css.property "border-bottom-right-radius" "1rem"
        ]


{-| The tailwind class `rounded-r-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_r_3xl : Css.Style
rounded_r_3xl =
    Css.batch
        [ Css.property "border-top-right-radius" "1.5rem"
        , Css.property "border-bottom-right-radius" "1.5rem"
        ]


{-| The tailwind class `rounded-r-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_r_full : Css.Style
rounded_r_full =
    Css.batch
        [ Css.property "border-top-right-radius" "9999px"
        , Css.property "border-bottom-right-radius" "9999px"
        ]


{-| The tailwind class `rounded-r-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_r_lg : Css.Style
rounded_r_lg =
    Css.batch
        [ Css.property "border-top-right-radius" "0.5rem"
        , Css.property "border-bottom-right-radius" "0.5rem"
        ]


{-| The tailwind class `rounded-r-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_r_md : Css.Style
rounded_r_md =
    Css.batch
        [ Css.property "border-top-right-radius" "0.375rem"
        , Css.property "border-bottom-right-radius" "0.375rem"
        ]


{-| The tailwind class `rounded-r-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_r_none : Css.Style
rounded_r_none =
    Css.batch
        [ Css.property "border-top-right-radius" "0px"
        , Css.property "border-bottom-right-radius" "0px"
        ]


{-| The tailwind class `rounded-r-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_r_sm : Css.Style
rounded_r_sm =
    Css.batch
        [ Css.property "border-top-right-radius" "0.125rem"
        , Css.property "border-bottom-right-radius" "0.125rem"
        ]


{-| The tailwind class `rounded-r-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_r_xl : Css.Style
rounded_r_xl =
    Css.batch
        [ Css.property "border-top-right-radius" "0.75rem"
        , Css.property "border-bottom-right-radius" "0.75rem"
        ]


{-| The tailwind class `rounded-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_sm : Css.Style
rounded_sm =
    Css.property "border-radius" "0.125rem"


{-| The tailwind class `rounded-t`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_t : Css.Style
rounded_t =
    Css.batch
        [ Css.property "border-top-left-radius" "0.25rem"
        , Css.property "border-top-right-radius" "0.25rem"
        ]


{-| The tailwind class `rounded-t-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_t_2xl : Css.Style
rounded_t_2xl =
    Css.batch
        [ Css.property "border-top-left-radius" "1rem"
        , Css.property "border-top-right-radius" "1rem"
        ]


{-| The tailwind class `rounded-t-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_t_3xl : Css.Style
rounded_t_3xl =
    Css.batch
        [ Css.property "border-top-left-radius" "1.5rem"
        , Css.property "border-top-right-radius" "1.5rem"
        ]


{-| The tailwind class `rounded-t-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_t_full : Css.Style
rounded_t_full =
    Css.batch
        [ Css.property "border-top-left-radius" "9999px"
        , Css.property "border-top-right-radius" "9999px"
        ]


{-| The tailwind class `rounded-t-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_t_lg : Css.Style
rounded_t_lg =
    Css.batch
        [ Css.property "border-top-left-radius" "0.5rem"
        , Css.property "border-top-right-radius" "0.5rem"
        ]


{-| The tailwind class `rounded-t-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_t_md : Css.Style
rounded_t_md =
    Css.batch
        [ Css.property "border-top-left-radius" "0.375rem"
        , Css.property "border-top-right-radius" "0.375rem"
        ]


{-| The tailwind class `rounded-t-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_t_none : Css.Style
rounded_t_none =
    Css.batch
        [ Css.property "border-top-left-radius" "0px"
        , Css.property "border-top-right-radius" "0px"
        ]


{-| The tailwind class `rounded-t-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_t_sm : Css.Style
rounded_t_sm =
    Css.batch
        [ Css.property "border-top-left-radius" "0.125rem"
        , Css.property "border-top-right-radius" "0.125rem"
        ]


{-| The tailwind class `rounded-t-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_t_xl : Css.Style
rounded_t_xl =
    Css.batch
        [ Css.property "border-top-left-radius" "0.75rem"
        , Css.property "border-top-right-radius" "0.75rem"
        ]


{-| The tailwind class `rounded-tl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tl : Css.Style
rounded_tl =
    Css.property "border-top-left-radius" "0.25rem"


{-| The tailwind class `rounded-tl-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tl_2xl : Css.Style
rounded_tl_2xl =
    Css.property "border-top-left-radius" "1rem"


{-| The tailwind class `rounded-tl-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tl_3xl : Css.Style
rounded_tl_3xl =
    Css.property "border-top-left-radius" "1.5rem"


{-| The tailwind class `rounded-tl-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tl_full : Css.Style
rounded_tl_full =
    Css.property "border-top-left-radius" "9999px"


{-| The tailwind class `rounded-tl-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tl_lg : Css.Style
rounded_tl_lg =
    Css.property "border-top-left-radius" "0.5rem"


{-| The tailwind class `rounded-tl-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tl_md : Css.Style
rounded_tl_md =
    Css.property "border-top-left-radius" "0.375rem"


{-| The tailwind class `rounded-tl-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tl_none : Css.Style
rounded_tl_none =
    Css.property "border-top-left-radius" "0px"


{-| The tailwind class `rounded-tl-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tl_sm : Css.Style
rounded_tl_sm =
    Css.property "border-top-left-radius" "0.125rem"


{-| The tailwind class `rounded-tl-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tl_xl : Css.Style
rounded_tl_xl =
    Css.property "border-top-left-radius" "0.75rem"


{-| The tailwind class `rounded-tr`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tr : Css.Style
rounded_tr =
    Css.property "border-top-right-radius" "0.25rem"


{-| The tailwind class `rounded-tr-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tr_2xl : Css.Style
rounded_tr_2xl =
    Css.property "border-top-right-radius" "1rem"


{-| The tailwind class `rounded-tr-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tr_3xl : Css.Style
rounded_tr_3xl =
    Css.property "border-top-right-radius" "1.5rem"


{-| The tailwind class `rounded-tr-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tr_full : Css.Style
rounded_tr_full =
    Css.property "border-top-right-radius" "9999px"


{-| The tailwind class `rounded-tr-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tr_lg : Css.Style
rounded_tr_lg =
    Css.property "border-top-right-radius" "0.5rem"


{-| The tailwind class `rounded-tr-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tr_md : Css.Style
rounded_tr_md =
    Css.property "border-top-right-radius" "0.375rem"


{-| The tailwind class `rounded-tr-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tr_none : Css.Style
rounded_tr_none =
    Css.property "border-top-right-radius" "0px"


{-| The tailwind class `rounded-tr-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tr_sm : Css.Style
rounded_tr_sm =
    Css.property "border-top-right-radius" "0.125rem"


{-| The tailwind class `rounded-tr-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_tr_xl : Css.Style
rounded_tr_xl =
    Css.property "border-top-right-radius" "0.75rem"


{-| The tailwind class `rounded-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

rounded_xl : Css.Style
rounded_xl =
    Css.property "border-radius" "0.75rem"


{-| The tailwind class `row-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_auto : Css.Style
row_auto =
    Css.property "grid-row" "auto"


{-| The tailwind class `row-end-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_end_1 : Css.Style
row_end_1 =
    Css.property "grid-row-end" "1"


{-| The tailwind class `row-end-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_end_2 : Css.Style
row_end_2 =
    Css.property "grid-row-end" "2"


{-| The tailwind class `row-end-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_end_3 : Css.Style
row_end_3 =
    Css.property "grid-row-end" "3"


{-| The tailwind class `row-end-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_end_4 : Css.Style
row_end_4 =
    Css.property "grid-row-end" "4"


{-| The tailwind class `row-end-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_end_5 : Css.Style
row_end_5 =
    Css.property "grid-row-end" "5"


{-| The tailwind class `row-end-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_end_6 : Css.Style
row_end_6 =
    Css.property "grid-row-end" "6"


{-| The tailwind class `row-end-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_end_7 : Css.Style
row_end_7 =
    Css.property "grid-row-end" "7"


{-| The tailwind class `row-end-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_end_auto : Css.Style
row_end_auto =
    Css.property "grid-row-end" "auto"


{-| The tailwind class `row-span-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_span_1 : Css.Style
row_span_1 =
    Css.property "grid-row" "span 1 / span 1"


{-| The tailwind class `row-span-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_span_2 : Css.Style
row_span_2 =
    Css.property "grid-row" "span 2 / span 2"


{-| The tailwind class `row-span-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_span_3 : Css.Style
row_span_3 =
    Css.property "grid-row" "span 3 / span 3"


{-| The tailwind class `row-span-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_span_4 : Css.Style
row_span_4 =
    Css.property "grid-row" "span 4 / span 4"


{-| The tailwind class `row-span-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_span_5 : Css.Style
row_span_5 =
    Css.property "grid-row" "span 5 / span 5"


{-| The tailwind class `row-span-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_span_6 : Css.Style
row_span_6 =
    Css.property "grid-row" "span 6 / span 6"


{-| The tailwind class `row-span-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_span_full : Css.Style
row_span_full =
    Css.property "grid-row" "1 / -1"


{-| The tailwind class `row-start-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_start_1 : Css.Style
row_start_1 =
    Css.property "grid-row-start" "1"


{-| The tailwind class `row-start-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_start_2 : Css.Style
row_start_2 =
    Css.property "grid-row-start" "2"


{-| The tailwind class `row-start-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_start_3 : Css.Style
row_start_3 =
    Css.property "grid-row-start" "3"


{-| The tailwind class `row-start-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_start_4 : Css.Style
row_start_4 =
    Css.property "grid-row-start" "4"


{-| The tailwind class `row-start-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_start_5 : Css.Style
row_start_5 =
    Css.property "grid-row-start" "5"


{-| The tailwind class `row-start-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_start_6 : Css.Style
row_start_6 =
    Css.property "grid-row-start" "6"


{-| The tailwind class `row-start-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_start_7 : Css.Style
row_start_7 =
    Css.property "grid-row-start" "7"


{-| The tailwind class `row-start-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

row_start_auto : Css.Style
row_start_auto =
    Css.property "grid-row-start" "auto"


{-| The tailwind class `saturate-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

saturate_0 : Css.Style
saturate_0 =
    Css.property "--tw-saturate" "saturate(0)"


{-| The tailwind class `saturate-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

saturate_100 : Css.Style
saturate_100 =
    Css.property "--tw-saturate" "saturate(1)"


{-| The tailwind class `saturate-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

saturate_150 : Css.Style
saturate_150 =
    Css.property "--tw-saturate" "saturate(1.5)"


{-| The tailwind class `saturate-200`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

saturate_200 : Css.Style
saturate_200 =
    Css.property "--tw-saturate" "saturate(2)"


{-| The tailwind class `saturate-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

saturate_50 : Css.Style
saturate_50 =
    Css.property "--tw-saturate" "saturate(.5)"


{-| The tailwind class `scale-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_0 : Css.Style
scale_0 =
    Css.batch
        [ Css.property "--tw-scale-x" "0"
        , Css.property "--tw-scale-y" "0"
        ]


{-| The tailwind class `scale-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_100 : Css.Style
scale_100 =
    Css.batch
        [ Css.property "--tw-scale-x" "1"
        , Css.property "--tw-scale-y" "1"
        ]


{-| The tailwind class `scale-105`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_105 : Css.Style
scale_105 =
    Css.batch
        [ Css.property "--tw-scale-x" "1.05"
        , Css.property "--tw-scale-y" "1.05"
        ]


{-| The tailwind class `scale-110`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_110 : Css.Style
scale_110 =
    Css.batch
        [ Css.property "--tw-scale-x" "1.1"
        , Css.property "--tw-scale-y" "1.1"
        ]


{-| The tailwind class `scale-125`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_125 : Css.Style
scale_125 =
    Css.batch
        [ Css.property "--tw-scale-x" "1.25"
        , Css.property "--tw-scale-y" "1.25"
        ]


{-| The tailwind class `scale-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_150 : Css.Style
scale_150 =
    Css.batch
        [ Css.property "--tw-scale-x" "1.5"
        , Css.property "--tw-scale-y" "1.5"
        ]


{-| The tailwind class `scale-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_50 : Css.Style
scale_50 =
    Css.batch
        [ Css.property "--tw-scale-x" ".5"
        , Css.property "--tw-scale-y" ".5"
        ]


{-| The tailwind class `scale-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_75 : Css.Style
scale_75 =
    Css.batch
        [ Css.property "--tw-scale-x" ".75"
        , Css.property "--tw-scale-y" ".75"
        ]


{-| The tailwind class `scale-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_90 : Css.Style
scale_90 =
    Css.batch
        [ Css.property "--tw-scale-x" ".9"
        , Css.property "--tw-scale-y" ".9"
        ]


{-| The tailwind class `scale-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_95 : Css.Style
scale_95 =
    Css.batch
        [ Css.property "--tw-scale-x" ".95"
        , Css.property "--tw-scale-y" ".95"
        ]


{-| The tailwind class `scale-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_0 : Css.Style
scale_x_0 =
    Css.property "--tw-scale-x" "0"


{-| The tailwind class `scale-x-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_100 : Css.Style
scale_x_100 =
    Css.property "--tw-scale-x" "1"


{-| The tailwind class `scale-x-105`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_105 : Css.Style
scale_x_105 =
    Css.property "--tw-scale-x" "1.05"


{-| The tailwind class `scale-x-110`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_110 : Css.Style
scale_x_110 =
    Css.property "--tw-scale-x" "1.1"


{-| The tailwind class `scale-x-125`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_125 : Css.Style
scale_x_125 =
    Css.property "--tw-scale-x" "1.25"


{-| The tailwind class `scale-x-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_150 : Css.Style
scale_x_150 =
    Css.property "--tw-scale-x" "1.5"


{-| The tailwind class `scale-x-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_50 : Css.Style
scale_x_50 =
    Css.property "--tw-scale-x" ".5"


{-| The tailwind class `scale-x-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_75 : Css.Style
scale_x_75 =
    Css.property "--tw-scale-x" ".75"


{-| The tailwind class `scale-x-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_90 : Css.Style
scale_x_90 =
    Css.property "--tw-scale-x" ".9"


{-| The tailwind class `scale-x-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_x_95 : Css.Style
scale_x_95 =
    Css.property "--tw-scale-x" ".95"


{-| The tailwind class `scale-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_0 : Css.Style
scale_y_0 =
    Css.property "--tw-scale-y" "0"


{-| The tailwind class `scale-y-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_100 : Css.Style
scale_y_100 =
    Css.property "--tw-scale-y" "1"


{-| The tailwind class `scale-y-105`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_105 : Css.Style
scale_y_105 =
    Css.property "--tw-scale-y" "1.05"


{-| The tailwind class `scale-y-110`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_110 : Css.Style
scale_y_110 =
    Css.property "--tw-scale-y" "1.1"


{-| The tailwind class `scale-y-125`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_125 : Css.Style
scale_y_125 =
    Css.property "--tw-scale-y" "1.25"


{-| The tailwind class `scale-y-150`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_150 : Css.Style
scale_y_150 =
    Css.property "--tw-scale-y" "1.5"


{-| The tailwind class `scale-y-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_50 : Css.Style
scale_y_50 =
    Css.property "--tw-scale-y" ".5"


{-| The tailwind class `scale-y-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_75 : Css.Style
scale_y_75 =
    Css.property "--tw-scale-y" ".75"


{-| The tailwind class `scale-y-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_90 : Css.Style
scale_y_90 =
    Css.property "--tw-scale-y" ".9"


{-| The tailwind class `scale-y-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

scale_y_95 : Css.Style
scale_y_95 =
    Css.property "--tw-scale-y" ".95"


{-| The tailwind class `select-all`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

select_all : Css.Style
select_all =
    Css.batch
        [ Css.property "-webkit-user-select" "all"
        , Css.property "-moz-user-select" "all"
        , Css.property "user-select" "all"
        ]


{-| The tailwind class `select-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

select_auto : Css.Style
select_auto =
    Css.batch
        [ Css.property "-webkit-user-select" "auto"
        , Css.property "-moz-user-select" "auto"
        , Css.property "user-select" "auto"
        ]


{-| The tailwind class `select-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

select_none : Css.Style
select_none =
    Css.batch
        [ Css.property "-webkit-user-select" "none"
        , Css.property "-moz-user-select" "none"
        , Css.property "user-select" "none"
        ]


{-| The tailwind class `select-text`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

select_text : Css.Style
select_text =
    Css.batch
        [ Css.property "-webkit-user-select" "text"
        , Css.property "-moz-user-select" "text"
        , Css.property "user-select" "text"
        ]


{-| The tailwind class `self-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

self_auto : Css.Style
self_auto =
    Css.property "align-self" "auto"


{-| The tailwind class `self-baseline`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

self_baseline : Css.Style
self_baseline =
    Css.property "align-self" "baseline"


{-| The tailwind class `self-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

self_center : Css.Style
self_center =
    Css.property "align-self" "center"


{-| The tailwind class `self-end`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

self_end : Css.Style
self_end =
    Css.property "align-self" "flex-end"


{-| The tailwind class `self-start`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

self_start : Css.Style
self_start =
    Css.property "align-self" "flex-start"


{-| The tailwind class `self-stretch`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

self_stretch : Css.Style
self_stretch =
    Css.property "align-self" "stretch"


{-| The tailwind class `sepia`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

sepia : Css.Style
sepia =
    Css.property "--tw-sepia" "sepia(100%)"


{-| The tailwind class `sepia-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

sepia_0 : Css.Style
sepia_0 =
    Css.property "--tw-sepia" "sepia(0)"


{-| The tailwind class `shadow`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

shadow : Css.Style
shadow =
    Css.batch
        [ Css.property "--tw-shadow" "0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)"
        ]


{-| The tailwind class `shadow-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

shadow_2xl : Css.Style
shadow_2xl =
    Css.batch
        [ Css.property "--tw-shadow" "0 25px 50px -12px rgba(0, 0, 0, 0.25)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)"
        ]


{-| The tailwind class `shadow-inner`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

shadow_inner : Css.Style
shadow_inner =
    Css.batch
        [ Css.property "--tw-shadow" "inset 0 2px 4px 0 rgba(0, 0, 0, 0.06)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)"
        ]


{-| The tailwind class `shadow-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

shadow_lg : Css.Style
shadow_lg =
    Css.batch
        [ Css.property "--tw-shadow" "0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)"
        ]


{-| The tailwind class `shadow-md`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

shadow_md : Css.Style
shadow_md =
    Css.batch
        [ Css.property "--tw-shadow" "0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)"
        ]


{-| The tailwind class `shadow-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

shadow_none : Css.Style
shadow_none =
    Css.batch
        [ Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)"
        ]


{-| The tailwind class `shadow-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

shadow_sm : Css.Style
shadow_sm =
    Css.batch
        [ Css.property "--tw-shadow" "0 1px 2px 0 rgba(0, 0, 0, 0.05)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)"
        ]


{-| The tailwind class `shadow-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

shadow_xl : Css.Style
shadow_xl =
    Css.batch
        [ Css.property "--tw-shadow" "0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow)"
        ]


{-| The tailwind class `skew-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_x_0 : Css.Style
skew_x_0 =
    Css.property "--tw-skew-x" "0deg"


{-| The tailwind class `skew-x-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_x_1 : Css.Style
skew_x_1 =
    Css.property "--tw-skew-x" "1deg"


{-| The tailwind class `skew-x-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_x_12 : Css.Style
skew_x_12 =
    Css.property "--tw-skew-x" "12deg"


{-| The tailwind class `skew-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_x_2 : Css.Style
skew_x_2 =
    Css.property "--tw-skew-x" "2deg"


{-| The tailwind class `skew-x-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_x_3 : Css.Style
skew_x_3 =
    Css.property "--tw-skew-x" "3deg"


{-| The tailwind class `skew-x-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_x_6 : Css.Style
skew_x_6 =
    Css.property "--tw-skew-x" "6deg"


{-| The tailwind class `skew-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_y_0 : Css.Style
skew_y_0 =
    Css.property "--tw-skew-y" "0deg"


{-| The tailwind class `skew-y-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_y_1 : Css.Style
skew_y_1 =
    Css.property "--tw-skew-y" "1deg"


{-| The tailwind class `skew-y-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_y_12 : Css.Style
skew_y_12 =
    Css.property "--tw-skew-y" "12deg"


{-| The tailwind class `skew-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_y_2 : Css.Style
skew_y_2 =
    Css.property "--tw-skew-y" "2deg"


{-| The tailwind class `skew-y-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_y_3 : Css.Style
skew_y_3 =
    Css.property "--tw-skew-y" "3deg"


{-| The tailwind class `skew-y-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

skew_y_6 : Css.Style
skew_y_6 =
    Css.property "--tw-skew-y" "6deg"


{-| The tailwind class `slashed-zero`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

slashed_zero : Css.Style
slashed_zero =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-slashed-zero" "slashed-zero"
        ]


{-| The tailwind class `space-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_0 : Css.Style
space_x_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0px * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0px * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_0_dot_5 : Css.Style
space_x_0_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0.125rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0.125rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_1 : Css.Style
space_x_1 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0.25rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0.25rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_10 : Css.Style
space_x_10 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(2.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(2.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_11 : Css.Style
space_x_11 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(2.75rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(2.75rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_12 : Css.Style
space_x_12 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(3rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(3rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_14 : Css.Style
space_x_14 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(3.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(3.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_16 : Css.Style
space_x_16 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(4rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(4rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_1_dot_5 : Css.Style
space_x_1_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0.375rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0.375rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_2 : Css.Style
space_x_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_20 : Css.Style
space_x_20 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_24 : Css.Style
space_x_24 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(6rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(6rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_28 : Css.Style
space_x_28 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(7rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(7rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_2_dot_5 : Css.Style
space_x_2_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0.625rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0.625rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_3 : Css.Style
space_x_3 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0.75rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0.75rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_32 : Css.Style
space_x_32 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(8rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(8rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_36 : Css.Style
space_x_36 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(9rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(9rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_3_dot_5 : Css.Style
space_x_3_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0.875rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0.875rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_4 : Css.Style
space_x_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(1rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(1rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_40 : Css.Style
space_x_40 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(10rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(10rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_44 : Css.Style
space_x_44 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(11rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(11rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_48 : Css.Style
space_x_48 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(12rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(12rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_5 : Css.Style
space_x_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(1.25rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(1.25rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_52 : Css.Style
space_x_52 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(13rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(13rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_56 : Css.Style
space_x_56 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(14rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(14rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_6 : Css.Style
space_x_6 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(1.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(1.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_60 : Css.Style
space_x_60 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(15rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(15rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_64 : Css.Style
space_x_64 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(16rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(16rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_7 : Css.Style
space_x_7 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(1.75rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(1.75rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_72 : Css.Style
space_x_72 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(18rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(18rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_8 : Css.Style
space_x_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(2rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(2rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_80 : Css.Style
space_x_80 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(20rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(20rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_9 : Css.Style
space_x_9 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(2.25rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(2.25rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_96 : Css.Style
space_x_96 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(24rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(24rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_px : Css.Style
space_x_px =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(1px * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(1px * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| The tailwind class `space-x-reverse`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_x_reverse : Css.Style
space_x_reverse =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "1"
                ]
            ]
        ]


{-| The tailwind class `space-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_0 : Css.Style
space_y_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0px * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0px * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_0_dot_5 : Css.Style
space_y_0_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0.125rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0.125rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_1 : Css.Style
space_y_1 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0.25rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0.25rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_10 : Css.Style
space_y_10 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(2.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(2.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_11 : Css.Style
space_y_11 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(2.75rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(2.75rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_12 : Css.Style
space_y_12 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(3rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(3rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_14 : Css.Style
space_y_14 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(3.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(3.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_16 : Css.Style
space_y_16 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(4rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(4rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_1_dot_5 : Css.Style
space_y_1_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0.375rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0.375rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_2 : Css.Style
space_y_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_20 : Css.Style
space_y_20 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_24 : Css.Style
space_y_24 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(6rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(6rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_28 : Css.Style
space_y_28 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(7rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(7rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_2_dot_5 : Css.Style
space_y_2_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0.625rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0.625rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_3 : Css.Style
space_y_3 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0.75rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0.75rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_32 : Css.Style
space_y_32 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(8rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(8rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_36 : Css.Style
space_y_36 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(9rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(9rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_3_dot_5 : Css.Style
space_y_3_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0.875rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0.875rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_4 : Css.Style
space_y_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(1rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(1rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_40 : Css.Style
space_y_40 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(10rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(10rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_44 : Css.Style
space_y_44 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(11rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(11rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_48 : Css.Style
space_y_48 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(12rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(12rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_5 : Css.Style
space_y_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(1.25rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(1.25rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_52 : Css.Style
space_y_52 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(13rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(13rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_56 : Css.Style
space_y_56 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(14rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(14rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_6 : Css.Style
space_y_6 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(1.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(1.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_60 : Css.Style
space_y_60 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(15rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(15rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_64 : Css.Style
space_y_64 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(16rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(16rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_7 : Css.Style
space_y_7 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(1.75rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(1.75rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_72 : Css.Style
space_y_72 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(18rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(18rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_8 : Css.Style
space_y_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(2rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(2rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_80 : Css.Style
space_y_80 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(20rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(20rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_9 : Css.Style
space_y_9 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(2.25rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(2.25rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_96 : Css.Style
space_y_96 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(24rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(24rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_px : Css.Style
space_y_px =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(1px * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(1px * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| The tailwind class `space-y-reverse`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

space_y_reverse : Css.Style
space_y_reverse =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "1"
                ]
            ]
        ]


{-| The tailwind class `sr-only`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

sr_only : Css.Style
sr_only =
    Css.batch
        [ Css.property "position" "absolute"
        , Css.property "width" "1px"
        , Css.property "height" "1px"
        , Css.property "padding" "0"
        , Css.property "margin" "-1px"
        , Css.property "overflow" "hidden"
        , Css.property "clip" "rect(0, 0, 0, 0)"
        , Css.property "white-space" "nowrap"
        , Css.property "border-width" "0"
        ]


{-| The tailwind class `stacked-fractions`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

stacked_fractions : Css.Style
stacked_fractions =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-numeric-fraction" "stacked-fractions"
        ]


{-| The tailwind class `static`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

static : Css.Style
static =
    Css.property "position" "static"


{-| The tailwind class `sticky`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

sticky : Css.Style
sticky =
    Css.property "position" "sticky"


{-| The tailwind class `stroke-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

stroke_0 : Css.Style
stroke_0 =
    Css.property "stroke-width" "0"


{-| The tailwind class `stroke-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

stroke_1 : Css.Style
stroke_1 =
    Css.property "stroke-width" "1"


{-| The tailwind class `stroke-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

stroke_2 : Css.Style
stroke_2 =
    Css.property "stroke-width" "2"


{-| The tailwind class `stroke-current`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

stroke_current : Css.Style
stroke_current =
    Css.property "stroke" "currentColor"


{-| The tailwind class `subpixel-antialiased`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

subpixel_antialiased : Css.Style
subpixel_antialiased =
    Css.batch
        [ Css.property "-webkit-font-smoothing" "auto"
        , Css.property "-moz-osx-font-smoothing" "auto"
        ]


{-| The tailwind class `table`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table : Css.Style
table =
    Css.property "display" "table"


{-| The tailwind class `table-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_auto : Css.Style
table_auto =
    Css.property "table-layout" "auto"


{-| The tailwind class `table-caption`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_caption : Css.Style
table_caption =
    Css.property "display" "table-caption"


{-| The tailwind class `table-cell`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_cell : Css.Style
table_cell =
    Css.property "display" "table-cell"


{-| The tailwind class `table-column`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_column : Css.Style
table_column =
    Css.property "display" "table-column"


{-| The tailwind class `table-column-group`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_column_group : Css.Style
table_column_group =
    Css.property "display" "table-column-group"


{-| The tailwind class `table-fixed`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_fixed : Css.Style
table_fixed =
    Css.property "table-layout" "fixed"


{-| The tailwind class `table-footer-group`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_footer_group : Css.Style
table_footer_group =
    Css.property "display" "table-footer-group"


{-| The tailwind class `table-header-group`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_header_group : Css.Style
table_header_group =
    Css.property "display" "table-header-group"


{-| The tailwind class `table-row`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_row : Css.Style
table_row =
    Css.property "display" "table-row"


{-| The tailwind class `table-row-group`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

table_row_group : Css.Style
table_row_group =
    Css.property "display" "table-row-group"


{-| The tailwind class `tabular-nums`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

tabular_nums : Css.Style
tabular_nums =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-numeric-spacing" "tabular-nums"
        ]


{-| The tailwind class `text-2xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_2xl : Css.Style
text_2xl =
    Css.batch
        [ Css.property "font-size" "1.5rem"
        , Css.property "line-height" "2rem"
        ]


{-| The tailwind class `text-3xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_3xl : Css.Style
text_3xl =
    Css.batch
        [ Css.property "font-size" "1.875rem"
        , Css.property "line-height" "2.25rem"
        ]


{-| The tailwind class `text-4xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_4xl : Css.Style
text_4xl =
    Css.batch
        [ Css.property "font-size" "2.25rem"
        , Css.property "line-height" "2.5rem"
        ]


{-| The tailwind class `text-5xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_5xl : Css.Style
text_5xl =
    Css.batch
        [ Css.property "font-size" "3rem"
        , Css.property "line-height" "1"
        ]


{-| The tailwind class `text-6xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_6xl : Css.Style
text_6xl =
    Css.batch
        [ Css.property "font-size" "3.75rem"
        , Css.property "line-height" "1"
        ]


{-| The tailwind class `text-7xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_7xl : Css.Style
text_7xl =
    Css.batch
        [ Css.property "font-size" "4.5rem"
        , Css.property "line-height" "1"
        ]


{-| The tailwind class `text-8xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_8xl : Css.Style
text_8xl =
    Css.batch
        [ Css.property "font-size" "6rem"
        , Css.property "line-height" "1"
        ]


{-| The tailwind class `text-9xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_9xl : Css.Style
text_9xl =
    Css.batch
        [ Css.property "font-size" "8rem"
        , Css.property "line-height" "1"
        ]


{-| The tailwind class `text-base`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_base : Css.Style
text_base =
    Css.batch
        [ Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        ]


{-| The tailwind class `text-center`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_center : Css.Style
text_center =
    Css.property "text-align" "center"


{-| The tailwind class `text-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_destruct : Css.Style
text_destruct =
    Css.batch
        [ Css.property "--tw-text-opacity" "1"
        , Css.property "color" "rgba(142, 74, 73, var(--tw-text-opacity))"
        ]


{-| The tailwind class `text-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_exclaim : Css.Style
text_exclaim =
    Css.batch
        [ Css.property "--tw-text-opacity" "1"
        , Css.property "color" "rgba(224, 144, 93, var(--tw-text-opacity))"
        ]


{-| The tailwind class `text-justify`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_justify : Css.Style
text_justify =
    Css.property "text-align" "justify"


{-| The tailwind class `text-left`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_left : Css.Style
text_left =
    Css.property "text-align" "left"


{-| The tailwind class `text-lg`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_lg : Css.Style
text_lg =
    Css.batch
        [ Css.property "font-size" "1.125rem"
        , Css.property "line-height" "1.75rem"
        ]


{-| The tailwind class `text-opacity-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_0 : Css.Style
text_opacity_0 =
    Css.property "--tw-text-opacity" "0"


{-| The tailwind class `text-opacity-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_10 : Css.Style
text_opacity_10 =
    Css.property "--tw-text-opacity" "0.1"


{-| The tailwind class `text-opacity-100`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_100 : Css.Style
text_opacity_100 =
    Css.property "--tw-text-opacity" "1"


{-| The tailwind class `text-opacity-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_20 : Css.Style
text_opacity_20 =
    Css.property "--tw-text-opacity" "0.2"


{-| The tailwind class `text-opacity-25`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_25 : Css.Style
text_opacity_25 =
    Css.property "--tw-text-opacity" "0.25"


{-| The tailwind class `text-opacity-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_30 : Css.Style
text_opacity_30 =
    Css.property "--tw-text-opacity" "0.3"


{-| The tailwind class `text-opacity-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_40 : Css.Style
text_opacity_40 =
    Css.property "--tw-text-opacity" "0.4"


{-| The tailwind class `text-opacity-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_5 : Css.Style
text_opacity_5 =
    Css.property "--tw-text-opacity" "0.05"


{-| The tailwind class `text-opacity-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_50 : Css.Style
text_opacity_50 =
    Css.property "--tw-text-opacity" "0.5"


{-| The tailwind class `text-opacity-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_60 : Css.Style
text_opacity_60 =
    Css.property "--tw-text-opacity" "0.6"


{-| The tailwind class `text-opacity-70`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_70 : Css.Style
text_opacity_70 =
    Css.property "--tw-text-opacity" "0.7"


{-| The tailwind class `text-opacity-75`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_75 : Css.Style
text_opacity_75 =
    Css.property "--tw-text-opacity" "0.75"


{-| The tailwind class `text-opacity-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_80 : Css.Style
text_opacity_80 =
    Css.property "--tw-text-opacity" "0.8"


{-| The tailwind class `text-opacity-90`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_90 : Css.Style
text_opacity_90 =
    Css.property "--tw-text-opacity" "0.9"


{-| The tailwind class `text-opacity-95`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_opacity_95 : Css.Style
text_opacity_95 =
    Css.property "--tw-text-opacity" "0.95"


{-| The tailwind class `text-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_primary : Css.Style
text_primary =
    Css.batch
        [ Css.property "--tw-text-opacity" "1"
        , Css.property "color" "rgba(150, 89, 88, var(--tw-text-opacity))"
        ]


{-| The tailwind class `text-right`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_right : Css.Style
text_right =
    Css.property "text-align" "right"


{-| The tailwind class `text-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_secondary : Css.Style
text_secondary =
    Css.property "color" "#dfeee3ff"


{-| The tailwind class `text-sm`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_sm : Css.Style
text_sm =
    Css.batch
        [ Css.property "font-size" "0.875rem"
        , Css.property "line-height" "1.25rem"
        ]


{-| The tailwind class `text-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_success : Css.Style
text_success =
    Css.batch
        [ Css.property "--tw-text-opacity" "1"
        , Css.property "color" "rgba(78, 208, 182, var(--tw-text-opacity))"
        ]


{-| The tailwind class `text-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_tertiary : Css.Style
text_tertiary =
    Css.batch
        [ Css.property "--tw-text-opacity" "1"
        , Css.property "color" "rgba(161, 159, 187, var(--tw-text-opacity))"
        ]


{-| The tailwind class `text-xl`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_xl : Css.Style
text_xl =
    Css.batch
        [ Css.property "font-size" "1.25rem"
        , Css.property "line-height" "1.75rem"
        ]


{-| The tailwind class `text-xs`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

text_xs : Css.Style
text_xs =
    Css.batch
        [ Css.property "font-size" "0.75rem"
        , Css.property "line-height" "1rem"
        ]


{-| The tailwind class `to-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

to_destruct : Css.Style
to_destruct =
    Css.property "--tw-gradient-to" "#8E4A49"


{-| The tailwind class `to-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

to_exclaim : Css.Style
to_exclaim =
    Css.property "--tw-gradient-to" "#E0905D"


{-| The tailwind class `to-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

to_primary : Css.Style
to_primary =
    Css.property "--tw-gradient-to" "#965958"


{-| The tailwind class `to-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

to_secondary : Css.Style
to_secondary =
    Css.property "--tw-gradient-to" "#dfeee3ff"


{-| The tailwind class `to-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

to_success : Css.Style
to_success =
    Css.property "--tw-gradient-to" "#4ED0B6"


{-| The tailwind class `to-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

to_tertiary : Css.Style
to_tertiary =
    Css.property "--tw-gradient-to" "#A19FBB"


{-| The tailwind class `top-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_0 : Css.Style
top_0 =
    Css.property "top" "0px"


{-| The tailwind class `top-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_0_dot_5 : Css.Style
top_0_dot_5 =
    Css.property "top" "0.125rem"


{-| The tailwind class `top-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_1 : Css.Style
top_1 =
    Css.property "top" "0.25rem"


{-| The tailwind class `top-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_10 : Css.Style
top_10 =
    Css.property "top" "2.5rem"


{-| The tailwind class `top-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_11 : Css.Style
top_11 =
    Css.property "top" "2.75rem"


{-| The tailwind class `top-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_12 : Css.Style
top_12 =
    Css.property "top" "3rem"


{-| The tailwind class `top-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_14 : Css.Style
top_14 =
    Css.property "top" "3.5rem"


{-| The tailwind class `top-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_16 : Css.Style
top_16 =
    Css.property "top" "4rem"


{-| The tailwind class `top-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_1_dot_5 : Css.Style
top_1_dot_5 =
    Css.property "top" "0.375rem"


{-| The tailwind class `top-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_1over2 : Css.Style
top_1over2 =
    Css.property "top" "50%"


{-| The tailwind class `top-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_1over3 : Css.Style
top_1over3 =
    Css.property "top" "33.333333%"


{-| The tailwind class `top-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_1over4 : Css.Style
top_1over4 =
    Css.property "top" "25%"


{-| The tailwind class `top-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_2 : Css.Style
top_2 =
    Css.property "top" "0.5rem"


{-| The tailwind class `top-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_20 : Css.Style
top_20 =
    Css.property "top" "5rem"


{-| The tailwind class `top-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_24 : Css.Style
top_24 =
    Css.property "top" "6rem"


{-| The tailwind class `top-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_28 : Css.Style
top_28 =
    Css.property "top" "7rem"


{-| The tailwind class `top-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_2_dot_5 : Css.Style
top_2_dot_5 =
    Css.property "top" "0.625rem"


{-| The tailwind class `top-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_2over3 : Css.Style
top_2over3 =
    Css.property "top" "66.666667%"


{-| The tailwind class `top-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_2over4 : Css.Style
top_2over4 =
    Css.property "top" "50%"


{-| The tailwind class `top-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_3 : Css.Style
top_3 =
    Css.property "top" "0.75rem"


{-| The tailwind class `top-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_32 : Css.Style
top_32 =
    Css.property "top" "8rem"


{-| The tailwind class `top-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_36 : Css.Style
top_36 =
    Css.property "top" "9rem"


{-| The tailwind class `top-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_3_dot_5 : Css.Style
top_3_dot_5 =
    Css.property "top" "0.875rem"


{-| The tailwind class `top-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_3over4 : Css.Style
top_3over4 =
    Css.property "top" "75%"


{-| The tailwind class `top-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_4 : Css.Style
top_4 =
    Css.property "top" "1rem"


{-| The tailwind class `top-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_40 : Css.Style
top_40 =
    Css.property "top" "10rem"


{-| The tailwind class `top-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_44 : Css.Style
top_44 =
    Css.property "top" "11rem"


{-| The tailwind class `top-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_48 : Css.Style
top_48 =
    Css.property "top" "12rem"


{-| The tailwind class `top-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_5 : Css.Style
top_5 =
    Css.property "top" "1.25rem"


{-| The tailwind class `top-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_52 : Css.Style
top_52 =
    Css.property "top" "13rem"


{-| The tailwind class `top-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_56 : Css.Style
top_56 =
    Css.property "top" "14rem"


{-| The tailwind class `top-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_6 : Css.Style
top_6 =
    Css.property "top" "1.5rem"


{-| The tailwind class `top-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_60 : Css.Style
top_60 =
    Css.property "top" "15rem"


{-| The tailwind class `top-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_64 : Css.Style
top_64 =
    Css.property "top" "16rem"


{-| The tailwind class `top-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_7 : Css.Style
top_7 =
    Css.property "top" "1.75rem"


{-| The tailwind class `top-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_72 : Css.Style
top_72 =
    Css.property "top" "18rem"


{-| The tailwind class `top-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_8 : Css.Style
top_8 =
    Css.property "top" "2rem"


{-| The tailwind class `top-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_80 : Css.Style
top_80 =
    Css.property "top" "20rem"


{-| The tailwind class `top-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_9 : Css.Style
top_9 =
    Css.property "top" "2.25rem"


{-| The tailwind class `top-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_96 : Css.Style
top_96 =
    Css.property "top" "24rem"


{-| The tailwind class `top-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_auto : Css.Style
top_auto =
    Css.property "top" "auto"


{-| The tailwind class `top-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_full : Css.Style
top_full =
    Css.property "top" "100%"


{-| The tailwind class `top-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

top_px : Css.Style
top_px =
    Css.property "top" "1px"


{-| The tailwind class `tracking-normal`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

tracking_normal : Css.Style
tracking_normal =
    Css.property "letter-spacing" "0em"


{-| The tailwind class `tracking-tight`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

tracking_tight : Css.Style
tracking_tight =
    Css.property "letter-spacing" "-0.025em"


{-| The tailwind class `tracking-tighter`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

tracking_tighter : Css.Style
tracking_tighter =
    Css.property "letter-spacing" "-0.05em"


{-| The tailwind class `tracking-wide`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

tracking_wide : Css.Style
tracking_wide =
    Css.property "letter-spacing" "0.025em"


{-| The tailwind class `tracking-wider`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

tracking_wider : Css.Style
tracking_wider =
    Css.property "letter-spacing" "0.05em"


{-| The tailwind class `tracking-widest`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

tracking_widest : Css.Style
tracking_widest =
    Css.property "letter-spacing" "0.1em"


{-| The tailwind class `transform`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transform : Css.Style
transform =
    Css.batch
        [ Css.property "--tw-translate-x" "0"
        , Css.property "--tw-translate-y" "0"
        , Css.property "--tw-rotate" "0"
        , Css.property "--tw-skew-x" "0"
        , Css.property "--tw-skew-y" "0"
        , Css.property "--tw-scale-x" "1"
        , Css.property "--tw-scale-y" "1"
        , Css.property "transform" "translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| The tailwind class `transform-gpu`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transform_gpu : Css.Style
transform_gpu =
    Css.batch
        [ Css.property "--tw-translate-x" "0"
        , Css.property "--tw-translate-y" "0"
        , Css.property "--tw-rotate" "0"
        , Css.property "--tw-skew-x" "0"
        , Css.property "--tw-skew-y" "0"
        , Css.property "--tw-scale-x" "1"
        , Css.property "--tw-scale-y" "1"
        , Css.property "transform" "translate3d(var(--tw-translate-x), var(--tw-translate-y), 0) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| The tailwind class `transform-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transform_none : Css.Style
transform_none =
    Css.property "transform" "none"


{-| The tailwind class `transition`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transition : Css.Style
transition =
    Css.batch
        [ Css.property "transition-property" "background-color, border-color, color, fill, stroke, opacity, box-shadow, transform, filter, -webkit-backdrop-filter"
        , Css.property "transition-property" "background-color, border-color, color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter"
        , Css.property "transition-property" "background-color, border-color, color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter, -webkit-backdrop-filter"
        , Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 0.2, 1)"
        , Css.property "transition-duration" "150ms"
        ]


{-| The tailwind class `transition-all`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transition_all : Css.Style
transition_all =
    Css.batch
        [ Css.property "transition-property" "all"
        , Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 0.2, 1)"
        , Css.property "transition-duration" "150ms"
        ]


{-| The tailwind class `transition-colors`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transition_colors : Css.Style
transition_colors =
    Css.batch
        [ Css.property "transition-property" "background-color, border-color, color, fill, stroke"
        , Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 0.2, 1)"
        , Css.property "transition-duration" "150ms"
        ]


{-| The tailwind class `transition-none`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transition_none : Css.Style
transition_none =
    Css.property "transition-property" "none"


{-| The tailwind class `transition-opacity`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transition_opacity : Css.Style
transition_opacity =
    Css.batch
        [ Css.property "transition-property" "opacity"
        , Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 0.2, 1)"
        , Css.property "transition-duration" "150ms"
        ]


{-| The tailwind class `transition-shadow`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transition_shadow : Css.Style
transition_shadow =
    Css.batch
        [ Css.property "transition-property" "box-shadow"
        , Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 0.2, 1)"
        , Css.property "transition-duration" "150ms"
        ]


{-| The tailwind class `transition-transform`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

transition_transform : Css.Style
transition_transform =
    Css.batch
        [ Css.property "transition-property" "transform"
        , Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 0.2, 1)"
        , Css.property "transition-duration" "150ms"
        ]


{-| The tailwind class `translate-x-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_0 : Css.Style
translate_x_0 =
    Css.property "--tw-translate-x" "0px"


{-| The tailwind class `translate-x-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_0_dot_5 : Css.Style
translate_x_0_dot_5 =
    Css.property "--tw-translate-x" "0.125rem"


{-| The tailwind class `translate-x-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_1 : Css.Style
translate_x_1 =
    Css.property "--tw-translate-x" "0.25rem"


{-| The tailwind class `translate-x-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_10 : Css.Style
translate_x_10 =
    Css.property "--tw-translate-x" "2.5rem"


{-| The tailwind class `translate-x-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_11 : Css.Style
translate_x_11 =
    Css.property "--tw-translate-x" "2.75rem"


{-| The tailwind class `translate-x-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_12 : Css.Style
translate_x_12 =
    Css.property "--tw-translate-x" "3rem"


{-| The tailwind class `translate-x-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_14 : Css.Style
translate_x_14 =
    Css.property "--tw-translate-x" "3.5rem"


{-| The tailwind class `translate-x-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_16 : Css.Style
translate_x_16 =
    Css.property "--tw-translate-x" "4rem"


{-| The tailwind class `translate-x-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_1_dot_5 : Css.Style
translate_x_1_dot_5 =
    Css.property "--tw-translate-x" "0.375rem"


{-| The tailwind class `translate-x-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_1over2 : Css.Style
translate_x_1over2 =
    Css.property "--tw-translate-x" "50%"


{-| The tailwind class `translate-x-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_1over3 : Css.Style
translate_x_1over3 =
    Css.property "--tw-translate-x" "33.333333%"


{-| The tailwind class `translate-x-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_1over4 : Css.Style
translate_x_1over4 =
    Css.property "--tw-translate-x" "25%"


{-| The tailwind class `translate-x-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_2 : Css.Style
translate_x_2 =
    Css.property "--tw-translate-x" "0.5rem"


{-| The tailwind class `translate-x-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_20 : Css.Style
translate_x_20 =
    Css.property "--tw-translate-x" "5rem"


{-| The tailwind class `translate-x-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_24 : Css.Style
translate_x_24 =
    Css.property "--tw-translate-x" "6rem"


{-| The tailwind class `translate-x-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_28 : Css.Style
translate_x_28 =
    Css.property "--tw-translate-x" "7rem"


{-| The tailwind class `translate-x-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_2_dot_5 : Css.Style
translate_x_2_dot_5 =
    Css.property "--tw-translate-x" "0.625rem"


{-| The tailwind class `translate-x-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_2over3 : Css.Style
translate_x_2over3 =
    Css.property "--tw-translate-x" "66.666667%"


{-| The tailwind class `translate-x-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_2over4 : Css.Style
translate_x_2over4 =
    Css.property "--tw-translate-x" "50%"


{-| The tailwind class `translate-x-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_3 : Css.Style
translate_x_3 =
    Css.property "--tw-translate-x" "0.75rem"


{-| The tailwind class `translate-x-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_32 : Css.Style
translate_x_32 =
    Css.property "--tw-translate-x" "8rem"


{-| The tailwind class `translate-x-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_36 : Css.Style
translate_x_36 =
    Css.property "--tw-translate-x" "9rem"


{-| The tailwind class `translate-x-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_3_dot_5 : Css.Style
translate_x_3_dot_5 =
    Css.property "--tw-translate-x" "0.875rem"


{-| The tailwind class `translate-x-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_3over4 : Css.Style
translate_x_3over4 =
    Css.property "--tw-translate-x" "75%"


{-| The tailwind class `translate-x-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_4 : Css.Style
translate_x_4 =
    Css.property "--tw-translate-x" "1rem"


{-| The tailwind class `translate-x-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_40 : Css.Style
translate_x_40 =
    Css.property "--tw-translate-x" "10rem"


{-| The tailwind class `translate-x-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_44 : Css.Style
translate_x_44 =
    Css.property "--tw-translate-x" "11rem"


{-| The tailwind class `translate-x-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_48 : Css.Style
translate_x_48 =
    Css.property "--tw-translate-x" "12rem"


{-| The tailwind class `translate-x-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_5 : Css.Style
translate_x_5 =
    Css.property "--tw-translate-x" "1.25rem"


{-| The tailwind class `translate-x-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_52 : Css.Style
translate_x_52 =
    Css.property "--tw-translate-x" "13rem"


{-| The tailwind class `translate-x-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_56 : Css.Style
translate_x_56 =
    Css.property "--tw-translate-x" "14rem"


{-| The tailwind class `translate-x-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_6 : Css.Style
translate_x_6 =
    Css.property "--tw-translate-x" "1.5rem"


{-| The tailwind class `translate-x-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_60 : Css.Style
translate_x_60 =
    Css.property "--tw-translate-x" "15rem"


{-| The tailwind class `translate-x-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_64 : Css.Style
translate_x_64 =
    Css.property "--tw-translate-x" "16rem"


{-| The tailwind class `translate-x-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_7 : Css.Style
translate_x_7 =
    Css.property "--tw-translate-x" "1.75rem"


{-| The tailwind class `translate-x-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_72 : Css.Style
translate_x_72 =
    Css.property "--tw-translate-x" "18rem"


{-| The tailwind class `translate-x-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_8 : Css.Style
translate_x_8 =
    Css.property "--tw-translate-x" "2rem"


{-| The tailwind class `translate-x-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_80 : Css.Style
translate_x_80 =
    Css.property "--tw-translate-x" "20rem"


{-| The tailwind class `translate-x-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_9 : Css.Style
translate_x_9 =
    Css.property "--tw-translate-x" "2.25rem"


{-| The tailwind class `translate-x-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_96 : Css.Style
translate_x_96 =
    Css.property "--tw-translate-x" "24rem"


{-| The tailwind class `translate-x-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_full : Css.Style
translate_x_full =
    Css.property "--tw-translate-x" "100%"


{-| The tailwind class `translate-x-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_x_px : Css.Style
translate_x_px =
    Css.property "--tw-translate-x" "1px"


{-| The tailwind class `translate-y-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_0 : Css.Style
translate_y_0 =
    Css.property "--tw-translate-y" "0px"


{-| The tailwind class `translate-y-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_0_dot_5 : Css.Style
translate_y_0_dot_5 =
    Css.property "--tw-translate-y" "0.125rem"


{-| The tailwind class `translate-y-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_1 : Css.Style
translate_y_1 =
    Css.property "--tw-translate-y" "0.25rem"


{-| The tailwind class `translate-y-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_10 : Css.Style
translate_y_10 =
    Css.property "--tw-translate-y" "2.5rem"


{-| The tailwind class `translate-y-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_11 : Css.Style
translate_y_11 =
    Css.property "--tw-translate-y" "2.75rem"


{-| The tailwind class `translate-y-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_12 : Css.Style
translate_y_12 =
    Css.property "--tw-translate-y" "3rem"


{-| The tailwind class `translate-y-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_14 : Css.Style
translate_y_14 =
    Css.property "--tw-translate-y" "3.5rem"


{-| The tailwind class `translate-y-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_16 : Css.Style
translate_y_16 =
    Css.property "--tw-translate-y" "4rem"


{-| The tailwind class `translate-y-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_1_dot_5 : Css.Style
translate_y_1_dot_5 =
    Css.property "--tw-translate-y" "0.375rem"


{-| The tailwind class `translate-y-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_1over2 : Css.Style
translate_y_1over2 =
    Css.property "--tw-translate-y" "50%"


{-| The tailwind class `translate-y-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_1over3 : Css.Style
translate_y_1over3 =
    Css.property "--tw-translate-y" "33.333333%"


{-| The tailwind class `translate-y-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_1over4 : Css.Style
translate_y_1over4 =
    Css.property "--tw-translate-y" "25%"


{-| The tailwind class `translate-y-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_2 : Css.Style
translate_y_2 =
    Css.property "--tw-translate-y" "0.5rem"


{-| The tailwind class `translate-y-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_20 : Css.Style
translate_y_20 =
    Css.property "--tw-translate-y" "5rem"


{-| The tailwind class `translate-y-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_24 : Css.Style
translate_y_24 =
    Css.property "--tw-translate-y" "6rem"


{-| The tailwind class `translate-y-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_28 : Css.Style
translate_y_28 =
    Css.property "--tw-translate-y" "7rem"


{-| The tailwind class `translate-y-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_2_dot_5 : Css.Style
translate_y_2_dot_5 =
    Css.property "--tw-translate-y" "0.625rem"


{-| The tailwind class `translate-y-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_2over3 : Css.Style
translate_y_2over3 =
    Css.property "--tw-translate-y" "66.666667%"


{-| The tailwind class `translate-y-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_2over4 : Css.Style
translate_y_2over4 =
    Css.property "--tw-translate-y" "50%"


{-| The tailwind class `translate-y-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_3 : Css.Style
translate_y_3 =
    Css.property "--tw-translate-y" "0.75rem"


{-| The tailwind class `translate-y-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_32 : Css.Style
translate_y_32 =
    Css.property "--tw-translate-y" "8rem"


{-| The tailwind class `translate-y-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_36 : Css.Style
translate_y_36 =
    Css.property "--tw-translate-y" "9rem"


{-| The tailwind class `translate-y-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_3_dot_5 : Css.Style
translate_y_3_dot_5 =
    Css.property "--tw-translate-y" "0.875rem"


{-| The tailwind class `translate-y-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_3over4 : Css.Style
translate_y_3over4 =
    Css.property "--tw-translate-y" "75%"


{-| The tailwind class `translate-y-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_4 : Css.Style
translate_y_4 =
    Css.property "--tw-translate-y" "1rem"


{-| The tailwind class `translate-y-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_40 : Css.Style
translate_y_40 =
    Css.property "--tw-translate-y" "10rem"


{-| The tailwind class `translate-y-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_44 : Css.Style
translate_y_44 =
    Css.property "--tw-translate-y" "11rem"


{-| The tailwind class `translate-y-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_48 : Css.Style
translate_y_48 =
    Css.property "--tw-translate-y" "12rem"


{-| The tailwind class `translate-y-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_5 : Css.Style
translate_y_5 =
    Css.property "--tw-translate-y" "1.25rem"


{-| The tailwind class `translate-y-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_52 : Css.Style
translate_y_52 =
    Css.property "--tw-translate-y" "13rem"


{-| The tailwind class `translate-y-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_56 : Css.Style
translate_y_56 =
    Css.property "--tw-translate-y" "14rem"


{-| The tailwind class `translate-y-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_6 : Css.Style
translate_y_6 =
    Css.property "--tw-translate-y" "1.5rem"


{-| The tailwind class `translate-y-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_60 : Css.Style
translate_y_60 =
    Css.property "--tw-translate-y" "15rem"


{-| The tailwind class `translate-y-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_64 : Css.Style
translate_y_64 =
    Css.property "--tw-translate-y" "16rem"


{-| The tailwind class `translate-y-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_7 : Css.Style
translate_y_7 =
    Css.property "--tw-translate-y" "1.75rem"


{-| The tailwind class `translate-y-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_72 : Css.Style
translate_y_72 =
    Css.property "--tw-translate-y" "18rem"


{-| The tailwind class `translate-y-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_8 : Css.Style
translate_y_8 =
    Css.property "--tw-translate-y" "2rem"


{-| The tailwind class `translate-y-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_80 : Css.Style
translate_y_80 =
    Css.property "--tw-translate-y" "20rem"


{-| The tailwind class `translate-y-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_9 : Css.Style
translate_y_9 =
    Css.property "--tw-translate-y" "2.25rem"


{-| The tailwind class `translate-y-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_96 : Css.Style
translate_y_96 =
    Css.property "--tw-translate-y" "24rem"


{-| The tailwind class `translate-y-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_full : Css.Style
translate_y_full =
    Css.property "--tw-translate-y" "100%"


{-| The tailwind class `translate-y-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

translate_y_px : Css.Style
translate_y_px =
    Css.property "--tw-translate-y" "1px"


{-| The tailwind class `truncate`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

truncate : Css.Style
truncate =
    Css.batch
        [ Css.property "overflow" "hidden"
        , Css.property "text-overflow" "ellipsis"
        , Css.property "white-space" "nowrap"
        ]


{-| The tailwind class `underline`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

underline : Css.Style
underline =
    Css.property "text-decoration" "underline"


{-| The tailwind class `uppercase`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

uppercase : Css.Style
uppercase =
    Css.property "text-transform" "uppercase"


{-| The tailwind class `via-destruct`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

via_destruct : Css.Style
via_destruct =
    Css.property "--tw-gradient-stops" "var(--tw-gradient-from), #8E4A49, var(--tw-gradient-to, rgba(142, 74, 73, 0))"


{-| The tailwind class `via-exclaim`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

via_exclaim : Css.Style
via_exclaim =
    Css.property "--tw-gradient-stops" "var(--tw-gradient-from), #E0905D, var(--tw-gradient-to, rgba(224, 144, 93, 0))"


{-| The tailwind class `via-primary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

via_primary : Css.Style
via_primary =
    Css.property "--tw-gradient-stops" "var(--tw-gradient-from), #965958, var(--tw-gradient-to, rgba(150, 89, 88, 0))"


{-| The tailwind class `via-secondary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

via_secondary : Css.Style
via_secondary =
    Css.property "--tw-gradient-stops" "var(--tw-gradient-from), #dfeee3ff, var(--tw-gradient-to, rgba(223, 238, 227, 0))"


{-| The tailwind class `via-success`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

via_success : Css.Style
via_success =
    Css.property "--tw-gradient-stops" "var(--tw-gradient-from), #4ED0B6, var(--tw-gradient-to, rgba(78, 208, 182, 0))"


{-| The tailwind class `via-tertiary`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

via_tertiary : Css.Style
via_tertiary =
    Css.property "--tw-gradient-stops" "var(--tw-gradient-from), #A19FBB, var(--tw-gradient-to, rgba(161, 159, 187, 0))"


{-| The tailwind class `visible`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

visible : Css.Style
visible =
    Css.property "visibility" "visible"


{-| The tailwind class `w-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_0 : Css.Style
w_0 =
    Css.property "width" "0px"


{-| The tailwind class `w-0.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_0_dot_5 : Css.Style
w_0_dot_5 =
    Css.property "width" "0.125rem"


{-| The tailwind class `w-1`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_1 : Css.Style
w_1 =
    Css.property "width" "0.25rem"


{-| The tailwind class `w-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_10 : Css.Style
w_10 =
    Css.property "width" "2.5rem"


{-| The tailwind class `w-10/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_10over12 : Css.Style
w_10over12 =
    Css.property "width" "83.333333%"


{-| The tailwind class `w-11`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_11 : Css.Style
w_11 =
    Css.property "width" "2.75rem"


{-| The tailwind class `w-11/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_11over12 : Css.Style
w_11over12 =
    Css.property "width" "91.666667%"


{-| The tailwind class `w-12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_12 : Css.Style
w_12 =
    Css.property "width" "3rem"


{-| The tailwind class `w-14`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_14 : Css.Style
w_14 =
    Css.property "width" "3.5rem"


{-| The tailwind class `w-16`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_16 : Css.Style
w_16 =
    Css.property "width" "4rem"


{-| The tailwind class `w-1.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_1_dot_5 : Css.Style
w_1_dot_5 =
    Css.property "width" "0.375rem"


{-| The tailwind class `w-1/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_1over12 : Css.Style
w_1over12 =
    Css.property "width" "8.333333%"


{-| The tailwind class `w-1/2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_1over2 : Css.Style
w_1over2 =
    Css.property "width" "50%"


{-| The tailwind class `w-1/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_1over3 : Css.Style
w_1over3 =
    Css.property "width" "33.333333%"


{-| The tailwind class `w-1/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_1over4 : Css.Style
w_1over4 =
    Css.property "width" "25%"


{-| The tailwind class `w-1/5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_1over5 : Css.Style
w_1over5 =
    Css.property "width" "20%"


{-| The tailwind class `w-1/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_1over6 : Css.Style
w_1over6 =
    Css.property "width" "16.666667%"


{-| The tailwind class `w-2`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_2 : Css.Style
w_2 =
    Css.property "width" "0.5rem"


{-| The tailwind class `w-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_20 : Css.Style
w_20 =
    Css.property "width" "5rem"


{-| The tailwind class `w-24`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_24 : Css.Style
w_24 =
    Css.property "width" "6rem"


{-| The tailwind class `w-28`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_28 : Css.Style
w_28 =
    Css.property "width" "7rem"


{-| The tailwind class `w-2.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_2_dot_5 : Css.Style
w_2_dot_5 =
    Css.property "width" "0.625rem"


{-| The tailwind class `w-2/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_2over12 : Css.Style
w_2over12 =
    Css.property "width" "16.666667%"


{-| The tailwind class `w-2/3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_2over3 : Css.Style
w_2over3 =
    Css.property "width" "66.666667%"


{-| The tailwind class `w-2/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_2over4 : Css.Style
w_2over4 =
    Css.property "width" "50%"


{-| The tailwind class `w-2/5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_2over5 : Css.Style
w_2over5 =
    Css.property "width" "40%"


{-| The tailwind class `w-2/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_2over6 : Css.Style
w_2over6 =
    Css.property "width" "33.333333%"


{-| The tailwind class `w-3`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_3 : Css.Style
w_3 =
    Css.property "width" "0.75rem"


{-| The tailwind class `w-32`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_32 : Css.Style
w_32 =
    Css.property "width" "8rem"


{-| The tailwind class `w-36`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_36 : Css.Style
w_36 =
    Css.property "width" "9rem"


{-| The tailwind class `w-3.5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_3_dot_5 : Css.Style
w_3_dot_5 =
    Css.property "width" "0.875rem"


{-| The tailwind class `w-3/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_3over12 : Css.Style
w_3over12 =
    Css.property "width" "25%"


{-| The tailwind class `w-3/4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_3over4 : Css.Style
w_3over4 =
    Css.property "width" "75%"


{-| The tailwind class `w-3/5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_3over5 : Css.Style
w_3over5 =
    Css.property "width" "60%"


{-| The tailwind class `w-3/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_3over6 : Css.Style
w_3over6 =
    Css.property "width" "50%"


{-| The tailwind class `w-4`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_4 : Css.Style
w_4 =
    Css.property "width" "1rem"


{-| The tailwind class `w-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_40 : Css.Style
w_40 =
    Css.property "width" "10rem"


{-| The tailwind class `w-44`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_44 : Css.Style
w_44 =
    Css.property "width" "11rem"


{-| The tailwind class `w-48`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_48 : Css.Style
w_48 =
    Css.property "width" "12rem"


{-| The tailwind class `w-4/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_4over12 : Css.Style
w_4over12 =
    Css.property "width" "33.333333%"


{-| The tailwind class `w-4/5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_4over5 : Css.Style
w_4over5 =
    Css.property "width" "80%"


{-| The tailwind class `w-4/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_4over6 : Css.Style
w_4over6 =
    Css.property "width" "66.666667%"


{-| The tailwind class `w-5`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_5 : Css.Style
w_5 =
    Css.property "width" "1.25rem"


{-| The tailwind class `w-52`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_52 : Css.Style
w_52 =
    Css.property "width" "13rem"


{-| The tailwind class `w-56`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_56 : Css.Style
w_56 =
    Css.property "width" "14rem"


{-| The tailwind class `w-5/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_5over12 : Css.Style
w_5over12 =
    Css.property "width" "41.666667%"


{-| The tailwind class `w-5/6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_5over6 : Css.Style
w_5over6 =
    Css.property "width" "83.333333%"


{-| The tailwind class `w-6`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_6 : Css.Style
w_6 =
    Css.property "width" "1.5rem"


{-| The tailwind class `w-60`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_60 : Css.Style
w_60 =
    Css.property "width" "15rem"


{-| The tailwind class `w-64`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_64 : Css.Style
w_64 =
    Css.property "width" "16rem"


{-| The tailwind class `w-6/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_6over12 : Css.Style
w_6over12 =
    Css.property "width" "50%"


{-| The tailwind class `w-7`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_7 : Css.Style
w_7 =
    Css.property "width" "1.75rem"


{-| The tailwind class `w-72`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_72 : Css.Style
w_72 =
    Css.property "width" "18rem"


{-| The tailwind class `w-7/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_7over12 : Css.Style
w_7over12 =
    Css.property "width" "58.333333%"


{-| The tailwind class `w-8`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_8 : Css.Style
w_8 =
    Css.property "width" "2rem"


{-| The tailwind class `w-80`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_80 : Css.Style
w_80 =
    Css.property "width" "20rem"


{-| The tailwind class `w-8/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_8over12 : Css.Style
w_8over12 =
    Css.property "width" "66.666667%"


{-| The tailwind class `w-9`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_9 : Css.Style
w_9 =
    Css.property "width" "2.25rem"


{-| The tailwind class `w-96`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_96 : Css.Style
w_96 =
    Css.property "width" "24rem"


{-| The tailwind class `w-9/12`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_9over12 : Css.Style
w_9over12 =
    Css.property "width" "75%"


{-| The tailwind class `w-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_auto : Css.Style
w_auto =
    Css.property "width" "auto"


{-| The tailwind class `w-full`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_full : Css.Style
w_full =
    Css.property "width" "100%"


{-| The tailwind class `w-max`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_max : Css.Style
w_max =
    Css.batch
        [ Css.property "width" "-moz-max-content"
        , Css.property "width" "max-content"
        ]


{-| The tailwind class `w-min`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_min : Css.Style
w_min =
    Css.batch
        [ Css.property "width" "-moz-min-content"
        , Css.property "width" "min-content"
        ]


{-| The tailwind class `w-px`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_px : Css.Style
w_px =
    Css.property "width" "1px"


{-| The tailwind class `w-screen`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

w_screen : Css.Style
w_screen =
    Css.property "width" "100vw"


{-| The tailwind class `whitespace-normal`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

whitespace_normal : Css.Style
whitespace_normal =
    Css.property "white-space" "normal"


{-| The tailwind class `whitespace-nowrap`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

whitespace_nowrap : Css.Style
whitespace_nowrap =
    Css.property "white-space" "nowrap"


{-| The tailwind class `whitespace-pre`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

whitespace_pre : Css.Style
whitespace_pre =
    Css.property "white-space" "pre"


{-| The tailwind class `whitespace-pre-line`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

whitespace_pre_line : Css.Style
whitespace_pre_line =
    Css.property "white-space" "pre-line"


{-| The tailwind class `whitespace-pre-wrap`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

whitespace_pre_wrap : Css.Style
whitespace_pre_wrap =
    Css.property "white-space" "pre-wrap"


{-| The tailwind class `z-0`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

z_0 : Css.Style
z_0 =
    Css.property "z-index" "0"


{-| The tailwind class `z-10`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

z_10 : Css.Style
z_10 =
    Css.property "z-index" "10"


{-| The tailwind class `z-20`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

z_20 : Css.Style
z_20 =
    Css.property "z-index" "20"


{-| The tailwind class `z-30`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

z_30 : Css.Style
z_30 =
    Css.property "z-index" "30"


{-| The tailwind class `z-40`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

z_40 : Css.Style
z_40 =
    Css.property "z-index" "40"


{-| The tailwind class `z-50`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

z_50 : Css.Style
z_50 =
    Css.property "z-index" "50"


{-| The tailwind class `z-auto`.
Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!
-}

z_auto : Css.Style
z_auto =
    Css.property "z-index" "auto"
