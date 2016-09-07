view: screen_user {
  sql_table_name: zabbix.screen_user ;;
  dimension: permission {
    type: number
    sql: ${TABLE}.permission ;;
  }
  
  dimension: screenid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screenid ;;
  }
  
  dimension: screenuserid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screenuserid ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [screens.screenid, screens.name, users.surname, users.name, users.userid]
  }
  
}

