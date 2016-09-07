view: application_prototype {
  sql_table_name: zabbix.application_prototype ;;
  dimension: application_prototypeid {
    primary_key: yes
    type: number
    sql: ${TABLE}.application_prototypeid ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
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
    fields: [application_prototypeid, name, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname, application_discovery.count, item_application_prototype.count]
  }
  
}

