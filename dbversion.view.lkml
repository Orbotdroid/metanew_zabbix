view: dbversion {
  sql_table_name: zabbix.dbversion ;;
  dimension: mandatory {
    type: number
    sql: ${TABLE}.mandatory ;;
  }
  
  dimension: optional {
    type: number
    sql: ${TABLE}.optional ;;
  }
  
  measure: count {
    type: count
    drill_fields: []
  }
  
}

