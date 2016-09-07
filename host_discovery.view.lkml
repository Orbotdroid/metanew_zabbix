view: host_discovery {
  sql_table_name: zabbix.host_discovery ;;
  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: lastcheck {
    type: number
    sql: ${TABLE}.lastcheck ;;
  }
  
  dimension: parent_hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parent_hostid ;;
  }
  
  dimension: parent_itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parent_itemid ;;
  }
  
  dimension: ts_delete {
    type: number
    sql: ${TABLE}.ts_delete ;;
  }
  
  measure: count {
    type: count
    drill_fields: [hosts.proxy_hostid, hosts.ipmi_username, hosts.name]
  }
  
}

