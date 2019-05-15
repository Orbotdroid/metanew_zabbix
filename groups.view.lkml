view: groups {
  sql_table_name: zabbix.groups ;;
  dimension: groupid {
    primary_key: yes
    type: number
    sql: ${TABLE}.groupid ;;
  }
  
  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }
  
  dimension: internal {
    type: number
    sql: ${TABLE}.internal ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [groupid, name, group_discovery.count, group_prototype.count, hosts_groups.count, maintenances_groups.count, opcommand_grp.count, opgroup.count, rights.count, scripts.count]
  }
  
}

