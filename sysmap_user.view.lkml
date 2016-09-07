view: sysmap_user {
  sql_table_name: zabbix.sysmap_user ;;
  dimension: permission {
    type: number
    sql: ${TABLE}.permission ;;
  }
  
  dimension: sysmapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sysmapid ;;
  }
  
  dimension: sysmapuserid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sysmapuserid ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [sysmaps.sysmapid, sysmaps.name, users.surname, users.name, users.userid]
  }
  
}

