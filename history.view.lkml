view: history {
  sql_table_name: zabbix.history ;;
#   dimension: clock {
#     type: number
#     sql: ${TABLE}.clock ;;
#   }

  dimension_group: clock {
    type: time
    timeframes: [time,hour,date,day_of_week,month,quarter]
  }

  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }

  dimension: ns {
    type: number
    sql: ${TABLE}.ns ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }

}
