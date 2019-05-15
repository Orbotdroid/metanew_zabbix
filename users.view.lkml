view: users {
  sql_table_name: zabbix.users ;;
  dimension: userid {
    primary_key: yes
    type: number
    sql: ${TABLE}.userid ;;
  }
  
  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }
  
  dimension: attempt_clock {
    type: number
    sql: ${TABLE}.attempt_clock ;;
  }
  
  dimension: attempt_failed {
    type: number
    sql: ${TABLE}.attempt_failed ;;
  }
  
  dimension: attempt_ip {
    type: string
    sql: ${TABLE}.attempt_ip ;;
  }
  
  dimension: autologin {
    type: number
    sql: ${TABLE}.autologin ;;
  }
  
  dimension: autologout {
    type: number
    sql: ${TABLE}.autologout ;;
  }
  
  dimension: lang {
    type: string
    sql: ${TABLE}.lang ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: passwd {
    type: string
    sql: ${TABLE}.passwd ;;
  }
  
  dimension: refresh {
    type: number
    sql: ${TABLE}.refresh ;;
  }
  
  dimension: rows_per_page {
    type: number
    sql: ${TABLE}.rows_per_page ;;
  }
  
  dimension: surname {
    type: string
    sql: ${TABLE}.surname ;;
  }
  
  dimension: theme {
    type: string
    sql: ${TABLE}.theme ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [userid, surname, name, acknowledges.count, alerts.count, auditlog.count, media.count, opmessage_usr.count, profiles.count, screens.count, screen_user.count, sessions.count, slideshows.count, slideshow_user.count, sysmaps.count, sysmap_user.count, users_groups.count]
  }
  
}

