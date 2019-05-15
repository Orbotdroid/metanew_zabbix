view: scripts {
  sql_table_name: zabbix.scripts ;;
  dimension: scriptid {
    primary_key: yes
    type: number
    sql: ${TABLE}.scriptid ;;
  }
  
  dimension: command {
    type: string
    sql: ${TABLE}.command ;;
  }
  
  dimension: confirmation {
    type: string
    sql: ${TABLE}.confirmation ;;
  }
  
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  
  dimension: execute_on {
    type: number
    sql: ${TABLE}.execute_on ;;
  }
  
  dimension: groupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.groupid ;;
  }
  
  dimension: host_access {
    type: number
    sql: ${TABLE}.host_access ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: usrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.usrgrpid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [scriptid, name, usrgrp.usrgrpid, usrgrp.name, groups.groupid, groups.name, opcommand.count]
  }
  
}

