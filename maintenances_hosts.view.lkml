view: maintenances_hosts {
  sql_table_name: zabbix.maintenances_hosts ;;
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: maintenance_hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.maintenance_hostid ;;
  }
  
  dimension: maintenanceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.maintenanceid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [maintenances.maintenanceid, maintenances.name, hosts.proxy_hostid, hosts.ipmi_username, hosts.name]
  }
  
}

