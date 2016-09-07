view: expressions {
  sql_table_name: zabbix.expressions ;;
  dimension: expressionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.expressionid ;;
  }
  
  dimension: case_sensitive {
    type: number
    sql: ${TABLE}.case_sensitive ;;
  }
  
  dimension: exp_delimiter {
    type: string
    sql: ${TABLE}.exp_delimiter ;;
  }
  
  dimension: expression {
    type: string
    sql: ${TABLE}.expression ;;
  }
  
  dimension: expression_type {
    type: number
    sql: ${TABLE}.expression_type ;;
  }
  
  dimension: regexpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.regexpid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [expressionid, regexps.regexpid, regexps.name]
  }
  
}

