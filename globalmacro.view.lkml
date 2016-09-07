view: globalmacro {
  sql_table_name: zabbix.globalmacro ;;
  dimension: globalmacroid {
    primary_key: yes
    type: number
    sql: ${TABLE}.globalmacroid ;;
  }
  
  dimension: macro {
    type: string
    sql: ${TABLE}.macro ;;
  }
  
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  
  measure: count {
    type: count
    drill_fields: [globalmacroid]
  }
  
}

