
- dashboard: practice_dashboard
  title: Practice_dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  refresh: 1 day
  filters_location_top: false
  preferred_slug: iTqiw7OHSDPEZ0igPrehpu
  elements:
  - title: All Information
    name: All Information
    model: example_test12
    explore: adheris_patient_data
    type: looker_grid
    fields: [adheris_patient_data.first_name, adheris_patient_data.last_name, adheris_patient_data.email_address,
      adheris_patient_data.id, adheris_patient_data.application_type, adheris_patient_data.approval_status,
      adheris_patient_data.country, adheris_patient_data.credit_card_number, adheris_patient_data.gender,
      adheris_patient_data.income_category, adheris_patient_data.installment, adheris_patient_data.issue_d_date,
      adheris_patient_data.issue_d_year, adheris_patient_data.issue_d_month, adheris_patient_data.loan_amount,
      adheris_patient_data.phone_no, adheris_patient_data.region, adheris_patient_data.total_pymnt,
      adheris_patient_data.interest_payments, adheris_patient_data.annual_inc]
    sorts: [adheris_patient_data.issue_d_date desc]
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c
      palette_id: 75905e81-dadc-472c-b9a2-a201f788d55d
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#615894"
    header_background_color: "#7bc739"
    conditional_formatting: [{type: along a scale..., value: 1172.59, background_color: "#4A80BC",
        font_color: !!null '', color_application: {collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c,
          palette_id: 95584bf9-c29e-41ea-b6e7-79e9c126e177, options: {steps: 5, mirror: true,
            stepped: false}}, bold: true, italic: false, strikethrough: false, fields: [
          adheris_patient_data.installment]}, {type: along a scale..., value: !!null '',
        background_color: !!null '', font_color: !!null '', color_application: {collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c,
          palette_id: 95584bf9-c29e-41ea-b6e7-79e9c126e177, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: [adheris_patient_data.annual_inc]}]
    defaults_version: 1
    truncate_column_names: false
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 5
    col: 0
    width: 24
    height: 9
  - title: 'Email_ID with there Installment '
    name: 'Email_ID with there Installment '
    model: example_test12
    explore: adheris_patient_data
    type: looker_column
    fields: [adheris_patient_data.email_address, adheris_patient_data.installment]
    sorts: [adheris_patient_data.installment desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - measure: list_of_application_type
      based_on: adheris_patient_data.application_type
      expression: ''
      label: List of Application Type
      type: list
      _kind_hint: measure
      _type_hint: list
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: adheris_patient_data.email_address,
            id: adheris_patient_data.email_address, name: Email Address}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_colors: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    trend_lines: []
    show_dropoff: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 14
    col: 9
    width: 15
    height: 6
  - title: 'Loan Amount vs Annual Income '
    name: 'Loan Amount vs Annual Income '
    model: example_test12
    explore: adheris_patient_data
    type: Multiple Value
    fields: [sum_of_loan_amount, sum_of_annual_inc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_loan_amount
      based_on: adheris_patient_data.loan_amount
      expression: ''
      label: Sum of Loan Amount
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_annual_inc
      based_on: adheris_patient_data.annual_inc
      expression: ''
      label: Sum of Annual Inc
      type: sum
      _kind_hint: measure
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    font_size_main: '12'
    orientation: auto
    style_sum_of_loan_amount: "#4255ff"
    show_title_sum_of_loan_amount: true
    title_placement_sum_of_loan_amount: above
    value_format_sum_of_loan_amount: ''
    show_comparison_sum_of_annual_inc: true
    comparison_style_sum_of_annual_inc: value_change
    comparison_show_label_sum_of_annual_inc: true
    pos_is_bad_sum_of_annual_inc: false
    comparison_label_placement_sum_of_annual_inc: below
    style_sum_of_annual_inc: "#B1399E"
    defaults_version: 0
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 2
    col: 6
    width: 6
    height: 3
  - title: Top People with Less Annual Income
    name: Top People with Less Annual Income
    model: example_test12
    explore: adheris_patient_data
    type: looker_pie
    fields: [adheris_patient_data.email_address, less_of_annual_inc]
    sorts: [less_of_annual_inc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: less of Annual Inc
      based_on: adheris_patient_data.annual_inc
      _kind_hint: measure
      measure: less_of_annual_inc
      type: min
      _type_hint: number
    - measure: average_of_installment
      based_on: adheris_patient_data.installment
      expression: ''
      label: Average of Installment
      type: average
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    series_colors: {}
    advanced_vis_config: |-
      {
        chart: {},
        series: [{}]
      }
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 14
    col: 0
    width: 9
    height: 6
  - title: Annual Income VS Installment
    name: Annual Income VS Installment
    model: example_test12
    explore: adheris_patient_data
    type: Multiple Value
    fields: [sum_of_annual_inc, sum_of_installment]
    sorts: [sum_of_annual_inc desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_credit_card_number
      based_on: adheris_patient_data.credit_card_number
      expression: ''
      label: Count of Credit Card Number
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Annual Inc
      value_format: 0.##
      value_format_name: __custom
      based_on: adheris_patient_data.annual_inc
      _kind_hint: measure
      measure: sum_of_annual_inc
      type: sum
      _type_hint: number
    - measure: sum_of_installment
      based_on: adheris_patient_data.installment
      expression: ''
      label: Sum of Installment
      type: sum
      _kind_hint: measure
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    font_size_main: '12'
    orientation: auto
    style_sum_of_annual_inc: "#4255ff"
    show_title_sum_of_annual_inc: true
    title_placement_sum_of_annual_inc: above
    value_format_sum_of_annual_inc: ''
    show_comparison_sum_of_installment: true
    comparison_style_sum_of_installment: value_change
    comparison_show_label_sum_of_installment: true
    pos_is_bad_sum_of_installment: false
    comparison_label_placement_sum_of_installment: below
    style_sum_of_installment: "#B1399E"
    show_title_sum_of_installment: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 2
    col: 0
    width: 6
    height: 3
  - title: 'Region wise Patients '
    name: 'Region wise Patients '
    model: example_test12
    explore: adheris_patient_data
    type: looker_google_map
    fields: [adheris_patient_data.id, adheris_patient_data.email_address, adheris_patient_data.region,
      adheris_patient_data.country, adheris_patient_data.home_ownership]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: satellite_streets
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    map_value_colors: ["#FFFFFF"]
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 20
    col: 0
    width: 11
    height: 7
  - title: Loan Amount VS Interest Rate
    name: Loan Amount VS Interest Rate
    model: example_test12
    explore: adheris_patient_data
    type: Multiple Value
    fields: [sum_of_loan_amount, sum_of_interest_rate]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_loan_amount
      based_on: adheris_patient_data.loan_amount
      expression: ''
      label: Sum of Loan Amount
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_interest_payments
      based_on: adheris_patient_data.interest_payments
      expression: ''
      label: Count of Interest Payments
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_interest_rate
      based_on: adheris_patient_data.interest_rate
      expression: ''
      label: Sum of Interest Rate
      type: sum
      _kind_hint: measure
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    font_size_main: '12'
    orientation: auto
    style_sum_of_loan_amount: "#4255ff"
    show_title_sum_of_loan_amount: true
    title_placement_sum_of_loan_amount: above
    value_format_sum_of_loan_amount: ''
    show_comparison_sum_of_interest_rate: true
    comparison_style_sum_of_interest_rate: value_change
    comparison_show_label_sum_of_interest_rate: true
    pos_is_bad_sum_of_interest_rate: false
    comparison_label_placement_sum_of_interest_rate: below
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 2
    col: 12
    width: 6
    height: 3
  - title: 'Calendar '
    name: 'Calendar '
    model: example_test12
    explore: adheris_patient_data
    type: marketplace_viz_calendar_heatmap::calendar_heatmap-marketplace
    fields: [adheris_patient_data.issue_d_date, adheris_patient_data.count]
    fill_fields: [adheris_patient_data.issue_d_date]
    sorts: [adheris_patient_data.issue_d_date desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    rounded: true
    label_year: true
    label_month: true
    viz_show_legend: true
    focus_tooltip: true
    outline_weight: 3
    cell_color: "#72D16D"
    outline_color: "#592EC2"
    cell_reducer: 0.5
    axis_label_color: "#592EC2"
    defaults_version: 0
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 20
    col: 11
    width: 13
    height: 7
  - title: Daywise Sorting
    name: Daywise Sorting
    model: example_test12
    explore: adheris_patient_data
    type: looker_timeline
    fields: [adheris_patient_data.issue_d_date, adheris_patient_data.issue_d_month,
      adheris_patient_data.issue_d_year]
    sorts: [adheris_patient_data.issue_d_date desc]
    limit: 50
    column_limit: 50
    groupBars: true
    labelSize: 12pt
    showLegend: true
    color_application:
      collection_id: new-custom-collection
      custom:
        id: b275f678-66c2-2ec7-266e-f1e5a58c1dca
        label: Custom
        type: continuous
        stops:
        - color: "#5a4bff"
          offset: 0
        - color: "#3EB0D5"
          offset: 50
        - color: "#4276BE"
          offset: 100
      options:
        steps: 5
        reverse: true
    defaults_version: 1
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 27
    col: 0
    width: 15
    height: 6
  - type: button
    name: button_1554
    rich_content_json: '{"text":"Searce.com","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"https://searcepartner.cloud.looker.com/"}'
    row: 3
    col: 19
    width: 4
    height: 1
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <body>
      <center><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAdUAAABrCAMAAAAW0Oh0AAAAz1BMVEX///8AAAAAZf/x8fGxsbGcnJy8vLzi4uL///35+fn8/PzX19fu7u4/Pz/29vahoaHCwsIdHR1ra2vo6OiFhYXf399iYmJwcHAAYf+Li4uqqqpcXFzOzs6urq51dXXY2NgpKSmUlJQ1NTVOTk5GRkYWFhYAWf4AXf4MDAwhISEtLS06OjqHh4dKSkoAV/9+fn4nd/48f/3u8/vB1PySsPxklf5ynPycuvzQ3f0XbP7i7Pw9fv2Eqfu4zfxMiPx4ov2oxP3J2v1Wi/zZ5/0Zb/0aIfwrAAAQ/0lEQVR4nO1daXfaPBOFssQmhH3fgiFAIDSkSZtuaZsu//83vWy2ZrR5JDsvD+f4fsoJtizpahaNRlIqleBc4TiPTx8/fXh4+PD8+YvrOKeuT4LocJzffzrzRWeLd53F/OvzNych9tzhfPl+33nH0OncPz8mrJ41HOdlDjndY/HuR0LrOaPwc85zusP9x4TWs4XjPgiCesD8V0LrmcJxfi7kpG5p/ZzQep5wfknV71EJ/z519RJY4e898n0XC+QL/yucun4JLOB8YCx25v+eX14+vQPCu/h46gomsMBvJqqL71+cHdzXd4zpRSKs5wfnT0Dg/YvvGjmlD4EDNX9NHKZzg/MY0Ld4AfQVvvtkd34mrJ4bnCef1c4DZM/5xhTz48lql8AOzovP6vwJyaTz7Avr/ZdTVS6BJZxPgabFXpHz23eE56+nqVoCazg/O7755H559OlefD5JzRLYI5itdj5xvzx+TVg9VzBZ/cP98vguYfVs4dvVzlc8gXH++m7U4vU0NUtgDedX4AN/wT7wx+CHJMB/bnB++K5u5w9mNYhOdJL56tnhWxDJX/wA6Wdsutp5OGHtEljiO4sDP/m07vKYArKTRZszxCtbdpu/uIf/ffvDsiPuEwV8hij8Cwh81+k8v/5++vwHJBwunpPg/hnC+QFzIRaL+RwnQ3xLWD1HaJLRtvo3SUc7TziP/xSJo1vR5eOIAty4UiXcTMaNqSiAUrH0prkclDrH3DJacY7zd6GgdfFB2SXFgde+Sx8wm27K19YVb2a7rfGxpPS4tc42Y+Ahc1neTGd+qVcjr1KPXihAfZAb3eyKzqmfKTSza9ayVaubbUb5pHs9bPSXQXG1bv5C9/iW1q9SWuc/C3L9m+m9T/OYtfLmxJaytapQUrraymaMiwK4yN2IhaZX6wH/YOHSR1EoJBP8JjRr0J0EpZYVdchkW7KW1fIlqyZlhv2ZWNyyre3zxw+SnOD5L/muuOu2pM/22GhHj4BKS1VQOt2qGBXFkCnfKQu9bWBpKQa/eEI5+eA3/E69u4RFylmt9NUtq5m3LK8pri2M1QCO83mBfabO/N+TlNS6hortN8iKzu1JBh/ELGeh1C9G+kLTU9gJjFVRkTJW4VC95PtXwmqpfKuvw7JnYmMyuZAmrYbKd53Hl6/zjr+As1g8vMoFNewTOkMDEcbpDrcq9aZCMYzTHQCvpqxeizIjVjGM0x2qPXKbQjt8i2VW/b779Othfr9F5+dHRa5SaRr+iTuCuA6W4eXsMDPSVh6t0HTLr6EZqxnZmOFZrRA43WGsVpzyWugx0elhx3l8fHQd1TbzosQBkCCswgWKSB3RJqvh60l4aT6OOsuI1Yq0JMxqqUavwyhcDWe01g5jQ+0nHnXqF/LaYi6Jw/kI2qAmaSqG/t4VNWFV4SIiVgdGdZhdhjRJPo5UGNvNm0o0Sd1Bpzh7RnVN0yx1QeMlSlG9TpmwWlcpAvii2cDaQm9du6bFaayrGrxNva11e/lBJZvbiF2qHoYNSXXGtUY5m89ny+vaSvLzKLRqddlrN6Nt/fL5oSepX3o/8sisSoVwuvF6MLAgk+ZVe71vWa5RG0t+1qlNmfYFxck8k25oRwkoowLGOSTwl12u0qowglDX6qiCJualykZofyukahdC+65yeFzVsyKzWTKroiqc9gR9JziS4w3fspFARU3VpIIQSBk3KsjHyOTbgvI0Nq5F+HZVYjnziIy+vBSe1FZF5jMM+Mem2qoJpHZlJiYz5AU6Wwr+1LFa5EmtlsVQlEBqTeYPFITwhGLACqRKi3Mr/Ffbun6SYAPebcgfQdIsVfIcWyPlJKjOucmKQXJ4Fj+qmeVWuL5iFdaxyjkCE6kvyHXvRsL7sbacopZL6xV+qKGMoF5wXWomrSXwptLIN6FKkPyO7f/Nte6DTRxqVttWFyvstTbQqpr/6VjFkDceD8Kp1h29xpStJY/gCVJfG4i9xI4cMQp0AJBDTcTHXemKH6LPhwaOiI8jKZloR8quhvIZCpXVvlxosPerjuAdgaVf1GpeyO/ar5sEbpju0inDVCaQ1oYgM0347SVhdnWBRqHCrUbyTzEreLCYsaoQBOQiTwixtWukX/iuQHb8SqnLGS5R+JW+5lhU14Gr75F6idKALZnSQkbQt5hJYzGoQ2lx42trVhUBERd2ap8UuXehfVnh3zLwk0onGaEE16muSK/scEl+Zyc70qgknKiGTVUCQHslcwRcOFegzsLrYjiFxKpKu0OlTnZCoenE80zo/1CdHxSFIZvWIfmVkkJkoIRolTgGbLxEB8OhQg+tiKFPCqsqJQXVBU209oA8QKUJ9a+BR/teUZwOXvBGqDFWrPYDx+89va6o8RPhRzhTpS9ucSaeyKoyHg0si8FwBa5KC7EAtA9ZpW1RmJhXg/kkYU6mAnAEGqWvwOizII1AWZnNv/nAQjirSsc2y56pGq3zZw6rHCs8XMBkY2KUwAUVEHFFhLEattCgwMT4kz6A6l5yPzFrn74zrA8XOg9lVTloCkC2DFdNdqr7lhstLljQMkygAyP1hvaGF7ygX2UjfNE4BM2+zX8caGfjZaiwuTtmtaqMbWR1hYRgne7y5YKprIlJ2QO4ljTZYx+zWBdIwenuzPxlRgB2wIHOMa8VkHMCq2pvglnVlfIZFVxx/scknyhvACUm5zSLDPw844+lkFdjkTsIPo7GINOiZgbtABTkC2FV7X6AuhlalrDiLBwYEGAhaW8gFqHxMAlY/9OnyADMa4frCgUmJqZpazug6U0Iq2qFxsaGfl2JCDaRM/F/A7BwCK1HQPDCLOl3DxYetkrzlWuKiPoDBQ/0rKoJA2GlOEQVhJWs8lWYkaeZA499b0mITGKA6aFxRfdgYwr03Tr4p52th3ERPavqochGlrlVlYA5lVY6LVVig4xEElo0Nx2WbFHB2E08gE3iQJI9a4HlHhqw2qpltaougpkWY49VBraIbZWDZF4AWsEame2DYYtllvuHmA18L/mf3bhGK1haVhVJAjsw0xLL7iwWcTHWhwcwz54Wu0TCmk6vTVoRvCXG/IgIeu82GE9MW1kqAGgYtKyqVZMbPGM+D5GApSYYhR4hTLuaX5fsV6jbu1jvWaciM03XFP9lGe4CXaBnVT1tYmZV3H5lAVacjVO/B1OpRGkXM+5reZImZlJlF5hCRQT2gk0CrPe7sjCyjlVNMJI9ZLuFD4EJjvVA7RkXIdtucJe7DBVZ4OtkLSFxl4JFIHvlp/PiGGEas8r0RaQNtz6Yr9Oz7SgvKIIcV4B5hgzV1lBvZOWvWcJX4iwMHp4ErgJjTptjqC6A6TvrOkCYbkDQgu5tZFVFVLsDtfUx2FIUDt+PYJ6F3Wx1B2bwdaxqzEagwq3dQATCjkM6DLqlqB5O1ZHKVzTY2RUOfxrDwjDWngUxd18zOw9oiCVcyGcBR4PRgvNAdubCEbOuVBXHqlj8GA5jxCYwzZehY1Uzx2bpDNZ1ACgY7NUMh2GVhP0SqCzJUkOsrI6PhTJGLMMwKZsTBDgEwmWQr6TGSVlNpeo52QYvv4HCRClWVn0LxjSwfawuMqvBYlIsspo6LatbND21EeC7KFa76ocMdTufqKhryiCx2udrFQ0a42YOy6lBfaiia4qnsMqTfGzg6zrGqmY+GQIWy7FkNegAPqPKDqfygXkMPGlNZshrkm1EtobPIcvvtrdpuixnEqss3GZdB4hYlZq9Ctshkx+JBz3cQuPqZmJEoAaC4WS/sulFZTVHeYiOUpwdFf3sxMGa3+RglstqA6bX7Q6RS0E7ZslqDBHu/zb4+Y59HI8IJifWkXWduiKx2vz/NfdUuMBekfWyAxHM1bF1l0DikyWrbFzEkuDy3wTa9hxPEE0N5gTbOqBg1cGWVeYrWu5UOQtANRzpNFwC2ITZLr2vAHwBW1bZCmGEicR/H0ALv3U7WY/azW1gFqEtqyB93aoO5wIWS4xnZq4G6FGr3C0YHLNlFeS02i8ynAGAC/IG5+gjsImJTT4U2uxozaoXPDZ+87ncKcE8JmDuxldHTKKFPBDA/jGLIACKY1uzClIv7dd5QXGso+yXot4CLD4I5pHA3FpmukpQYIWaO9z4dBxrVuGClHE05EI8cgoEYN9a1RmBZcGA0QZSb40J8JTjAGwtNh3Z3NEQ9qwCi2O89vV+6+hxaWygONPT61KeVZAtR0p6Zd0B/Qcw5THUwT21boOZ54a589wlH/asQukydJhysk+DbWqGUchu+tZca1eWtMxb1h3wGxanFhyw32NQVQQFgbCOTQoVlpEisAo3YRmFInx3DR9DD0+EMZrx7ys8MYvoHa7GoIgZm0ai2sL0UQPfpn5cD+pLZRFYVqNNDMLJ0xFYhWro1kBjQKMEXwOGumqQZewPrjb9HdcXCkKtWa2QTILt7QaNL7KNb8IRCjvAVFa6HRLPUorCKrQD9F2gyLBnFD9MyJYS7hkiull5djdX6LMZxh6uEuzKGVFa6/DoM6nVgjlR1BCT5CTDKKwiyR8TB2wTnpKHDSg8bHJFlDx0ygXRwoE07dD5Pmsif65HzfjLqK5yDYsO/aOdjuiJpEZjFQ2tW5JlQ8cv8qMRenJVkm1FERVqSAY6BCHLXqCX+ThwASUmEkw0OkV6qVBGqEGh105sLYE04zEaqyV05ich59GDzwsJBmikUuZs6PAo+m5e2BN68wXGmdDD+Jy5aYgJ4rYJKMcs6qHQHYcV+Z1X0VjljvlRHCIcoI5zvUSdjS9vaIUY1wucmkiP8iDTPlb77yUQhpNsVeOumuhqFKbLXSOiyXfAi/WqSdAeF3ikzAIfICKrvP+V00wBSx5+VmaLuP1MulhkZo2fNZna4D7eKAYjEgRZ73K1VV7w55a5PCitVuN06lTFq3A1IBOxqKxyN4ikl2UFr6UcpyzkCtbDD41V9wVmuAcNs3342wLEIVGooHiNPO9Z2FQn23I1ELZGhhhh3lSOcyITmbxwH0+dGbDIrPK0brtI1jJhZ7cqHOXxDzYkPT4QMq0Nw1HCxVPjdaUYDCC3nm1z6aOKvhD3Ss5qw6Z/j3bBbQ7bouULjcSJibSTbr7oK4JCaVAW05ar9eg7MiDEO7Wq7SxqWU1smZoF8SKr5Sh7ERRXuu61xIRd47w88Sag7Wi/adXa7Vpfsj9E6bnJ71IbT2tbTGVXSJHqKt/4fNffFtq6kTpIV5kY9tkgyK91Wx1aJt+YpJvfyfcKr/qa4iwSAC9MLu3TuKLKK9cUGJN6VXpHggb7TM94WU01NXvKZAi5d+GSfi/fHldWpxjUiZempkNSlgpG+25qxPhX06gPDqokZlZTrtGWitCrOuVTaxWstxtRjwIIm4dXyAyYXKtLvwOxf5zTxc3q9i2yQltSomvKExsErCIco0j6yiz8Ay6RAfFSHB2466qUCFyU+FlNlYhHm+jm6gDS+5kl8CIlTZXCv9IgfYByBbn6GjkVKuEnK8Br5N6A1a2hImi0Db1l/EVwMjQiZw3xt9dxaJPrW2/otVXD6mTAgX4P6GoIZeRNWN22LERejU4LlARPMG7VGUAmKJZVXuzSM6qvm1eOw37WeqNb3VM62XxgoHhbPUASk6uk/d8s8hdLkutej2jlzbPMMkPlWJVfdWqHeq/Pe/Gzac5iq4lb2dzxFb0bKa7EIeNCVj0vjmOZ6SjlR0LLrjYV28TBTL4tDNZtcXHnIBfqg2Gu255ObmoNr1ep2xNRbOa3BV1Vq1ftbi7bjCezdFu9Xm7dmszG041XjlK9CCheZ+Ns2b642l11eTPyyvlmxEP2/gfqSAfeDQ92pwAAAABJRU5ErkJggg=="
      width="200
      px" height="100px">
      </center>
      </body>
    row: 0
    col: 18
    width: 6
    height: 3
  - title: Annual income study
    name: Annual income study
    model: example_test12
    explore: adheris_patient_data
    type: looker_boxplot
    fields: [adheris_patient_data.annual_inc, adheris_patient_data.count, adheris_patient_data.average_credit_card_number]
    sorts: [adheris_patient_data.annual_inc]
    limit: 50
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 33
    col: 0
    width: 24
    height: 7
  - title: Users Study
    name: Users Study
    model: example_test12
    explore: adheris_patient_data
    type: marketplace_viz_collapsible_tree::collapsible_tree-marketplace
    fields: [adheris_patient_data.email_address, adheris_patient_data.final_d, adheris_patient_data.gender,
      adheris_patient_data.id, adheris_patient_data.income_category, adheris_patient_data.loan_amount,
      adheris_patient_data.installment, adheris_patient_data.interest_payments, adheris_patient_data.interest_rate,
      adheris_patient_data.issue_d_date, adheris_patient_data.phone_no, adheris_patient_data.country]
    sorts: [adheris_patient_data.issue_d_date desc]
    limit: 20
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    color_with_children: "#4276BE"
    color_empty: "#E57947"
    defaults_version: 0
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 40
    col: 0
    width: 24
    height: 9
  - title: Credit Card & DTI Info
    name: Credit Card & DTI Info
    model: example_test12
    explore: adheris_patient_data
    type: custom_donut
    fields: [adheris_patient_data.dti, adheris_patient_data.average_credit_card_number,
      adheris_patient_data.count]
    sorts: [adheris_patient_data.dti]
    limit: 10
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    font_size: large
    defaults_version: 0
    show_value_labels: true
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 27
    col: 15
    width: 9
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Comparisons  KPIs","bold":true,"color":"hsl(244,
      100%, 50%)","underline":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 3
    width: 13
    height: 2
  - title: Patient Data
    name: Patient Data
    model: example_test12
    explore: adheris_patient_data
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [adheris_patient_data.email_address, adheris_patient_data.income_category,
      adheris_patient_data.installment, adheris_patient_data.phone_no, adheris_patient_data.count]
    sorts: [adheris_patient_data.count desc 0]
    limit: 20
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    defaults_version: 0
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 49
    col: 0
    width: 24
    height: 7
  - title: EmailID with Grade
    name: EmailID with Grade
    model: example_test12
    explore: adheris_patient_data
    type: looker_bar
    fields: [adheris_patient_data.email_address, adheris_patient_data.final_d, adheris_patient_data.grade,
      sample_test_pdt.annual_inc, sample_test_pdt.id]
    sorts: [adheris_patient_data.email_address]
    limit: 10
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    color_application:
      collection_id: new-custom-collection
      custom:
        id: f5134984-54f0-f920-7607-09af51725ae7
        label: Custom
        type: continuous
        stops:
        - color: "#4d79e6"
          offset: 0
        - color: "#FBB555"
          offset: 25
        - color: "#ffffff"
          offset: 50
        - color: "#3EB0D5"
          offset: 75
        - color: "#4276BE"
          offset: 100
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Approval Status: adheris_patient_data.approval_status
      Gender: adheris_patient_data.gender
      Email Address: adheris_patient_data.email_address
      Grade: adheris_patient_data.grade
      Application Type: adheris_patient_data.application_type
    row: 56
    col: 0
    width: 24
    height: 8
  filters:
  - name: Email Address
    title: Email Address
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: example_test12
    explore: adheris_patient_data
    listens_to_filters: []
    field: adheris_patient_data.email_address
  - name: Approval Status
    title: Approval Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: inline
      options:
      - '1'
      - '2'
      - '3'
    model: example_test12
    explore: adheris_patient_data
    listens_to_filters: []
    field: adheris_patient_data.approval_status
  - name: Gender
    title: Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: example_test12
    explore: adheris_patient_data
    listens_to_filters: []
    field: adheris_patient_data.gender
  - name: Grade
    title: Grade
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: popover
    model: example_test12
    explore: adheris_patient_data
    listens_to_filters: []
    field: adheris_patient_data.grade
  - name: Application Type
    title: Application Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: example_test12
    explore: adheris_patient_data
    listens_to_filters: []
    field: adheris_patient_data.application_type
