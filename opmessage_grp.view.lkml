view: opmessage_grp {
  sql_table_name: zabbix.opmessage_grp ;;
  dimension: opmessage_grpid {
    primary_key: yes
    type: number
    sql: ${TABLE}.opmessage_grpid ;;
  }
  
  dimension: operationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.operationid ;;
  }
  
  dimension: usrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.usrgrpid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [opmessage_grpid, operations.operationid, usrgrp.usrgrpid, usrgrp.name]
  }
  
}

