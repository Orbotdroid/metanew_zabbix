view: icon_mapping {
  sql_table_name: zabbix.icon_mapping ;;
  dimension: expression {
    type: string
    sql: ${TABLE}.expression ;;
  }
  
  dimension: iconid {
    type: number
    value_format_name: id
    sql: ${TABLE}.iconid ;;
  }
  
  dimension: iconmapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.iconmapid ;;
  }
  
  dimension: iconmappingid {
    type: number
    value_format_name: id
    sql: ${TABLE}.iconmappingid ;;
  }
  
  dimension: inventory_link {
    type: number
    sql: ${TABLE}.inventory_link ;;
  }
  
  dimension: sortorder {
    type: number
    sql: ${TABLE}.sortorder ;;
  }
  
  measure: count {
    type: count
    drill_fields: []
  }
  
}

