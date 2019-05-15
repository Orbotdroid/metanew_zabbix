view: trends_uint {
  sql_table_name: zabbix.trends_uint ;;
  dimension: clock {
    type: number
    sql: ${TABLE}.clock ;;
  }
  
  dimension: itemid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemid ;;
  }
  
  dimension: num {
    type: number
    sql: ${TABLE}.num ;;
  }
  
  dimension: value_avg {
    type: number
    sql: ${TABLE}.value_avg ;;
  }
  
  dimension: value_max {
    type: number
    sql: ${TABLE}.value_max ;;
  }
  
  dimension: value_min {
    type: number
    sql: ${TABLE}.value_min ;;
  }
  
  measure: count {
    type: count
    drill_fields: [items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

