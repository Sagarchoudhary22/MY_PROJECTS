view: sql_drived {
derived_table: {
  sql: SELECT id,fuel_type,kms_run, sale_price, city from `searce-practice-data-analytics.sagar_choudhary.CAR DATA`;;
}
dimension: id {
  type: number
  sql: ${TABLE}.id ;;
}

dimension: fuel_type {
  type: string
  sql:${TABLE}.fuel_type ;;
  }
  dimension: kms_run {
    type: number
    sql:${TABLE}.kms_run ;;
  }

  measure: kms_run1 {
    type: sum
    sql:${TABLE}.kms_run ;;
  }

  dimension: sale_price {
    type:number
    sql:${TABLE}.sale_price ;;
    }
}

# view: customer_order_summary {
#   derived_table: {
#     sql:
#       SELECT
#         customer_id,
#         MIN(DATE(time)) AS first_order,
#         SUM(amount) AS total_amount
#       FROM
#         orders
#       GROUP BY
#         customer_id ;;
#   }
#   dimension: customer_id {
#     type: number
#     primary_key: yes
#     sql: ${TABLE}.customer_id ;;
#   }
#   dimension_group: first_order {
#     type: time
#     timeframes: [date, week, month]
#     sql: ${TABLE}.first_order ;;
#   }
#   dimension: total_amount {
#     type: number
#     value_format: "0.00"
#     sql: ${TABLE}.total_amount ;;
#   }
# }
