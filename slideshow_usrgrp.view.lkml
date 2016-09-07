view: slideshow_usrgrp {
  sql_table_name: zabbix.slideshow_usrgrp ;;
  dimension: permission {
    type: number
    sql: ${TABLE}.permission ;;
  }
  
  dimension: slideshowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.slideshowid ;;
  }
  
  dimension: slideshowusrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.slideshowusrgrpid ;;
  }
  
  dimension: usrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.usrgrpid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [slideshows.slideshowid, slideshows.name, usrgrp.usrgrpid, usrgrp.name]
  }
  
}

