view: functions {
  sql_table_name: zabbix.functions ;;
  dimension: functionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.functionid ;;
  }
  
  dimension: function {
    type: string
    sql: ${TABLE}.function ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }
  
  dimension: parameter {
    type: string
    sql: ${TABLE}.parameter ;;
  }
  
  dimension: triggerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.triggerid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [functionid, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname, triggers.triggerid]
  }
  
}

