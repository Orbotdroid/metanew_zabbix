view: users_groups {
  sql_table_name: zabbix.users_groups ;;
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  dimension: usrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.usrgrpid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [id, users.surname, users.name, users.userid, usrgrp.usrgrpid, usrgrp.name]
  }
  
}

