view: l_fee_rates_master {
  sql_table_name: DW_DEPOSIT_SOLUTIONS.L_FEE_RATES_MASTER ;;

  dimension: bic {
    type: string
    sql: ${TABLE}."BIC" ;;
  }

  dimension: calculation_method {
    type: string
    sql: ${TABLE}."CALCULATION_METHOD" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."CHANNEL" ;;
  }

  dimension: fee_rate_pa_pct {
    type: string
    sql: ${TABLE}."FEE_RATE_PA_PCT" ;;
  }

  dimension: first_day {
    type: yesno
    sql: ${TABLE}."FIRST_DAY" ;;
  }

  dimension: invoicing_method {
    type: string
    sql: ${TABLE}."INVOICING_METHOD" ;;
  }

  dimension: invoicing_pct {
    type: string
    sql: ${TABLE}."INVOICING_PCT" ;;
  }

  dimension: is_blended {
    type: yesno
    sql: ${TABLE}."IS_BLENDED" ;;
  }

  dimension: last_day {
    type: yesno
    sql: ${TABLE}."LAST_DAY" ;;
  }

  dimension: maturity_code {
    type: string
    sql: ${TABLE}."MATURITY_CODE" ;;
  }

  dimension_group: valid_from {
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
    sql: ${TABLE}."VALID_FROM" ;;
  }

  dimension_group: valid_to {
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
    sql: ${TABLE}."VALID_TO" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
