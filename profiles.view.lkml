view: profiles {
  sql_table_name: zabbix.profiles ;;
  dimension: profileid {
    primary_key: yes
    type: number
    sql: ${TABLE}.profileid ;;
  }
  
  dimension: idx {
    type: string
    sql: ${TABLE}.idx ;;
  }
  
  dimension: idx2 {
    type: number
    sql: ${TABLE}.idx2 ;;
  }
  
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }
  
  dimension: value_id {
    type: number
    sql: ${TABLE}.value_id ;;
  }
  
  dimension: value_int {
    type: number
    sql: ${TABLE}.value_int ;;
  }
  
  dimension: value_str {
    type: string
    sql: ${TABLE}.value_str ;;
  }
  
  measure: count {
    type: count
    drill_fields: [profileid, users.surname, users.name, users.userid]
  }
  
}

