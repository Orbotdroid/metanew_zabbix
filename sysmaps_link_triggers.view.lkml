view: sysmaps_link_triggers {
  sql_table_name: zabbix.sysmaps_link_triggers ;;
  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }
  
  dimension: drawtype {
    type: number
    sql: ${TABLE}.drawtype ;;
  }
  
  dimension: linkid {
    type: number
    value_format_name: id
    sql: ${TABLE}.linkid ;;
  }
  
  dimension: linktriggerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.linktriggerid ;;
  }
  
  dimension: triggerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.triggerid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [triggers.triggerid]
  }
  
}

