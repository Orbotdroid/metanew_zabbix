view: interface_discovery {
  sql_table_name: zabbix.interface_discovery ;;
  dimension: interfaceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.interfaceid ;;
  }
  
  dimension: parent_interfaceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parent_interfaceid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [interface.interfaceid]
  }
  
}

