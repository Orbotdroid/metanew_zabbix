view: proxy_dhistory {
  sql_table_name: zabbix.proxy_dhistory ;;
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  
  dimension: clock {
    type: number
    sql: ${TABLE}.clock ;;
  }
  
  dimension: dcheckid {
    type: number
    value_format_name: id
    sql: ${TABLE}.dcheckid ;;
  }
  
  dimension: dns {
    type: string
    sql: ${TABLE}.dns ;;
  }
  
  dimension: druleid {
    type: number
    value_format_name: id
    sql: ${TABLE}.druleid ;;
  }
  
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  
  dimension: key_ {
    type: string
    sql: ${TABLE}.key_ ;;
  }
  
  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [id, drules.druleid, drules.name, dchecks.dcheckid, dchecks.snmpv3_securityname, dchecks.snmpv3_contextname]
  }
  
}

