view: hosts_groups {
  sql_table_name: zabbix.hosts_groups ;;
  dimension: groupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.groupid ;;
  }
  
  dimension: hostgroupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostgroupid ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [hosts.proxy_hostid, hosts.ipmi_username, hosts.name, groups.groupid, groups.name]
  }
  
}

