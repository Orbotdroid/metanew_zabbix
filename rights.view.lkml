view: rights {
  sql_table_name: zabbix.rights ;;
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  
  dimension: groupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.groupid ;;
  }
  
  dimension: permission {
    type: number
    sql: ${TABLE}.permission ;;
  }
  
  dimension: rightid {
    type: number
    value_format_name: id
    sql: ${TABLE}.rightid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [id, rights.id, groups.groupid, groups.name, rights.count]
  }
  
}

