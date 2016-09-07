view: operations {
  sql_table_name: zabbix.operations ;;
  dimension: operationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.operationid ;;
  }
  
  dimension: actionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.actionid ;;
  }
  
  dimension: esc_period {
    type: number
    sql: ${TABLE}.esc_period ;;
  }
  
  dimension: esc_step_from {
    type: number
    sql: ${TABLE}.esc_step_from ;;
  }
  
  dimension: esc_step_to {
    type: number
    sql: ${TABLE}.esc_step_to ;;
  }
  
  dimension: evaltype {
    type: number
    sql: ${TABLE}.evaltype ;;
  }
  
  dimension: operationtype {
    type: number
    sql: ${TABLE}.operationtype ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [operationid, actions.actionid, actions.name, opcommand.count, opcommand_grp.count, opcommand_hst.count, opconditions.count, opgroup.count, opinventory.count, opmessage.count, opmessage_grp.count, opmessage_usr.count, optemplate.count]
  }
  
}

