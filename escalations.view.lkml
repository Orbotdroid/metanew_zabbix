view: escalations {
  sql_table_name: zabbix.escalations ;;
  dimension: escalationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.escalationid ;;
  }
  
  dimension: actionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.actionid ;;
  }
  
  dimension: esc_step {
    type: number
    sql: ${TABLE}.esc_step ;;
  }
  
  dimension: eventid {
    type: number
    value_format_name: id
    sql: ${TABLE}.eventid ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }
  
  dimension: nextcheck {
    type: number
    sql: ${TABLE}.nextcheck ;;
  }
  
  dimension: r_eventid {
    type: number
    value_format_name: id
    sql: ${TABLE}.r_eventid ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  dimension: triggerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.triggerid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [escalationid, actions.actionid, actions.name, triggers.triggerid, events.eventid, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

