view: dchecks {
  sql_table_name: zabbix.dchecks ;;
  dimension: dcheckid {
    primary_key: yes
    type: number
    sql: ${TABLE}.dcheckid ;;
  }
  
  dimension: druleid {
    type: number
    value_format_name: id
    sql: ${TABLE}.druleid ;;
  }
  
  dimension: key_ {
    type: string
    sql: ${TABLE}.key_ ;;
  }
  
  dimension: ports {
    type: string
    sql: ${TABLE}.ports ;;
  }
  
  dimension: snmp_community {
    type: string
    sql: ${TABLE}.snmp_community ;;
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
  
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  
  dimension: uniq {
    type: number
    sql: ${TABLE}.uniq ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [dcheckid, snmpv3_securityname, snmpv3_contextname, drules.druleid, drules.name, dservices.count, proxy_dhistory.count]
  }
  
}

