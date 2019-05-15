view: timeperiods {
  sql_table_name: zabbix.timeperiods ;;
  dimension: timeperiodid {
    primary_key: yes
    type: number
    sql: ${TABLE}.timeperiodid ;;
  }
  
  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }
  
  dimension: dayofweek {
    type: number
    sql: ${TABLE}.dayofweek ;;
  }
  
  dimension: every {
    type: number
    sql: ${TABLE}.every ;;
  }
  
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  
  dimension: period {
    type: number
    sql: ${TABLE}.period ;;
  }
  
  dimension: start_date {
    type: number
    sql: ${TABLE}.start_date ;;
  }
  
  dimension: start_time {
    type: number
    sql: ${TABLE}.start_time ;;
  }
  
  dimension: timeperiod_type {
    type: number
    sql: ${TABLE}.timeperiod_type ;;
  }
  
  measure: count {
    type: count
    drill_fields: [timeperiodid, maintenances_windows.count]
  }
  
}

