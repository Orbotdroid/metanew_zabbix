view: valuemaps {
  sql_table_name: zabbix.valuemaps ;;
  dimension: valuemapid {
    primary_key: yes
    type: number
    sql: ${TABLE}.valuemapid ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  measure: count {
    type: count
    drill_fields: [valuemapid, name, items.count, mappings.count]
  }
  
}

