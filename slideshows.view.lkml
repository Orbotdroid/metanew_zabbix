view: slideshows {
  sql_table_name: zabbix.slideshows ;;
  dimension: slideshowid {
    primary_key: yes
    type: number
    sql: ${TABLE}.slideshowid ;;
  }
  
  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: private {
    type: number
    sql: ${TABLE}.private ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [slideshowid, name, users.surname, users.name, users.userid, slides.count, slideshow_user.count, slideshow_usrgrp.count]
  }
  
}

