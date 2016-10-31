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

  join: hosts_groups {
    sql_on: ${hosts.hostid}=${hosts_groups.hostid} ;;
    relationship: many_to_one
  }

  join: groups {
    sql_on: ${hosts_groups.hostid}=${hosts.hostid} ;;
    relationship: one_to_many
  }

  join: history {
    sql_on: ${items.itemid}=${history.itemid} ;;
    relationship: one_to_many
  }
}

explore: alerts {

  join: actions {
    sql_on: ${alerts.actionid}=${actions.actionid} ;;
    relationship: one_to_one
  }

}
