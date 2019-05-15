view: conditions {
  sql_table_name: zabbix.conditions ;;
  dimension: conditionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.conditionid ;;
  }
  
  dimension: actionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.actionid ;;
  }
  
  dimension: conditiontype {
    type: number
    sql: ${TABLE}.conditiontype ;;
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
    drill_fields: [conditionid, actions.actionid, actions.name]
  }
  
}

