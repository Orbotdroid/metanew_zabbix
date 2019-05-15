view: opinventory {
  sql_table_name: zabbix.opinventory ;;
  dimension: inventory_mode {
    type: number
    sql: ${TABLE}.inventory_mode ;;
  }
  
  dimension: operationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.operationid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [operations.operationid]
  }
  
}

