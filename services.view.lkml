view: services {
  sql_table_name: zabbix.services ;;
  dimension: serviceid {
    primary_key: yes
    type: number
    sql: ${TABLE}.serviceid ;;
  }
  
  dimension: algorithm {
    type: number
    sql: ${TABLE}.algorithm ;;
  }
  
  dimension: goodsla {
    type: number
    sql: ${TABLE}.goodsla ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: showsla {
    type: number
    sql: ${TABLE}.showsla ;;
  }
  
  dimension: sortorder {
    type: number
    sql: ${TABLE}.sortorder ;;
  }
  
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  
  dimension: triggerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.triggerid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [serviceid, name, triggers.triggerid, services_times.count, service_alarms.count]
  }
  
}

