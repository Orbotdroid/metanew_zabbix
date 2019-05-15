view: sysmaps {
  sql_table_name: zabbix.sysmaps ;;
  dimension: sysmapid {
    primary_key: yes
    type: number
    sql: ${TABLE}.sysmapid ;;
  }
  
  dimension: backgroundid {
    type: number
    value_format_name: id
    sql: ${TABLE}.backgroundid ;;
  }
  
  dimension: expand_macros {
    type: number
    sql: ${TABLE}.expand_macros ;;
  }
  
  dimension: expandproblem {
    type: number
    sql: ${TABLE}.expandproblem ;;
  }
  
  dimension: grid_align {
    type: number
    sql: ${TABLE}.grid_align ;;
  }
  
  dimension: grid_show {
    type: number
    sql: ${TABLE}.grid_show ;;
  }
  
  dimension: grid_size {
    type: number
    sql: ${TABLE}.grid_size ;;
  }
  
  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }
  
  dimension: highlight {
    type: number
    sql: ${TABLE}.highlight ;;
  }
  
  dimension: iconmapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.iconmapid ;;
  }
  
  dimension: label_format {
    type: number
    sql: ${TABLE}.label_format ;;
  }
  
  dimension: label_location {
    type: number
    sql: ${TABLE}.label_location ;;
  }
  
  dimension: label_string_host {
    type: string
    sql: ${TABLE}.label_string_host ;;
  }
  
  dimension: label_string_hostgroup {
    type: string
    sql: ${TABLE}.label_string_hostgroup ;;
  }
  
  dimension: label_string_image {
    type: string
    sql: ${TABLE}.label_string_image ;;
  }
  
  dimension: label_string_map {
    type: string
    sql: ${TABLE}.label_string_map ;;
  }
  
  dimension: label_string_trigger {
    type: string
    sql: ${TABLE}.label_string_trigger ;;
  }
  
  dimension: label_type {
    type: number
    sql: ${TABLE}.label_type ;;
  }
  
  dimension: label_type_host {
    type: number
    sql: ${TABLE}.label_type_host ;;
  }
  
  dimension: label_type_hostgroup {
    type: number
    sql: ${TABLE}.label_type_hostgroup ;;
  }
  
  dimension: label_type_image {
    type: number
    sql: ${TABLE}.label_type_image ;;
  }
  
  dimension: label_type_map {
    type: number
    sql: ${TABLE}.label_type_map ;;
  }
  
  dimension: label_type_trigger {
    type: number
    sql: ${TABLE}.label_type_trigger ;;
  }
  
  dimension: markelements {
    type: number
    sql: ${TABLE}.markelements ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: private {
    type: number
    sql: ${TABLE}.private ;;
  }
  
  dimension: severity_min {
    type: number
    sql: ${TABLE}.severity_min ;;
  }
  
  dimension: show_unack {
    type: number
    sql: ${TABLE}.show_unack ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  dimension: width {
    type: number
    sql: ${TABLE}.width ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [sysmapid, name, users.surname, users.name, users.userid, sysmaps_elements.count, sysmaps_links.count, sysmap_url.count, sysmap_user.count, sysmap_usrgrp.count]
  }
  
}

