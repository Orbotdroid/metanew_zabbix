view: httpstepitem {
  sql_table_name: zabbix.httpstepitem ;;
  dimension: httpstepitemid {
    primary_key: yes
    type: number
    sql: ${TABLE}.httpstepitemid ;;
  }
  
  dimension: httpstepid {
    type: number
    value_format_name: id
    sql: ${TABLE}.httpstepid ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [httpstepitemid, httpstep.httpstepid, httpstep.name, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

