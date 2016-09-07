view: opcommand_hst {
  sql_table_name: zabbix.opcommand_hst ;;
  dimension: opcommand_hstid {
    primary_key: yes
    type: number
    sql: ${TABLE}.opcommand_hstid ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: operationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.operationid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [opcommand_hstid, operations.operationid, hosts.proxy_hostid, hosts.ipmi_username, hosts.name]
  }
  
}

