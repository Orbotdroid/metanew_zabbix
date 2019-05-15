view: autoreg_host {
  sql_table_name: zabbix.autoreg_host ;;
  dimension: autoreg_hostid {
    primary_key: yes
    type: number
    sql: ${TABLE}.autoreg_hostid ;;
  }
  
  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }
  
  dimension: host_metadata {
    type: string
    sql: ${TABLE}.host_metadata ;;
  }
  
  dimension: listen_dns {
    type: string
    sql: ${TABLE}.listen_dns ;;
  }
  
  dimension: listen_ip {
    type: string
    sql: ${TABLE}.listen_ip ;;
  }
  
  dimension: listen_port {
    type: number
    sql: ${TABLE}.listen_port ;;
  }
  
  dimension: proxy_hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.proxy_hostid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [autoreg_hostid]
  }
  
}

