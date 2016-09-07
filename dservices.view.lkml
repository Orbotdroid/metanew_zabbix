view: dservices {
  sql_table_name: zabbix.dservices ;;
  dimension: dserviceid {
    primary_key: yes
    type: number
    sql: ${TABLE}.dserviceid ;;
  }
  
  dimension: dcheckid {
    type: number
    value_format_name: id
    sql: ${TABLE}.dcheckid ;;
  }
  
  dimension: dhostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.dhostid ;;
  }
  
  dimension: dns {
    type: string
    sql: ${TABLE}.dns ;;
  }
  
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  
  dimension: key_ {
    type: string
    sql: ${TABLE}.key_ ;;
  }
  
  dimension: lastdown {
    type: number
    sql: ${TABLE}.lastdown ;;
  }
  
  dimension: lastup {
    type: number
    sql: ${TABLE}.lastup ;;
  }
  
  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  
  measure: count {
    type: count
    drill_fields: [dserviceid, dhosts.dhostid, dchecks.dcheckid, dchecks.snmpv3_securityname, dchecks.snmpv3_contextname]
  }
  
}

