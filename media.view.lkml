view: media {
  sql_table_name: zabbix.media ;;
  dimension: mediaid {
    primary_key: yes
    type: number
    sql: ${TABLE}.mediaid ;;
  }
  
  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }
  
  dimension: mediatypeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mediatypeid ;;
  }
  
  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }
  
  dimension: sendto {
    type: string
    sql: ${TABLE}.sendto ;;
  }
  
  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [mediaid, users.surname, users.name, users.userid]
  }
  
}

