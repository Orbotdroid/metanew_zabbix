view: application_discovery {
  sql_table_name: zabbix.application_discovery ;;
  dimension: application_discoveryid {
    primary_key: yes
    type: number
    sql: ${TABLE}.application_discoveryid ;;
  }
  
  dimension: application_prototypeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.application_prototypeid ;;
  }
  
  dimension: applicationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.applicationid ;;
  }
  
  dimension: lastcheck {
    type: number
    sql: ${TABLE}.lastcheck ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: ts_delete {
    type: number
    sql: ${TABLE}.ts_delete ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [application_discoveryid, name, applications.applicationid, applications.name, application_prototype.application_prototypeid, application_prototype.name]
  }
  
}

