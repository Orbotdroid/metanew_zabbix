view: screen_usrgrp {
  sql_table_name: zabbix.screen_usrgrp ;;
  dimension: permission {
    type: number
    sql: ${TABLE}.permission ;;
  }
  
  dimension: screenid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screenid ;;
  }
  
  dimension: screenusrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screenusrgrpid ;;
  }
  
  dimension: usrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.usrgrpid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [screens.screenid, screens.name, usrgrp.usrgrpid, usrgrp.name]
  }
  
}

