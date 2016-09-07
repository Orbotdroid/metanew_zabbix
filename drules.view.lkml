view: drules {
  sql_table_name: zabbix.drules ;;
  dimension: druleid {
    primary_key: yes
    type: number
    sql: ${TABLE}.druleid ;;
  }
  
  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }
  
  dimension: iprange {
    type: string
    sql: ${TABLE}.iprange ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: nextcheck {
    type: number
    sql: ${TABLE}.nextcheck ;;
  }
  
  dimension: proxy_hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.proxy_hostid ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  measure: count {
    type: count
    drill_fields: [druleid, name, dchecks.count, dhosts.count, proxy_dhistory.count]
  }
  
}

