view: opconditions {
  sql_table_name: zabbix.opconditions ;;
  dimension: opconditionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.opconditionid ;;
  }
  
  dimension: conditiontype {
    type: number
    sql: ${TABLE}.conditiontype ;;
  }
  
  dimension: operationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.operationid ;;
  }
  
  dimension: operator {
    type: number
    sql: ${TABLE}.operator ;;
  }
  
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  
  measure: count {
    type: count
    drill_fields: [opconditionid, operations.operationid]
  }
  
}

