view: sysmap_usrgrp {
  sql_table_name: zabbix.sysmap_usrgrp ;;
  dimension: permission {
    type: number
    sql: ${TABLE}.permission ;;
  }
  
  dimension: sysmapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sysmapid ;;
  }
  
  dimension: sysmapusrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sysmapusrgrpid ;;
  }
  
  dimension: usrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.usrgrpid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [sysmaps.sysmapid, sysmaps.name, usrgrp.usrgrpid, usrgrp.name]
  }
  
}

