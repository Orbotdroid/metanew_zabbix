view: acknowledges {
  sql_table_name: zabbix.acknowledges ;;
  dimension: acknowledgeid {
    primary_key: yes
    type: number
    sql: ${TABLE}.acknowledgeid ;;
  }
  
  dimension: clock {
    type: number
    sql: ${TABLE}.clock ;;
  }
  
  dimension: eventid {
    type: number
    value_format_name: id
    sql: ${TABLE}.eventid ;;
  }
  
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [acknowledgeid, users.surname, users.name, users.userid, events.eventid]
  }
  
}

