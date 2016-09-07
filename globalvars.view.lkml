view: globalvars {
  sql_table_name: zabbix.globalvars ;;
  dimension: globalvarid {
    primary_key: yes
    type: number
    sql: ${TABLE}.globalvarid ;;
  }
  
  dimension: snmp_lastsize {
    type: number
    sql: ${TABLE}.snmp_lastsize ;;
  }
  
  measure: count {
    type: count
    drill_fields: [globalvarid]
  }
  
}

