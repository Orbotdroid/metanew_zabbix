view: interface {
  sql_table_name: zabbix.interface ;;
  dimension: interfaceid {
    primary_key: yes
    type: number
    sql: ${TABLE}.interfaceid ;;
  }
  
  dimension: bulk {
    type: number
    sql: ${TABLE}.bulk ;;
  }
  
  dimension: dns {
    type: string
    sql: ${TABLE}.dns ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  
  dimension: main {
    type: number
    sql: ${TABLE}.main ;;
  }
  
  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: useip {
    type: number
    sql: ${TABLE}.useip ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [interfaceid, hosts.proxy_hostid, hosts.ipmi_username, hosts.name, interface_discovery.count, items.count]
  }
  
}

