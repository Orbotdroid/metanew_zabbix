view: httptest {
  sql_table_name: zabbix.httptest ;;
  dimension: httptestid {
    primary_key: yes
    type: number
    sql: ${TABLE}.httptestid ;;
  }
  
  dimension: agent {
    type: string
    sql: ${TABLE}.agent ;;
  }
  
  dimension: applicationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.applicationid ;;
  }
  
  dimension: authentication {
    type: number
    sql: ${TABLE}.authentication ;;
  }
  
  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }
  
  dimension: headers {
    type: string
    sql: ${TABLE}.headers ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: http_password {
    type: string
    sql: ${TABLE}.http_password ;;
  }
  
  dimension: http_proxy {
    type: string
    sql: ${TABLE}.http_proxy ;;
  }
  
  dimension: http_user {
    type: string
    sql: ${TABLE}.http_user ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: nextcheck {
    type: number
    sql: ${TABLE}.nextcheck ;;
  }
  
  dimension: retries {
    type: number
    sql: ${TABLE}.retries ;;
  }
  
  dimension: ssl_cert_file {
    type: string
    sql: ${TABLE}.ssl_cert_file ;;
  }
  
  dimension: ssl_key_file {
    type: string
    sql: ${TABLE}.ssl_key_file ;;
  }
  
  dimension: ssl_key_password {
    type: string
    sql: ${TABLE}.ssl_key_password ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  dimension: templateid {
    type: number
    value_format_name: id
    sql: ${TABLE}.templateid ;;
  }
  
  dimension: variables {
    type: string
    sql: ${TABLE}.variables ;;
  }
  
  dimension: verify_host {
    type: number
    sql: ${TABLE}.verify_host ;;
  }
  
  dimension: verify_peer {
    type: number
    sql: ${TABLE}.verify_peer ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [httptestid, name, applications.applicationid, applications.name, hosts.proxy_hostid, hosts.ipmi_username, hosts.name, httpstep.count, httptestitem.count]
  }
  
}

