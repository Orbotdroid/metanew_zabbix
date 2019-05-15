view: proxy_history {
  sql_table_name: zabbix.proxy_history ;;
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  
  dimension: clock {
    type: number
    sql: ${TABLE}.clock ;;
  }
  
  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }
  
  dimension: lastlogsize {
    type: number
    sql: ${TABLE}.lastlogsize ;;
  }
  
  dimension: logeventid {
    type: number
    value_format_name: id
    sql: ${TABLE}.logeventid ;;
  }
  
  dimension: mtime {
    type: number
    sql: ${TABLE}.mtime ;;
  }
  
  dimension: ns {
    type: number
    sql: ${TABLE}.ns ;;
  }
  
  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }
  
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  
  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
  }
  
  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
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
    fields: [id, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

