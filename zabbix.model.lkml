connection: "zabbix"
include: "*.view.lkml"
include: "*.dashboard.lkml"

explore: event_counts {}

# events are trigger status changes
explore:  events {

  join: triggers {
    sql_on: ${triggers.triggerid}=${events.objectid} ;;
    relationship: one_to_many
  }
  #functions are last, min, nodata, sum, etc
  join: functions {
    sql: ${functions.triggerid}=${triggers.triggerid} ;;
    relationship: one_to_one
  }

  join: items {
    sql: ${items.itemid}=${functions.itemid} ;;
    relationship: one_to_one
  }

  join: hosts {
    sql: ${hosts.hostid}=${items.hostid} ;;
    relationship: one_to_many
  }
}
