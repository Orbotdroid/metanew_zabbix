view: graph_discovery {
  sql_table_name: zabbix.graph_discovery ;;
  dimension: graphid {
    type: number
    value_format_name: id
    sql: ${TABLE}.graphid ;;
  }
  
  dimension: parent_graphid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parent_graphid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [graphs.graphid, graphs.name]
  }
  
}

