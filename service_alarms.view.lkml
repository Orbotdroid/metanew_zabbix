view: service_alarms {
  sql_table_name: zabbix.service_alarms ;;
  dimension: clock {
    type: number
    sql: ${TABLE}.clock ;;
  }
  
  dimension: servicealarmid {
    type: number
    value_format_name: id
    sql: ${TABLE}.servicealarmid ;;
  }
  
  dimension: serviceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.serviceid ;;
  }
  
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  
  measure: count {
    type: count
    drill_fields: [services.serviceid, services.name]
  }
  
}

