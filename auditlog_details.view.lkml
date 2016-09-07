view: auditlog_details {
  sql_table_name: zabbix.auditlog_details ;;
  dimension: auditdetailid {
    type: number
    value_format_name: id
    sql: ${TABLE}.auditdetailid ;;
  }
  
  dimension: auditid {
    type: number
    value_format_name: id
    sql: ${TABLE}.auditid ;;
  }
  
  dimension: field_name {
    type: string
    sql: ${TABLE}.field_name ;;
  }
  
  dimension: newvalue {
    type: string
    sql: ${TABLE}.newvalue ;;
  }
  
  dimension: oldvalue {
    type: string
    sql: ${TABLE}.oldvalue ;;
  }
  
  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }
  
  measure: count {
    type: count
    drill_fields: [table_name, field_name]
  }
  
}

