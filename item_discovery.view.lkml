view: item_discovery {
  sql_table_name: zabbix.item_discovery ;;
  dimension: itemdiscoveryid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemdiscoveryid ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }
  
  dimension: key_ {
    type: string
    sql: ${TABLE}.key_ ;;
  }
  
  dimension: lastcheck {
    type: number
    sql: ${TABLE}.lastcheck ;;
  }
  
  dimension: parent_itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parent_itemid ;;
  }
  
  dimension: ts_delete {
    type: number
    sql: ${TABLE}.ts_delete ;;
  }
  
  measure: count {
    type: count
    drill_fields: [items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

