view: optemplate {
  sql_table_name: zabbix.optemplate ;;
  dimension: optemplateid {
    primary_key: yes
    type: number
    sql: ${TABLE}.optemplateid ;;
  }
  
  dimension: operationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.operationid ;;
  }
  
  dimension: templateid {
    type: number
    value_format_name: id
    sql: ${TABLE}.templateid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [optemplateid, operations.operationid]
  }
  
}

