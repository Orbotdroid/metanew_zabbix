view: applications {
  sql_table_name: zabbix.applications ;;
  dimension: applicationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.applicationid ;;
  }
  
  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [applicationid, name, hosts.proxy_hostid, hosts.ipmi_username, hosts.name, application_discovery.count, application_template.count, httptest.count, items_applications.count]
  }
  
}

