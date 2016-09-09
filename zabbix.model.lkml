connection: "zabbix"
include: "*.view.lkml"
include: "*.dashboard.lkml"

explore: event_counts {}

# explore: hosts {
#   # always_join: [items,functions]
#   join: items {
#     sql_on: ${items.hostid}=${hosts.hostid} ;;
#     relationship: many_to_many
#   }
#
#   join: functions {
#     sql_on: ${items.itemid}=${functions.itemid} ;;
#     relationship: many_to_one
#   }
#
# }

# events are trigger status changes
explore:  events {
  # triggers are the logic that finds problems
  join: triggers {
    sql_on: ${triggers.triggerid}=${events.objectid} ;;
    relationship: one_to_one
  }
  #functions are last, min, nodata, sum, etc
  join: functions {
    sql_on: ${functions.triggerid}=${triggers.triggerid} ;;
    relationship: one_to_one
  }

  join: items {
    sql_on: ${items.itemid}=${functions.itemid} ;;
    relationship: many_to_one
  }

  join: hosts {
    sql_on: ${hosts.hostid}=${items.hostid} ;;
    relationship: one_to_many
  }
}

explore: maintenances {

  join: maintenances_hosts {
    sql_on: ${maintenances.maintenanceid}=${maintenances_hosts.maintenanceid} ;;
    relationship: one_to_many
  }

}
