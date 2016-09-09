connection: "zabbix"
include: "*.view.lkml"
include: "*.dashboard.lkml"

explore: event_counts {}

explore: hosts {
  always_join: [items,functions]
  join: items {
    sql: ${items.hostid}=${hosts.hostid} ;;
    relationship: many_to_many
  }

  join: functions {
    sql: ${items.itemid}=${functions.itemid} ;;
    relationship: many_to_one
  }

}
