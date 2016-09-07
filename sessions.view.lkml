view: sessions {
  sql_table_name: zabbix.sessions ;;
  dimension: sessionid {
    primary_key: yes
    type: string
    sql: ${TABLE}.sessionid ;;
  }
  
  dimension: lastaccess {
    type: number
    sql: ${TABLE}.lastaccess ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [sessionid, users.surname, users.name, users.userid]
  }
  
}

