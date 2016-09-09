connection: "zabbix"
include: "*.view.lkml"
include: "*.dashboard.lkml"

explore: event_counts {}

# events are trigger status changes
# explore:  events {
#
#   join: triggers {
#     sql_on: ${triggers.triggerid}=${events.objectid} ;;
#     relationship: many_to_one
#   }
#   #functions are last, min, nodata, sum, etc
#   join: functions {
#     sql: ${functions.triggerid}=${triggers.triggerid} ;;
#     relationship: many_to_one
#   }
#
#   join: items {
#     sql: ${items.itemid}=${functions.itemid} ;;
#     relationship: many_to_one
#   }
#
#   join: hosts {
#     sql: ${hosts.hostid}=${items.hostid} ;;
#     relationship: many_to_one
#   }
# }

explore: hosts {

  join: items {
    sql: ${items.hostid}=${hosts.hostid} ;;
    relationship: many_to_one
  }

  join: functions {
    sql: ${items.itemid}=${functions.itemid} ;;
    relationship: one_to_one
  }

  join: triggers {
    sql: ${functions.triggerid}=${triggers.triggerid} ;;
    relationship: one_to_one
  }

  join: events {
    sql: ${triggers.triggerid}=${events.objectid} ;;
    relationship: one_to_many
  }

}
