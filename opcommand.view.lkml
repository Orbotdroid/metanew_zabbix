view: opcommand {
  sql_table_name: zabbix.opcommand ;;
  dimension: authtype {
    type: number
    sql: ${TABLE}.authtype ;;
  }
  
  dimension: command {
    type: string
    sql: ${TABLE}.command ;;
  }
  
  dimension: execute_on {
    type: number
    sql: ${TABLE}.execute_on ;;
  }
  
  dimension: operationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.operationid ;;
  }
  
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  
  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }
  
  dimension: privatekey {
    type: string
    sql: ${TABLE}.privatekey ;;
  }
  
  dimension: publickey {
    type: string
    sql: ${TABLE}.publickey ;;
  }
  
  dimension: scriptid {
    type: number
    value_format_name: id
    sql: ${TABLE}.scriptid ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }
  
  measure: count {
    type: count
    drill_fields: [username, operations.operationid, scripts.scriptid, scripts.name]
  }
  
}

