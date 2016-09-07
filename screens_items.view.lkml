view: screens_items {
  sql_table_name: zabbix.screens_items ;;
  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }
  
  dimension: colspan {
    type: number
    sql: ${TABLE}.colspan ;;
  }
  
  dimension: dynamic {
    type: number
    sql: ${TABLE}.dynamic ;;
  }
  
  dimension: elements {
    type: number
    sql: ${TABLE}.elements ;;
  }
  
  dimension: halign {
    type: number
    sql: ${TABLE}.halign ;;
  }
  
  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }
  
  dimension: max_columns {
    type: number
    sql: ${TABLE}.max_columns ;;
  }
  
  dimension: resourceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.resourceid ;;
  }
  
  dimension: resourcetype {
    type: number
    sql: ${TABLE}.resourcetype ;;
  }
  
  dimension: rowspan {
    type: number
    sql: ${TABLE}.rowspan ;;
  }
  
  dimension: screenid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screenid ;;
  }
  
  dimension: screenitemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.screenitemid ;;
  }
  
  dimension: sort_triggers {
    type: number
    sql: ${TABLE}.sort_triggers ;;
  }
  
  dimension: style {
    type: number
    sql: ${TABLE}.style ;;
  }
  
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  
  dimension: valign {
    type: number
    sql: ${TABLE}.valign ;;
  }
  
  dimension: width {
    type: number
    sql: ${TABLE}.width ;;
  }
  
  dimension: x {
    type: number
    sql: ${TABLE}.x ;;
  }
  
  dimension: y {
    type: number
    sql: ${TABLE}.y ;;
  }
  
  measure: count {
    type: count
    drill_fields: [screens.screenid, screens.name]
  }
  
}

