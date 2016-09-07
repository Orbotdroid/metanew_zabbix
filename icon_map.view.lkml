view: icon_map {
  sql_table_name: zabbix.icon_map ;;
  dimension: default_iconid {
    type: number
    value_format_name: id
    sql: ${TABLE}.default_iconid ;;
  }
  
  dimension: iconmapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.iconmapid ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  measure: count {
    type: count
    drill_fields: [name]
  }
  
}

