view: config {
  sql_table_name: zabbix.config ;;
  dimension: configid {
    primary_key: yes
    type: number
    sql: ${TABLE}.configid ;;
  }
  
  dimension: alert_usrgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.alert_usrgrpid ;;
  }
  
  dimension: authentication_type {
    type: number
    sql: ${TABLE}.authentication_type ;;
  }
  
  dimension: blink_period {
    type: number
    sql: ${TABLE}.blink_period ;;
  }
  
  dimension: default_inventory_mode {
    type: number
    sql: ${TABLE}.default_inventory_mode ;;
  }
  
  dimension: default_theme {
    type: string
    sql: ${TABLE}.default_theme ;;
  }
  
  dimension: discovery_groupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.discovery_groupid ;;
  }
  
  dimension: dropdown_first_entry {
    type: number
    sql: ${TABLE}.dropdown_first_entry ;;
  }
  
  dimension: dropdown_first_remember {
    type: number
    sql: ${TABLE}.dropdown_first_remember ;;
  }
  
  dimension: event_ack_enable {
    type: number
    sql: ${TABLE}.event_ack_enable ;;
  }
  
  dimension: event_expire {
    type: number
    sql: ${TABLE}.event_expire ;;
  }
  
  dimension: event_show_max {
    type: number
    sql: ${TABLE}.event_show_max ;;
  }
  
  dimension: hk_audit {
    type: number
    sql: ${TABLE}.hk_audit ;;
  }
  
  dimension: hk_audit_mode {
    type: number
    sql: ${TABLE}.hk_audit_mode ;;
  }
  
  dimension: hk_events_autoreg {
    type: number
    sql: ${TABLE}.hk_events_autoreg ;;
  }
  
  dimension: hk_events_discovery {
    type: number
    sql: ${TABLE}.hk_events_discovery ;;
  }
  
  dimension: hk_events_internal {
    type: number
    sql: ${TABLE}.hk_events_internal ;;
  }
  
  dimension: hk_events_mode {
    type: number
    sql: ${TABLE}.hk_events_mode ;;
  }
  
  dimension: hk_events_trigger {
    type: number
    sql: ${TABLE}.hk_events_trigger ;;
  }
  
  dimension: hk_history {
    type: number
    sql: ${TABLE}.hk_history ;;
  }
  
  dimension: hk_history_global {
    type: number
    sql: ${TABLE}.hk_history_global ;;
  }
  
  dimension: hk_history_mode {
    type: number
    sql: ${TABLE}.hk_history_mode ;;
  }
  
  dimension: hk_services {
    type: number
    sql: ${TABLE}.hk_services ;;
  }
  
  dimension: hk_services_mode {
    type: number
    sql: ${TABLE}.hk_services_mode ;;
  }
  
  dimension: hk_sessions {
    type: number
    sql: ${TABLE}.hk_sessions ;;
  }
  
  dimension: hk_sessions_mode {
    type: number
    sql: ${TABLE}.hk_sessions_mode ;;
  }
  
  dimension: hk_trends {
    type: number
    sql: ${TABLE}.hk_trends ;;
  }
  
  dimension: hk_trends_global {
    type: number
    sql: ${TABLE}.hk_trends_global ;;
  }
  
  dimension: hk_trends_mode {
    type: number
    sql: ${TABLE}.hk_trends_mode ;;
  }
  
  dimension: ldap_base_dn {
    type: string
    sql: ${TABLE}.ldap_base_dn ;;
  }
  
  dimension: ldap_bind_dn {
    type: string
    sql: ${TABLE}.ldap_bind_dn ;;
  }
  
  dimension: ldap_bind_password {
    type: string
    sql: ${TABLE}.ldap_bind_password ;;
  }
  
  dimension: ldap_host {
    type: string
    sql: ${TABLE}.ldap_host ;;
  }
  
  dimension: ldap_port {
    type: number
    sql: ${TABLE}.ldap_port ;;
  }
  
  dimension: ldap_search_attribute {
    type: string
    sql: ${TABLE}.ldap_search_attribute ;;
  }
  
  dimension: max_in_table {
    type: number
    sql: ${TABLE}.max_in_table ;;
  }
  
  dimension: ok_ack_color {
    type: string
    sql: ${TABLE}.ok_ack_color ;;
  }
  
  dimension: ok_ack_style {
    type: number
    sql: ${TABLE}.ok_ack_style ;;
  }
  
  dimension: ok_period {
    type: number
    sql: ${TABLE}.ok_period ;;
  }
  
  dimension: ok_unack_color {
    type: string
    sql: ${TABLE}.ok_unack_color ;;
  }
  
  dimension: ok_unack_style {
    type: number
    sql: ${TABLE}.ok_unack_style ;;
  }
  
  dimension: problem_ack_color {
    type: string
    sql: ${TABLE}.problem_ack_color ;;
  }
  
  dimension: problem_ack_style {
    type: number
    sql: ${TABLE}.problem_ack_style ;;
  }
  
  dimension: problem_unack_color {
    type: string
    sql: ${TABLE}.problem_unack_color ;;
  }
  
  dimension: problem_unack_style {
    type: number
    sql: ${TABLE}.problem_unack_style ;;
  }
  
  dimension: refresh_unsupported {
    type: number
    sql: ${TABLE}.refresh_unsupported ;;
  }
  
  dimension: search_limit {
    type: number
    sql: ${TABLE}.search_limit ;;
  }
  
  dimension: server_check_interval {
    type: number
    sql: ${TABLE}.server_check_interval ;;
  }
  
  dimension: severity_color_0 {
    type: string
    sql: ${TABLE}.severity_color_0 ;;
  }
  
  dimension: severity_color_1 {
    type: string
    sql: ${TABLE}.severity_color_1 ;;
  }
  
  dimension: severity_color_2 {
    type: string
    sql: ${TABLE}.severity_color_2 ;;
  }
  
  dimension: severity_color_3 {
    type: string
    sql: ${TABLE}.severity_color_3 ;;
  }
  
  dimension: severity_color_4 {
    type: string
    sql: ${TABLE}.severity_color_4 ;;
  }
  
  dimension: severity_color_5 {
    type: string
    sql: ${TABLE}.severity_color_5 ;;
  }
  
  dimension: severity_name_0 {
    type: string
    sql: ${TABLE}.severity_name_0 ;;
  }
  
  dimension: severity_name_1 {
    type: string
    sql: ${TABLE}.severity_name_1 ;;
  }
  
  dimension: severity_name_2 {
    type: string
    sql: ${TABLE}.severity_name_2 ;;
  }
  
  dimension: severity_name_3 {
    type: string
    sql: ${TABLE}.severity_name_3 ;;
  }
  
  dimension: severity_name_4 {
    type: string
    sql: ${TABLE}.severity_name_4 ;;
  }
  
  dimension: severity_name_5 {
    type: string
    sql: ${TABLE}.severity_name_5 ;;
  }
  
  dimension: snmptrap_logging {
    type: number
    sql: ${TABLE}.snmptrap_logging ;;
  }
  
  dimension: work_period {
    type: string
    sql: ${TABLE}.work_period ;;
  }
  
  measure: count {
    type: count
    drill_fields: [configid]
  }
  
}

