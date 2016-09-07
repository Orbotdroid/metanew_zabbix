view: items_applications {
  sql_table_name: zabbix.items_applications ;;
  dimension: applicationid {
    type: number
    value_format_name: id
    sql: ${TABLE}.applicationid ;;
  }
  
  dimension: itemappid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemappid ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [applications.applicationid, applications.name, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

