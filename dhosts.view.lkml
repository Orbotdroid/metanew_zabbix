view: dhosts {
  sql_table_name: zabbix.dhosts ;;
  dimension: dhostid {
    primary_key: yes
    type: number
    sql: ${TABLE}.dhostid ;;
  }
  
  dimension: druleid {
    type: number
    value_format_name: id
    sql: ${TABLE}.druleid ;;
  }
  
  dimension: lastdown {
    type: number
    sql: ${TABLE}.lastdown ;;
  }
  
  dimension: lastup {
    type: number
    sql: ${TABLE}.lastup ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  measure: count {
    type: count
    drill_fields: [dhostid, drules.druleid, drules.name, dservices.count]
  }
  
}

