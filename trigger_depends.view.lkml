view: trigger_depends {
  sql_table_name: zabbix.trigger_depends ;;
  dimension: triggerdepid {
    type: number
    value_format_name: id
    sql: ${TABLE}.triggerdepid ;;
  }
  
  dimension: triggerid_down {
    type: number
    sql: ${TABLE}.triggerid_down ;;
  }
  
  dimension: triggerid_up {
    type: number
    sql: ${TABLE}.triggerid_up ;;
  }
  
  measure: count {
    type: count
    drill_fields: []
  }
  
}

