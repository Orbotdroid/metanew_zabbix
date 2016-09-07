view: group_prototype {
  sql_table_name: zabbix.group_prototype ;;
  dimension: group_prototypeid {
    primary_key: yes
    type: number
    sql: ${TABLE}.group_prototypeid ;;
  }
  
  dimension: groupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.groupid ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: templateid {
    type: number
    value_format_name: id
    sql: ${TABLE}.templateid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [group_prototypeid, name, hosts.proxy_hostid, hosts.ipmi_username, hosts.name, groups.groupid, groups.name]
  }
  
}

