view: f_depositor_tranche_balance_daily {
  sql_table_name: DW_DEPOSIT_SOLUTIONS.F_DEPOSITOR_TRANCHE_BALANCE_DAILY ;;

  dimension: booking_amount {
    type: string
    sql: ${TABLE}."BOOKING_AMOUNT" ;;
  }

  measure: total_bookings {
    type: sum
    sql: ${booking_amount} ;;
  }

  dimension_group: calendar {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_num,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CALENDAR_DATE" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."CHANNEL" ;;
  }

  dimension: cia_id {
    type: string
    sql: ${TABLE}."CIA_ID" ;;
  }

  dimension: cumulative_balance_amount {
    type: string
    sql: ${TABLE}."CUMULATIVE_BALANCE_AMOUNT" ;;
  }

  dimension: daily_fee {
    type: string
    sql: ${TABLE}."DAILY_FEE" ;;
  }

  dimension: deposit_type {
    type: string
    sql: ${TABLE}."DEPOSIT_TYPE" ;;
  }

  dimension: depositor_id {
    type: string
    sql: ${TABLE}."DEPOSITOR_ID" ;;
  }

  dimension: depositor_key {
    type: string
    sql: ${TABLE}."DEPOSITOR_KEY" ;;
  }

  dimension: depositornumber {
    type: string
    sql: ${TABLE}."DEPOSITORNUMBER" ;;
  }

  dimension: fee_rate {
    type: string
    sql: ${TABLE}."FEE_RATE" ;;
  }

  measure: avg_fee_rate {
    label: "Average Fee Rate"
    type: average
    description: "This is the average fee rate"
    sql: ${fee_rate} ;;
  }

  dimension: invoice_amount {
    type: string
    sql: ${TABLE}."INVOICE_AMOUNT" ;;
  }

  dimension: maturity_code {
    type: string
    sql: ${TABLE}."MATURITY_CODE" ;;
  }

  dimension: product_bank_bic {
    type: string
    sql: ${TABLE}."PRODUCT_BANK_BIC" ;;
  }

  dimension: product_bank_id {
    type: string
    sql: ${TABLE}."PRODUCT_BANK_ID" ;;
  }

  dimension: product_bank_key {
    type: string
    sql: ${TABLE}."PRODUCT_BANK_KEY" ;;
  }

  dimension: product_bank_name {
    type: string
    sql: ${TABLE}."PRODUCT_BANK_NAME" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_key {
    type: string
    sql: ${TABLE}."PRODUCT_KEY" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}."ROW_ID" ;;
  }

  dimension: row_key {
    type: string
    sql: ${TABLE}."ROW_KEY" ;;
  }

  dimension: service_bank_bic {
    type: string
    sql: ${TABLE}."SERVICE_BANK_BIC" ;;
  }

  dimension: service_bank_id {
    type: string
    sql: ${TABLE}."SERVICE_BANK_ID" ;;
  }

  dimension: service_bank_key {
    type: string
    sql: ${TABLE}."SERVICE_BANK_KEY" ;;
  }

  dimension: service_bank_name {
    type: string
    sql: ${TABLE}."SERVICE_BANK_NAME" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  dimension_group: tranche_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."TRANCHE_END_DATE" ;;
  }

  dimension: tranche_id {
    type: string
    sql: ${TABLE}."TRANCHE_ID" ;;
  }

  dimension: tranche_key {
    type: string
    sql: ${TABLE}."TRANCHE_KEY" ;;
  }

  dimension: tranche_name {
    type: string
    sql: ${TABLE}."TRANCHE_NAME" ;;
  }

  dimension_group: tranche_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."TRANCHE_START_DATE" ;;
  }

  dimension_group: wh_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."WH_CREATED_DATE" ;;
  }

  dimension_group: wh_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."WH_UPDATED_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [tranche_name, product_name, product_bank_name, service_bank_name]
  }
}
