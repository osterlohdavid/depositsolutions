view: d_calendar_date {
  sql_table_name: DW_DEPOSIT_SOLUTIONS.D_CALENDAR_DATE ;;

  dimension_group: dates {
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
    sql: ${TABLE}."DATES" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
