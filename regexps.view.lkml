view: regexps {
  sql_table_name: zabbix.regexps ;;
  dimension: regexpid {
    primary_key: yes
    type: number
    sql: ${TABLE}.regexpid ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: test_string {
    type: string
    sql: ${TABLE}.test_string ;;
  }
  
  measure: count {
    type: count
    drill_fields: [regexpid, name, expressions.count]
  }
  
}

