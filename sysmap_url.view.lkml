view: sysmap_url {
  sql_table_name: zabbix.sysmap_url ;;
  dimension: elementtype {
    type: number
    sql: ${TABLE}.elementtype ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: sysmapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sysmapid ;;
  }
  
  dimension: sysmapurlid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sysmapurlid ;;
  }
  
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  
  measure: count {
    type: count
    drill_fields: [name, sysmaps.sysmapid, sysmaps.name]
  }
  
}

