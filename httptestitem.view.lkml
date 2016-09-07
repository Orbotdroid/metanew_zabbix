view: httptestitem {
  sql_table_name: zabbix.httptestitem ;;
  dimension: httptestitemid {
    primary_key: yes
    type: number
    sql: ${TABLE}.httptestitemid ;;
  }
  
  dimension: httptestid {
    type: number
    value_format_name: id
    sql: ${TABLE}.httptestid ;;
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
    fields: [httptestitemid, httptest.httptestid, httptest.name, items.itemid, items.name, items.snmpv3_securityname, items.username, items.snmpv3_contextname]
  }
  
}

