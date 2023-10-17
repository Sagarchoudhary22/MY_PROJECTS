# The name of this view in Looker is "Car Data"


view: car_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.CAR DATA` ;;
  drill_fields: [id]


  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.
  dimension: view_HTML {
    sql: 'https://somedomain.com/123456.html' ;;
    html: <a target="_blank" href="{{https://sagarchoudhary2000.github.io/sagarchoudhary.github.io/}}" >View HTML</a> ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ad_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ad_created_on ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Assured Buy" in Explore.

  dimension: assured_buy {
    type: yesno
    sql: ${TABLE}.assured_buy ;;
  }

  dimension: body_type {
    type: string
    sql: ${TABLE}.body_type ;;
  }

  dimension: looker_image {
    type: string
    sql: ${TABLE}.car_availability ;;
    html: <img src="data:image/png;base64,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" /> ;;
  }

  dimension: booking_down_pymnt {
    type: number
    sql: ${TABLE}.booking_down_pymnt ;;
  }

  dimension: broker_quote {
    type: number
    sql: ${TABLE}.broker_quote ;;
  }

  dimension: car_availability {
    sql: ${TABLE}.car_availability ;;
    html: {% if value == 'in_stock' or value == 'Complete' %}
          <p><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk2dqoJL0YicEz3Yft5v5FE-RTjPFO8iEe0A&usqp=CAU" height=0.2 width=0.2{{ rendered_value }}</p>
      {% elsif value == 'in_transit' %}
        <p><img src="https://findicons.com/files/icons/1681/siena/128/clock_blue.png" height=0.2 width=0.2>{{ rendered_value }}</p>
      {% elsif value == 'out_of_stock' %}
        <p><img src="https://findicons.com/files/icons/1681/siena/128/clock_blue.png" height=0.2 width=0.2>{{ rendered_value }}</p>
      {% endif %} ;;
  }


#   dimension: car_availability {
#     sql: ${TABLE}.car_availability ;;
#     html: {% if value == 'in_stock' or value == 'Complete' %}
#           <p><img src="✅" height=0.2 width=0.2{{ rendered_value }}</p>
#       {% elsif value == 'in_transit' %}
#         <p><img src="https://findicons.com/files/icons/1681/siena/128/clock_blue.png" height=0.2 width=0.2>{{ rendered_value }}</p>
#       {% elsif value == 'out_of_stock' %}
#         <p><img src="https://findicons.com/files/icons/1681/siena/128/clock_blue.png" height=0.2 width=0.2>{{ rendered_value }}</p>
#       {% else %}
#         <p><img src="data:image/jpeg;base64,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" height=0.2 width=0.2>{{ rendered_value }}</p>
#       {% endif %}
# ;;
#   }

  # dimension: car_availability {
  #   type: string
  #   sql: ${TABLE}.car_availability ;;
  # }

  dimension: car_name {
    type: string
    sql: ${TABLE}.car_name ;;
  }

  dimension: car_rating {
    type: string
    sql: ${TABLE}.car_rating ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: emi_starts_from {
    type: number
    sql: ${TABLE}.emi_starts_from ;;
  }

  dimension: fitness_certificate {
    type: yesno
    sql: ${TABLE}.fitness_certificate ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.fuel_type ;;
  }

  dimension: is_hot {
    type: yesno
    sql: ${TABLE}.is_hot ;;
  }

  dimension: kms_run {
    type: number
    sql: ${TABLE}.kms_run ;;
  }

  measure: kms_run1 {
    type: sum
    sql: ${TABLE}.kms_run1 ;;
    drill_fields: [kms_run]
  }

  dimension: make {
    type: string
    sql: ${TABLE}.make ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
    drill_fields: [model,car_name]
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_original_price {
    type: sum
    sql: ${original_price} ;;  }
  measure: average_original_price {
    type: average
    sql: ${original_price} ;;  }

  dimension: registered_city {
    type: string
    sql: ${TABLE}.registered_city ;;
  }

  dimension: registered_state {
    type: string
    sql: ${TABLE}.registered_state ;;
  }

  dimension: reserved {
    type: yesno
    sql: ${TABLE}.reserved ;;
  }

  dimension: rto {
    type: string
    sql: ${TABLE}.rto ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: times_viewed {
    type: number
    sql: ${TABLE}.times_viewed ;;
  }

  dimension: total_owners {
    type: number
    sql: ${TABLE}.total_owners ;;
  }

  dimension: transmission {
    type: string
    sql: ${TABLE}.transmission ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}.variant ;;
  }

  dimension: warranty_avail {
    type: yesno
    sql: ${TABLE}.warranty_avail ;;
  }

  dimension: yr_mfr {
    type: number
    sql: ${TABLE}.yr_mfr ;;
  }

  # parameter: Liquid_Parameters {
  #   type: unquoted
  #   allowed_value: {
  #     label: "Car Type"
  #     value: "warranty_avail"
  #   }
  #   allowed_value: {
  #     label: "Car Model"
  #     value: "model"
  #   }
  # }
  # measure: dynamic {
  #   type: number
  #   sql: {% if Liquid_Parameters._parameter_value == "Warranty_avail" %}
  #   sum(${warranty_avail});;
  # }

  measure: count {
    type: count
    drill_fields: [id, car_name]
  }

    dimension: custom_html {
    type: string
    html: <div id="https://searcepartner.cloud.looker.com/looks/228"> </div>;;
      label: "Custom HTML Parameter"
    }
  }
