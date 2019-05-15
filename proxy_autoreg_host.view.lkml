view: proxy_autoreg_host {
  sql_table_name: zabbix.proxy_autoreg_host ;;
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  
  dimension: clock {
    type: number
    sql: ${TABLE}.clock ;;
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
  
  measure: count {
    type: count
    drill_fields: [id]
  }
  
}

