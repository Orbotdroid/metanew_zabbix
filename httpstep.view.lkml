view: httpstep {
  sql_table_name: zabbix.httpstep ;;
  dimension: httpstepid {
    primary_key: yes
    type: number
    sql: ${TABLE}.httpstepid ;;
  }

  dimension: follow_redirects {
    type: number
    sql: ${TABLE}.follow_redirects ;;
  }

  dimension: headers {
    type: string
    sql: ${TABLE}.headers ;;
  }

  dimension: httptestid {
    type: number
    value_format_name: id
    sql: ${TABLE}.httptestid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.no ;;
  }

  dimension: posts {
    type: string
    sql: ${TABLE}.posts ;;
  }

  dimension: required {
    type: string
    sql: ${TABLE}.required ;;
  }

  dimension: retrieve_mode {
    type: number
    sql: ${TABLE}.retrieve_mode ;;
  }

  dimension: status_codes {
    type: string
    sql: ${TABLE}.status_codes ;;
  }

  dimension: timeout {
    type: number
    sql: ${TABLE}.timeout ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: variables {
    type: string
    sql: ${TABLE}.variables ;;
  }

  measure: count {
    type: count
    drill_fields: [httpstepid, name, httptest.httptestid, httptest.name, httpstepitem.count]
  }

}
