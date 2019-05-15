view: trigger_discovery {
  sql_table_name: zabbix.trigger_discovery ;;
  dimension: parent_triggerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parent_triggerid ;;
  }
  
  dimension: triggerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.triggerid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [triggers.triggerid]
  }
  
}

