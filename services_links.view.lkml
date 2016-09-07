view: services_links {
  sql_table_name: zabbix.services_links ;;
  dimension: linkid {
    type: number
    value_format_name: id
    sql: ${TABLE}.linkid ;;
  }
  
  dimension: servicedownid {
    type: number
    value_format_name: id
    sql: ${TABLE}.servicedownid ;;
  }
  
  dimension: serviceupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.serviceupid ;;
  }
  
  dimension: soft {
    type: number
    sql: ${TABLE}.soft ;;
  }
  
  measure: count {
    type: count
    drill_fields: []
  }
  
}

