view: item_condition {
  sql_table_name: zabbix.item_condition ;;
  dimension: item_conditionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.item_conditionid ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }
  
  dimension: macro {
    type: string
    sql: ${TABLE}.macro ;;
  }
  
  dimension: operator {
    type: number
    sql: ${TABLE}.operator ;;
  }
  
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [item_conditionid, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

