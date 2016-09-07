view: screens {
  sql_table_name: zabbix.screens ;;
  dimension: screenid {
    primary_key: yes
    type: number
    sql: ${TABLE}.screenid ;;
  }
  
  dimension: hsize {
    type: number
    sql: ${TABLE}.hsize ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: private {
    type: number
    sql: ${TABLE}.private ;;
  }
  
  dimension: templateid {
    type: number
    value_format_name: id
    sql: ${TABLE}.templateid ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  dimension: vsize {
    type: number
    sql: ${TABLE}.vsize ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [screenid, name, users.surname, users.name, users.userid, screens_items.count, screen_user.count, screen_usrgrp.count, slides.count]
  }
  
}

