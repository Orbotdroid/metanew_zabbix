view: graphs_items {
  sql_table_name: zabbix.graphs_items ;;
  dimension: calc_fnc {
    type: number
    sql: ${TABLE}.calc_fnc ;;
  }
  
  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }
  
  dimension: drawtype {
    type: number
    sql: ${TABLE}.drawtype ;;
  }
  
  dimension: gitemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.gitemid ;;
  }
  
  dimension: graphid {
    type: number
    value_format_name: id
    sql: ${TABLE}.graphid ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }
  
  dimension: sortorder {
    type: number
    sql: ${TABLE}.sortorder ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: yaxisside {
    type: number
    sql: ${TABLE}.yaxisside ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [graphs.graphid, graphs.name, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

