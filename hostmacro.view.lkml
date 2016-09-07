view: hostmacro {
  sql_table_name: zabbix.hostmacro ;;
  dimension: hostmacroid {
    primary_key: yes
    type: number
    sql: ${TABLE}.hostmacroid ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: macro {
    type: string
    sql: ${TABLE}.macro ;;
  }
  
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  
  measure: count {
    type: count
    drill_fields: [hostmacroid, hosts.proxy_hostid, hosts.ipmi_username, hosts.name]
  }
  
}

