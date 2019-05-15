view: usrgrp {
  sql_table_name: zabbix.usrgrp ;;
  dimension: usrgrpid {
    primary_key: yes
    type: number
    sql: ${TABLE}.usrgrpid ;;
  }
  
  dimension: debug_mode {
    type: number
    sql: ${TABLE}.debug_mode ;;
  }
  
  dimension: gui_access {
    type: number
    sql: ${TABLE}.gui_access ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: users_status {
    type: number
    sql: ${TABLE}.users_status ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [usrgrpid, name, opmessage_grp.count, screen_usrgrp.count, scripts.count, slideshow_usrgrp.count, sysmap_usrgrp.count, users_groups.count]
  }
  
}

