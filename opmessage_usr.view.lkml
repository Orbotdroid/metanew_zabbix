view: opmessage_usr {
  sql_table_name: zabbix.opmessage_usr ;;
  dimension: opmessage_usrid {
    primary_key: yes
    type: number
    sql: ${TABLE}.opmessage_usrid ;;
  }
  
  dimension: operationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.operationid ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [opmessage_usrid, operations.operationid, users.surname, users.name, users.userid]
  }
  
}

