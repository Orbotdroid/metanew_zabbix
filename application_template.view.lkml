view: application_template {
  sql_table_name: zabbix.application_template ;;
  dimension: application_templateid {
    primary_key: yes
    type: number
    sql: ${TABLE}.application_templateid ;;
  }
  
  dimension: applicationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.applicationid ;;
  }
  
  dimension: templateid {
    type: number
    value_format_name: id
    sql: ${TABLE}.templateid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [application_templateid, applications.applicationid, applications.name]
  }
  
}

