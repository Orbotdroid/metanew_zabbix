view: item_application_prototype {
  sql_table_name: zabbix.item_application_prototype ;;
  dimension: item_application_prototypeid {
    primary_key: yes
    type: number
    sql: ${TABLE}.item_application_prototypeid ;;
  }
  
  dimension: application_prototypeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.application_prototypeid ;;
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
    fields: [item_application_prototypeid, application_prototype.application_prototypeid, application_prototype.name, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

