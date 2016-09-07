view: graphs {
  sql_table_name: zabbix.graphs ;;
  dimension: graphid {
    primary_key: yes
    type: number
    sql: ${TABLE}.graphid ;;
  }
  
  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }
  
  dimension: graphtype {
    type: number
    sql: ${TABLE}.graphtype ;;
  }
  
  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: percent_left {
    type: number
    sql: ${TABLE}.percent_left ;;
  }
  
  dimension: percent_right {
    type: number
    sql: ${TABLE}.percent_right ;;
  }
  
  dimension: show_3d {
    type: number
    sql: ${TABLE}.show_3d ;;
  }
  
  dimension: show_legend {
    type: number
    sql: ${TABLE}.show_legend ;;
  }
  
  dimension: show_triggers {
    type: number
    sql: ${TABLE}.show_triggers ;;
  }
  
  dimension: show_work_period {
    type: number
    sql: ${TABLE}.show_work_period ;;
  }
  
  dimension: templateid {
    type: number
    value_format_name: id
    sql: ${TABLE}.templateid ;;
  }
  
  dimension: width {
    type: number
    sql: ${TABLE}.width ;;
  }
  
  dimension: yaxismax {
    type: number
    sql: ${TABLE}.yaxismax ;;
  }
  
  dimension: yaxismin {
    type: number
    sql: ${TABLE}.yaxismin ;;
  }
  
  dimension: ymax_itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ymax_itemid ;;
  }
  
  dimension: ymax_type {
    type: number
    sql: ${TABLE}.ymax_type ;;
  }
  
  dimension: ymin_itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ymin_itemid ;;
  }
  
  dimension: ymin_type {
    type: number
    sql: ${TABLE}.ymin_type ;;
  }
  
  measure: count {
    type: count
    drill_fields: [graphid, name, graphs_items.count, graph_discovery.count]
  }
  
}

