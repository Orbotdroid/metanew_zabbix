view: actions {
  sql_table_name: zabbix.actions ;;
  dimension: actionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.actionid ;;
  }
  
  dimension: def_longdata {
    type: string
    sql: ${TABLE}.def_longdata ;;
  }
  
  dimension: def_shortdata {
    type: string
    sql: ${TABLE}.def_shortdata ;;
  }
  
  dimension: esc_period {
    type: number
    sql: ${TABLE}.esc_period ;;
  }
  
  dimension: evaltype {
    type: number
    sql: ${TABLE}.evaltype ;;
  }
  
  dimension: eventsource {
    type: number
    sql: ${TABLE}.eventsource ;;
  }
  
  dimension: formula {
    type: string
    sql: ${TABLE}.formula ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: r_longdata {
    type: string
    sql: ${TABLE}.r_longdata ;;
  }
  
  dimension: r_shortdata {
    type: string
    sql: ${TABLE}.r_shortdata ;;
  }
  
  dimension: recovery_msg {
    type: number
    sql: ${TABLE}.recovery_msg ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [actionid, name, alerts.count, conditions.count, escalations.count, operations.count]
  }
  
}

