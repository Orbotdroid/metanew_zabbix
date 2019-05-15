view: services_times {
  sql_table_name: zabbix.services_times ;;
  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }
  
  dimension: serviceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.serviceid ;;
  }
  
  dimension: timeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.timeid ;;
  }
  
  dimension: ts_from {
    type: number
    sql: ${TABLE}.ts_from ;;
  }
  
  dimension: ts_to {
    type: number
    sql: ${TABLE}.ts_to ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  measure: count {
    type: count
    drill_fields: [services.serviceid, services.name]
  }
  
}

