view: opmessage {
  sql_table_name: zabbix.opmessage ;;
  dimension: default_msg {
    type: number
    sql: ${TABLE}.default_msg ;;
  }
  
  dimension: mediatypeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mediatypeid ;;
  }
  
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  
  dimension: operationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.operationid ;;
  }
  
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  
  measure: count {
    type: count
    drill_fields: [operations.operationid]
  }
  
}

