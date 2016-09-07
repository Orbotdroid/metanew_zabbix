view: triggers {
  sql_table_name: zabbix.triggers ;;
  dimension: triggerid {
    primary_key: yes
    type: number
    sql: ${TABLE}.triggerid ;;
  }
  
  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }
  
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  
  dimension: expression {
    type: string
    sql: ${TABLE}.expression ;;
  }
  
  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }
  
  dimension: lastchange {
    type: number
    sql: ${TABLE}.lastchange ;;
  }
  
  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }
  
  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
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
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [triggerid, escalations.count, functions.count, services.count, sysmaps_link_triggers.count, trigger_discovery.count]
  }
  
}

