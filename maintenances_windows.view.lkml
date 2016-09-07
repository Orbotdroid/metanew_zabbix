view: maintenances_windows {
  sql_table_name: zabbix.maintenances_windows ;;
  dimension: maintenance_timeperiodid {
    type: number
    value_format_name: id
    sql: ${TABLE}.maintenance_timeperiodid ;;
  }
  
  dimension: maintenanceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.maintenanceid ;;
  }
  
  dimension: timeperiodid {
    type: number
    value_format_name: id
    sql: ${TABLE}.timeperiodid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [maintenances.maintenanceid, maintenances.name, timeperiods.timeperiodid]
  }
  
}

