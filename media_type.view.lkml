view: media_type {
  sql_table_name: zabbix.media_type ;;
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  
  dimension: exec_params {
    type: string
    sql: ${TABLE}.exec_params ;;
  }
  
  dimension: exec_path {
    type: string
    sql: ${TABLE}.exec_path ;;
  }
  
  dimension: gsm_modem {
    type: string
    sql: ${TABLE}.gsm_modem ;;
  }
  
  dimension: mediatypeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mediatypeid ;;
  }
  
  dimension: passwd {
    type: string
    sql: ${TABLE}.passwd ;;
  }
  
  dimension: smtp_authentication {
    type: number
    sql: ${TABLE}.smtp_authentication ;;
  }
  
  dimension: smtp_email {
    type: string
    sql: ${TABLE}.smtp_email ;;
  }
  
  dimension: smtp_helo {
    type: string
    sql: ${TABLE}.smtp_helo ;;
  }
  
  dimension: smtp_port {
    type: number
    sql: ${TABLE}.smtp_port ;;
  }
  
  dimension: smtp_security {
    type: number
    sql: ${TABLE}.smtp_security ;;
  }
  
  dimension: smtp_server {
    type: string
    sql: ${TABLE}.smtp_server ;;
  }
  
  dimension: smtp_verify_host {
    type: number
    sql: ${TABLE}.smtp_verify_host ;;
  }
  
  dimension: smtp_verify_peer {
    type: number
    sql: ${TABLE}.smtp_verify_peer ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
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
    drill_fields: [username]
  }
  
}

