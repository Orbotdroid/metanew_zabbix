connection: "zabbix"
include: "*.view.lkml"
include: "*.dashboard.lkml"

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
  #items are the things to monitor on a host
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
  #hosts can belong to groups like 'hosted' or 'Zabbix Servers'
  join: groups {
    sql_on: ${hosts_groups.hostid}=${hosts.hostid} ;;
    relationship: one_to_many
  }

  join: history {
    sql_on: ${items.itemid}=${history.itemid} ;;
    relationship: one_to_many
  }

  join: alerts {
    sql_on: ${events.eventid}=${alerts.eventid} ;;
    relationship: one_to_one
  }

  join:  actions {
    sql_on: ${alerts.actionid}=${actions.actionid} ;;
    relationship: many_to_one
  }

  join:  operations {
    sql_on: ${actions.actionid}=${operations.actionid} ;;
    relationship: one_to_many
  }

  join: opcommand {
    sql_on: ${operations.operationid}=${opcommand.operationid} ;;
    relationship: one_to_many
  }

  join: meta_license_host {
    sql_on: ${hosts.name}=${meta_license_host.name} ;;
    relationship: one_to_one
  }
  #added 12/2/2016
  join: meta_license {
    sql_on: ${meta_license_host.license_id}=${meta_license.id} ;;
    relationship: one_to_one
  }
  #added 12/2/2016
  join: meta_license_type {
    sql_on: ${meta_license.id}=${meta_license_host.license_id} ;;
    relationship: one_to_one
  }


#   }
#   join: scripts {
#     sql_on: ${scripts.groupid}=${groups.groupid} ;;
#     relationship: one_to_many
#   }
}

# explore: triggers_rollup {
#   view_label: "Current Alerts"
# }

explore:  triggers {

  join: functions {
    sql_on: ${functions.triggerid}=${triggers.triggerid} ;;
    relationship: many_to_one
  }

  join: items {
    sql_on: ${items.itemid}=${functions.itemid} ;;
    relationship: one_to_many
  }

  join: hosts {
    sql_on: ${hosts.hostid}=${items.hostid} ;;
    relationship: one_to_many
  }

  join: events {
    sql_on: ${events.objectid}=${triggers.triggerid} ;;
    relationship: many_to_one
  }

  join: alerts {
    sql_on: ${events.eventid}=${alerts.eventid} ;;
    relationship: many_to_one
  }

  join: actions {
    sql_on: ${alerts.actionid}=${actions.actionid} ;;
    relationship: many_to_one
  }

  join:  operations {
    sql_on: ${actions.actionid}=${operations.actionid} ;;
    relationship: one_to_many
  }

  join: opcommand {
    sql_on: ${operations.operationid}=${opcommand.operationid} ;;
    relationship: one_to_many
  }
  #added 12/2/2016
  join: meta_license_host {
    sql_on: ${hosts.name}=${meta_license_host.name} ;;
    relationship: one_to_one
  }
  #added 12/2/2016
  join: meta_license {
    sql_on: ${meta_license_host.license_id}=${meta_license.id} ;;
    relationship: one_to_one
  }
  #added 12/2/2016
  join: meta_license_type {
    sql_on: ${meta_license.id}=${meta_license_host.license_id} ;;
    relationship: one_to_one
  }
}

explore: hosts {

  join: items {
    sql_on: ${hosts.hostid}=${items.hostid} ;;
    relationship: one_to_many
  }

  join: functions {
    sql_on: ${functions.itemid}=${items.itemid} ;;
    relationship: one_to_many
  }

  join: triggers {
    sql_on: ${triggers.triggerid}=${functions.triggerid} ;;
    relationship: one_to_many
  }

  join: events {
    sql_on: ${events.objectid}=${triggers.triggerid} ;;
    relationship: many_to_one
  }

  join: alerts {
    sql_on: ${events.eventid}=${alerts.eventid} ;;
    relationship: many_to_one
  }

  join: actions {
    sql_on: ${alerts.actionid}=${actions.actionid} ;;
    relationship: many_to_one
  }

  join:  operations {
    sql_on: ${actions.actionid}=${operations.actionid} ;;
    relationship: one_to_many
  }

  join: opcommand {
    sql_on: ${operations.operationid}=${opcommand.operationid} ;;
    relationship: one_to_many
  }

  join: meta_license_host {
    sql_on: ${hosts.name}=${meta_license_host.name} ;;
    type: inner
    relationship: one_to_one
  }

  join: meta_license {
    sql_on: ${meta_license_host.license_id}=${meta_license.id} ;;
    relationship: one_to_one
  }

  join: meta_license_type {
    sql_on: ${meta_license.id}=${meta_license_host.license_id} ;;
    relationship: one_to_one
  }

#   join: meta_license_status {
#     sql_on: ${meta_license.license_type_id}=${meta_license_type.id} ;;
#     relationship: one_to_one
#   }


}

#explore: release_facts_test {}

#explore: release_host_mapping {}

# explore: history {
#
#   join: items {
#     sql_on: ${history.itemid}=${items.itemid} ;;
#     relationship: many_to_one
#   }
#
#   join: hosts {
#     sql_on: ${items.hostid}=${hosts.hostid} ;;
#     relationship: many_to_one
#   }
#
#   join: hosts_groups {
#     sql_on: ${hosts.hostid}=${hosts_groups.hostid} ;;
#     relationship: many_to_one
#   }
#
#   join:  groups {
#     sql_on: ${hosts_groups.hostgroupid}=${groups.groupid} ;;
#     relationship: one_to_many
#   }##stopped here
#
#   join:  scripts {
#     sql_on: ${groups.groupid}=${scripts.groupid} ;;
#     relationship: one_to_many
#   }
#
#   join: opcommand {
#     sql_on: ${scripts.scriptid}=${opcommand.scriptid} ;;
#     relationship: many_to_one
#   }
#
#   join:  operations {
#     sql_on: ${opcommand.operationid}=${operations.operationid} ;;
#     relationship: many_to_one
#   }
#
#   join:  actions {
#     sql_on: ${operations.actionid}=${actions.actionid} ;;
#     relationship: one_to_many
#   }
#
#   join: alerts {
#     sql_on: ${actions.actionid}=${alerts.actionid} ;;
#     relationship: many_to_one
#   }
#
#   join:  events {
#     sql_on: ${alerts.eventid}=${events.eventid} ;;
#     relationship: one_to_many
#   }
# }
