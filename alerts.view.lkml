view: alerts {
  sql_table_name: zabbix.alerts ;;
  dimension: alertid {
    primary_key: yes
    type: number
    sql: ${TABLE}.alertid ;;
  }
  
  dimension: actionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.actionid ;;
  }
  
  dimension: alerttype {
    type: number
    sql: ${TABLE}.alerttype ;;
  }
  
  dimension: clock {
    type: number
    sql: ${TABLE}.clock ;;
  }
  
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
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
  
  dimension: mediatypeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mediatypeid ;;
  }
  
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  
  dimension: retries {
    type: number
    sql: ${TABLE}.retries ;;
  }
  
  dimension: sendto {
    type: string
    sql: ${TABLE}.sendto ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [alertid, actions.actionid, actions.name, events.eventid, users.surname, users.name, users.userid]
  }
  
}

