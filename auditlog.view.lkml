view: auditlog {
  sql_table_name: zabbix.auditlog ;;
  dimension: action {
    type: number
    sql: ${TABLE}.action ;;
  }
  
  dimension: auditid {
    type: number
    value_format_name: id
    sql: ${TABLE}.auditid ;;
  }
  
  dimension: clock {
    type: number
    sql: ${TABLE}.clock ;;
  }
  
  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }
  
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  
  dimension: resourceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.resourceid ;;
  }
  
  dimension: resourcename {
    type: string
    sql: ${TABLE}.resourcename ;;
  }
  
  dimension: resourcetype {
    type: number
    sql: ${TABLE}.resourcetype ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [resourcename, users.surname, users.name, users.userid]
  }
  
}

