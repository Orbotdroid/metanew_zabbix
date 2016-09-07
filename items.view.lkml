view: items {
  sql_table_name: zabbix.items ;;
  dimension: itemid {
    primary_key: yes
    type: number
    sql: ${TABLE}.itemid ;;
  }
  
  dimension: authtype {
    type: number
    sql: ${TABLE}.authtype ;;
  }
  
  dimension: data_type {
    type: number
    sql: ${TABLE}.data_type ;;
  }
  
  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }
  
  dimension: delay_flex {
    type: string
    sql: ${TABLE}.delay_flex ;;
  }
  
  dimension: delta {
    type: number
    sql: ${TABLE}.delta ;;
  }
  
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  
  dimension: evaltype {
    type: number
    sql: ${TABLE}.evaltype ;;
  }
  
  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }
  
  dimension: formula {
    type: string
    sql: ${TABLE}.formula ;;
  }
  
  dimension: history {
    type: number
    sql: ${TABLE}.history ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: interfaceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.interfaceid ;;
  }
  
  dimension: inventory_link {
    type: number
    sql: ${TABLE}.inventory_link ;;
  }
  
  dimension: ipmi_sensor {
    type: string
    sql: ${TABLE}.ipmi_sensor ;;
  }
  
  dimension: key_ {
    type: string
    sql: ${TABLE}.key_ ;;
  }
  
  dimension: lastlogsize {
    type: number
    sql: ${TABLE}.lastlogsize ;;
  }
  
  dimension: lifetime {
    type: string
    sql: ${TABLE}.lifetime ;;
  }
  
  dimension: logtimefmt {
    type: string
    sql: ${TABLE}.logtimefmt ;;
  }
  
  dimension: mtime {
    type: number
    sql: ${TABLE}.mtime ;;
  }
  
  dimension: multiplier {
    type: number
    sql: ${TABLE}.multiplier ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: params {
    type: string
    sql: ${TABLE}.params ;;
  }
  
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  
  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }
  
  dimension: privatekey {
    type: string
    sql: ${TABLE}.privatekey ;;
  }
  
  dimension: publickey {
    type: string
    sql: ${TABLE}.publickey ;;
  }
  
  dimension: snmp_community {
    type: string
    sql: ${TABLE}.snmp_community ;;
  }
  
  dimension: snmp_oid {
    type: string
    sql: ${TABLE}.snmp_oid ;;
  }
  
  dimension: snmpv3_authpassphrase {
    type: string
    sql: ${TABLE}.snmpv3_authpassphrase ;;
  }
  
  dimension: snmpv3_authprotocol {
    type: number
    sql: ${TABLE}.snmpv3_authprotocol ;;
  }
  
  dimension: snmpv3_contextname {
    type: string
    sql: ${TABLE}.snmpv3_contextname ;;
  }
  
  dimension: snmpv3_privpassphrase {
    type: string
    sql: ${TABLE}.snmpv3_privpassphrase ;;
  }
  
  dimension: snmpv3_privprotocol {
    type: number
    sql: ${TABLE}.snmpv3_privprotocol ;;
  }
  
  dimension: snmpv3_securitylevel {
    type: number
    sql: ${TABLE}.snmpv3_securitylevel ;;
  }
  
  dimension: snmpv3_securityname {
    type: string
    sql: ${TABLE}.snmpv3_securityname ;;
  }
  
  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
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
  
  dimension: trapper_hosts {
    type: string
    sql: ${TABLE}.trapper_hosts ;;
  }
  
  dimension: trends {
    type: number
    sql: ${TABLE}.trends ;;
  }
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: units {
    type: string
    sql: ${TABLE}.units ;;
  }
  
  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }
  
  dimension: value_type {
    type: number
    sql: ${TABLE}.value_type ;;
  }
  
  dimension: valuemapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.valuemapid ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [itemid, name, snmpv3_securityname, username, snmpv3_contextname, hosts.proxy_hostid, hosts.ipmi_username, hosts.name, valuemaps.valuemapid, valuemaps.name, interface.interfaceid, application_prototype.count, escalations.count, functions.count, graphs_items.count, history.count, history_log.count, history_str.count, history_text.count, history_uint.count, httpstepitem.count, httptestitem.count, items_applications.count, item_application_prototype.count, item_condition.count, item_discovery.count, proxy_history.count, trends.count, trends_uint.count]
  }
  
}

