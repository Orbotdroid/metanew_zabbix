view: sysmaps_elements {
  sql_table_name: zabbix.sysmaps_elements ;;
  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }
  
  dimension: areatype {
    type: number
    sql: ${TABLE}.areatype ;;
  }
  
  dimension: elementid {
    type: number
    value_format_name: id
    sql: ${TABLE}.elementid ;;
  }
  
  dimension: elementsubtype {
    type: number
    sql: ${TABLE}.elementsubtype ;;
  }
  
  dimension: elementtype {
    type: number
    sql: ${TABLE}.elementtype ;;
  }
  
  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }
  
  dimension: iconid_disabled {
    type: number
    sql: ${TABLE}.iconid_disabled ;;
  }
  
  dimension: iconid_maintenance {
    type: number
    sql: ${TABLE}.iconid_maintenance ;;
  }
  
  dimension: iconid_off {
    type: number
    sql: ${TABLE}.iconid_off ;;
  }
  
  dimension: iconid_on {
    type: number
    sql: ${TABLE}.iconid_on ;;
  }
  
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }
  
  dimension: label_location {
    type: number
    sql: ${TABLE}.label_location ;;
  }
  
  dimension: selementid {
    type: number
    value_format_name: id
    sql: ${TABLE}.selementid ;;
  }
  
  dimension: sysmapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sysmapid ;;
  }
  
  dimension: use_iconmap {
    type: number
    sql: ${TABLE}.use_iconmap ;;
  }
  
  dimension: viewtype {
    type: number
    sql: ${TABLE}.viewtype ;;
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
    drill_fields: [sysmaps.sysmapid, sysmaps.name]
  }
  
}

