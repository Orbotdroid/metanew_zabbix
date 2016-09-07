view: maintenances_groups {
  sql_table_name: zabbix.maintenances_groups ;;
  dimension: groupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.groupid ;;
  }
  
  dimension: maintenance_groupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.maintenance_groupid ;;
  }
  
  dimension: maintenanceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.maintenanceid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [maintenances.maintenanceid, maintenances.name, groups.groupid, groups.name]
  }
  
}

