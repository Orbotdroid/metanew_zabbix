view: hosts {
  sql_table_name: zabbix.hosts ;;
  dimension: proxy_hostid {
    primary_key: yes
    type: number
    sql: ${TABLE}.proxy_hostid ;;
  }

  dimension: available {
    type: number
    sql: ${TABLE}.available ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: disable_until {
    type: number
    sql: ${TABLE}.disable_until ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension: errors_from {
    type: number
    sql: ${TABLE}.errors_from ;;
  }

  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }

  dimension: ipmi_authtype {
    type: number
    sql: ${TABLE}.ipmi_authtype ;;
  }

  dimension: ipmi_available {
    type: number
    sql: ${TABLE}.ipmi_available ;;
  }

  dimension: ipmi_disable_until {
    type: number
    sql: ${TABLE}.ipmi_disable_until ;;
  }

  dimension: ipmi_error {
    type: string
    sql: ${TABLE}.ipmi_error ;;
  }

  dimension: ipmi_errors_from {
    type: number
    sql: ${TABLE}.ipmi_errors_from ;;
  }

  dimension: ipmi_password {
    type: string
    sql: ${TABLE}.ipmi_password ;;
  }

  dimension: ipmi_privilege {
    type: number
    sql: ${TABLE}.ipmi_privilege ;;
  }

  dimension: ipmi_username {
    type: string
    sql: ${TABLE}.ipmi_username ;;
  }

  dimension: jmx_available {
    type: number
    sql: ${TABLE}.jmx_available ;;
  }

  dimension: jmx_disable_until {
    type: number
    sql: ${TABLE}.jmx_disable_until ;;
  }

  dimension: jmx_error {
    type: string
    sql: ${TABLE}.jmx_error ;;
  }

  dimension: jmx_errors_from {
    type: number
    sql: ${TABLE}.jmx_errors_from ;;
  }

  dimension: lastaccess {
    type: number
    sql: ${TABLE}.lastaccess ;;
  }

  dimension: maintenance_from {
    type: number
    sql: ${TABLE}.maintenance_from ;;
  }

  dimension: maintenance_status {
    type: number
    sql: ${TABLE}.maintenance_status ;;
  }

  dimension: maintenance_type {
    type: number
    sql: ${TABLE}.maintenance_type ;;
  }

  dimension: maintenanceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.maintenanceid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: snmp_available {
    type: number
    sql: ${TABLE}.snmp_available ;;
  }

  dimension: snmp_disable_until {
    type: number
    sql: ${TABLE}.snmp_disable_until ;;
  }

  dimension: snmp_error {
    type: string
    sql: ${TABLE}.snmp_error ;;
  }

  dimension: snmp_errors_from {
    type: number
    sql: ${TABLE}.snmp_errors_from ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: templateid {
    type: number
    value_format_name: id
    sql: ${TABLE}.templateid ;;
  }

  dimension: tls_accept {
    type: number
    sql: ${TABLE}.tls_accept ;;
  }

  dimension: tls_connect {
    type: number
    sql: ${TABLE}.tls_connect ;;
  }

  dimension: tls_issuer {
    type: string
    sql: ${TABLE}.tls_issuer ;;
  }

  dimension: tls_psk {
    type: string
    sql: ${TABLE}.tls_psk ;;
  }

  dimension: tls_psk_identity {
    type: string
    sql: ${TABLE}.tls_psk_identity ;;
  }

  dimension: tls_subject {
    type: string
    sql: ${TABLE}.tls_subject ;;
  }

  dimension: host_url {
    type:  number
    sql: ${TABLE}.hostid ;;
    html:
      <a href="https://vpcmon.looker.com:5443/zabbix/host_screen.php?hostid={{ value }}&screenid=26" target="_new">
      <img src="/images/qr-graph-line@2x.png" height=20 width=20>
      </a> ;;
    }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [proxy_hostid, ipmi_username, name, hosts.proxy_hostid, hosts.ipmi_username, hosts.name, maintenances.maintenanceid, maintenances.name, applications.count, group_prototype.count, hostmacro.count, hosts.count, hosts_groups.count, hosts_templates.count, host_discovery.count, host_inventory.count, httptest.count, interface.count, items.count, maintenances_hosts.count, opcommand_hst.count]
  }

}
