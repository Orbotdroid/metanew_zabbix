view: sysmap_element_url {
  sql_table_name: zabbix.sysmap_element_url ;;
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: selementid {
    type: number
    value_format_name: id
    sql: ${TABLE}.selementid ;;
  }
  
  dimension: sysmapelementurlid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sysmapelementurlid ;;
  }
  
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  
  measure: count {
    type: count
    drill_fields: [name]
  }
  
}

