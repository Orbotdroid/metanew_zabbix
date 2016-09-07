view: sysmaps_links {
  sql_table_name: zabbix.sysmaps_links ;;
  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }
  
  dimension: drawtype {
    type: number
    sql: ${TABLE}.drawtype ;;
  }
  
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }
  
  dimension: linkid {
    type: number
    value_format_name: id
    sql: ${TABLE}.linkid ;;
  }
  
  dimension: selementid1 {
    type: number
    sql: ${TABLE}.selementid1 ;;
  }
  
  dimension: selementid2 {
    type: number
    sql: ${TABLE}.selementid2 ;;
  }
  
  dimension: sysmapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sysmapid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [sysmaps.sysmapid, sysmaps.name]
  }
  
}

