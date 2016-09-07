view: slideshow_user {
  sql_table_name: zabbix.slideshow_user ;;
  dimension: permission {
    type: number
    sql: ${TABLE}.permission ;;
  }
  
  dimension: slideshowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.slideshowid ;;
  }
  
  dimension: slideshowuserid {
    type: number
    value_format_name: id
    sql: ${TABLE}.slideshowuserid ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [slideshows.slideshowid, slideshows.name, users.surname, users.name, users.userid]
  }
  
}

