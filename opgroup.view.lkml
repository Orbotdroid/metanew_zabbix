view: opgroup {
  sql_table_name: zabbix.opgroup ;;
  dimension: opgroupid {
    primary_key: yes
    type: number
    sql: ${TABLE}.opgroupid ;;
  }
  
  dimension: groupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.groupid ;;
  }
  
  dimension: operationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.operationid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [opgroupid, operations.operationid, groups.groupid, groups.name]
  }
  
}

