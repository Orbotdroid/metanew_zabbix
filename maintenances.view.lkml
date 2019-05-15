view: maintenances {
  sql_table_name: zabbix.maintenances ;;
  dimension: maintenanceid {
    primary_key: yes
    type: number
    sql: ${TABLE}.maintenanceid ;;
  }
  
  dimension: active_since {
    type: number
    sql: ${TABLE}.active_since ;;
  }
  
  dimension: active_till {
    type: number
    sql: ${TABLE}.active_till ;;
  }
  
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  
  dimension: maintenance_type {
    type: number
    sql: ${TABLE}.maintenance_type ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [maintenanceid, name, hosts.count, maintenances_groups.count, maintenances_hosts.count, maintenances_windows.count]
  }
  
}

