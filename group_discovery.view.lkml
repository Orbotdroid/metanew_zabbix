view: group_discovery {
  sql_table_name: zabbix.group_discovery ;;
  dimension: groupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.groupid ;;
  }
  
  dimension: lastcheck {
    type: number
    sql: ${TABLE}.lastcheck ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: parent_group_prototypeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parent_group_prototypeid ;;
  }
  
  dimension: ts_delete {
    type: number
    sql: ${TABLE}.ts_delete ;;
  }
  
  measure: count {
    type: count
    drill_fields: [name, groups.groupid, groups.name]
  }
  
}

