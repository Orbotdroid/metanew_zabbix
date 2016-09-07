view: slides {
  sql_table_name: zabbix.slides ;;
  dimension: slideid {
    primary_key: yes
    type: number
    sql: ${TABLE}.slideid ;;
  }
  
  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }
  
  dimension: screenid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screenid ;;
  }
  
  dimension: slideshowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.slideshowid ;;
  }
  
  dimension: step {
    type: number
    sql: ${TABLE}.step ;;
  }
  
  measure: count {
    type: count
    drill_fields: [slideid, slideshows.slideshowid, slideshows.name, screens.screenid, screens.name]
  }
  
}

