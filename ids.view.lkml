view: ids {
  sql_table_name: zabbix.ids ;;
  dimension: field_name {
    type: string
    sql: ${TABLE}.field_name ;;
  }
  
  dimension: nextid {
    type: number
    value_format_name: id
    sql: ${TABLE}.nextid ;;
  }
  
  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }
  
  measure: count {
    type: count
    drill_fields: [table_name, field_name]
  }
  
}

