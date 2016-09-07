view: housekeeper {
  sql_table_name: zabbix.housekeeper ;;
  dimension: housekeeperid {
    primary_key: yes
    type: number
    sql: ${TABLE}.housekeeperid ;;
  }
  
  dimension: field {
    type: string
    sql: ${TABLE}.field ;;
  }
  
  dimension: tablename {
    type: string
    sql: ${TABLE}.tablename ;;
  }
  
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  
  measure: count {
    type: count
    drill_fields: [housekeeperid, tablename]
  }
  
}

