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
    label: "time"
    type: time
    datatype: epoch
    timeframes: [time,hour_of_day,time_of_day,date,day_of_week,week,month,year]
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

  dimension: count_coalesce {
    hidden: yes
    label: "Coalesce Count"
    type: number
    sql: COALESCE(${count},0) ;;
    drill_fields: [ hosts.name, clock_time ]
  }

  measure: count {
    type: count
    drill_fields: [ hosts.name, clock_time ]
  }




#   measure: stability_metric {
#     description: "Total crashes divided by number of hosts"
#     sql: ${count}/${hosts.count} ;;
#     value_format_name: percent_2
#   }

}
