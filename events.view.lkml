view: events {
  sql_table_name: zabbix.events ;;
  dimension: eventid {
    primary_key: yes
    type: number
    sql: ${TABLE}.eventid ;;
  }

  dimension: acknowledged {
    type: number
    sql: ${TABLE}.acknowledged ;;
  }

  dimension_group: clock {
    label: ""
    type: time
    datatype: epoch
    timeframes: [time,hour_of_day,time_of_day,date,day_of_week,year]
    sql: ${TABLE}.clock ;;
  }

  dimension: ns {
    type: number
    sql: ${TABLE}.ns ;;
  }

  dimension: object {
    type: number
    sql: ${TABLE}.object ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.objectid ;;
  }

  dimension: source {
    type: number
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [eventid, acknowledges.count, alerts.count, escalations.count]
  }

}
