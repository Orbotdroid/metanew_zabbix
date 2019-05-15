view: opcommand_grp {
  sql_table_name: zabbix.opcommand_grp ;;
  dimension: opcommand_grpid {
    primary_key: yes
    type: number
    sql: ${TABLE}.opcommand_grpid ;;
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
    drill_fields: [opcommand_grpid, operations.operationid, groups.groupid, groups.name]
  }
  
}

