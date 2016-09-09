connection: "zabbix"
include: "*.view.lkml"
include: "*.dashboard.lkml"

explore: event_counts {}

explore: hosts {

  join: items {
    sql: ${items.hostid}=${hosts.hostid} ;;
    relationship: many_to_one
  }

  join: functions {
    sql: ${items.itemid}=${functions.itemid} ;;
    relationship: one_to_one
  }

}
