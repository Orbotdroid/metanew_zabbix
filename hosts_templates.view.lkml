view: hosts_templates {
  sql_table_name: zabbix.hosts_templates ;;
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: hosttemplateid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hosttemplateid ;;
  }
  
  dimension: templateid {
    type: number
    value_format_name: id
    sql: ${TABLE}.templateid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [hosts.proxy_hostid, hosts.ipmi_username, hosts.name]
  }
  
}

