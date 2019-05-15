view: mappings {
  sql_table_name: zabbix.mappings ;;
  dimension: mappingid {
    primary_key: yes
    type: number
    sql: ${TABLE}.mappingid ;;
  }
  
  dimension: newvalue {
    type: string
    sql: ${TABLE}.newvalue ;;
  }
  
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  
  dimension: valuemapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.valuemapid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [mappingid, valuemaps.valuemapid, valuemaps.name]
  }
  
}

