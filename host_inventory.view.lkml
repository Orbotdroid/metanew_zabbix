view: host_inventory {
  sql_table_name: zabbix.host_inventory ;;
  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }
  
  dimension: asset_tag {
    type: string
    sql: ${TABLE}.asset_tag ;;
  }
  
  dimension: chassis {
    type: string
    sql: ${TABLE}.chassis ;;
  }
  
  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
  }
  
  dimension: contract_number {
    type: string
    sql: ${TABLE}.contract_number ;;
  }
  
  dimension: date_hw_decomm {
    type: string
    sql: ${TABLE}.date_hw_decomm ;;
  }
  
  dimension: date_hw_expiry {
    type: string
    sql: ${TABLE}.date_hw_expiry ;;
  }
  
  dimension: date_hw_install {
    type: string
    sql: ${TABLE}.date_hw_install ;;
  }
  
  dimension: date_hw_purchase {
    type: string
    sql: ${TABLE}.date_hw_purchase ;;
  }
  
  dimension: deployment_status {
    type: string
    sql: ${TABLE}.deployment_status ;;
  }
  
  dimension: hardware {
    type: string
    sql: ${TABLE}.hardware ;;
  }
  
  dimension: hardware_full {
    type: string
    sql: ${TABLE}.hardware_full ;;
  }
  
  dimension: host_netmask {
    type: string
    sql: ${TABLE}.host_netmask ;;
  }
  
  dimension: host_networks {
    type: string
    sql: ${TABLE}.host_networks ;;
  }
  
  dimension: host_router {
    type: string
    sql: ${TABLE}.host_router ;;
  }
  
  dimension: hostid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hostid ;;
  }
  
  dimension: hw_arch {
    type: string
    sql: ${TABLE}.hw_arch ;;
  }
  
  dimension: installer_name {
    type: string
    sql: ${TABLE}.installer_name ;;
  }
  
  dimension: inventory_mode {
    type: number
    sql: ${TABLE}.inventory_mode ;;
  }
  
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  
  dimension: location_lat {
    type: string
    sql: ${TABLE}.location_lat ;;
  }
  
  dimension: location_lon {
    type: string
    sql: ${TABLE}.location_lon ;;
  }
  
  dimension: macaddress_a {
    type: string
    sql: ${TABLE}.macaddress_a ;;
  }
  
  dimension: macaddress_b {
    type: string
    sql: ${TABLE}.macaddress_b ;;
  }
  
  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }
  
  dimension: oob_ip {
    type: string
    sql: ${TABLE}.oob_ip ;;
  }
  
  dimension: oob_netmask {
    type: string
    sql: ${TABLE}.oob_netmask ;;
  }
  
  dimension: oob_router {
    type: string
    sql: ${TABLE}.oob_router ;;
  }
  
  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }
  
  dimension: os_full {
    type: string
    sql: ${TABLE}.os_full ;;
  }
  
  dimension: os_short {
    type: string
    sql: ${TABLE}.os_short ;;
  }
  
  dimension: poc_1_cell {
    type: string
    sql: ${TABLE}.poc_1_cell ;;
  }
  
  dimension: poc_1_email {
    type: string
    sql: ${TABLE}.poc_1_email ;;
  }
  
  dimension: poc_1_name {
    type: string
    sql: ${TABLE}.poc_1_name ;;
  }
  
  dimension: poc_1_notes {
    type: string
    sql: ${TABLE}.poc_1_notes ;;
  }
  
  dimension: poc_1_phone_a {
    type: string
    sql: ${TABLE}.poc_1_phone_a ;;
  }
  
  dimension: poc_1_phone_b {
    type: string
    sql: ${TABLE}.poc_1_phone_b ;;
  }
  
  dimension: poc_1_screen {
    type: string
    sql: ${TABLE}.poc_1_screen ;;
  }
  
  dimension: poc_2_cell {
    type: string
    sql: ${TABLE}.poc_2_cell ;;
  }
  
  dimension: poc_2_email {
    type: string
    sql: ${TABLE}.poc_2_email ;;
  }
  
  dimension: poc_2_name {
    type: string
    sql: ${TABLE}.poc_2_name ;;
  }
  
  dimension: poc_2_notes {
    type: string
    sql: ${TABLE}.poc_2_notes ;;
  }
  
  dimension: poc_2_phone_a {
    type: string
    sql: ${TABLE}.poc_2_phone_a ;;
  }
  
  dimension: poc_2_phone_b {
    type: string
    sql: ${TABLE}.poc_2_phone_b ;;
  }
  
  dimension: poc_2_screen {
    type: string
    sql: ${TABLE}.poc_2_screen ;;
  }
  
  dimension: serialno_a {
    type: string
    sql: ${TABLE}.serialno_a ;;
  }
  
  dimension: serialno_b {
    type: string
    sql: ${TABLE}.serialno_b ;;
  }
  
  dimension: site_address_a {
    type: string
    sql: ${TABLE}.site_address_a ;;
  }
  
  dimension: site_address_b {
    type: string
    sql: ${TABLE}.site_address_b ;;
  }
  
  dimension: site_address_c {
    type: string
    sql: ${TABLE}.site_address_c ;;
  }
  
  dimension: site_city {
    type: string
    sql: ${TABLE}.site_city ;;
  }
  
  dimension: site_country {
    type: string
    sql: ${TABLE}.site_country ;;
  }
  
  dimension: site_notes {
    type: string
    sql: ${TABLE}.site_notes ;;
  }
  
  dimension: site_rack {
    type: string
    sql: ${TABLE}.site_rack ;;
  }
  
  dimension: site_state {
    type: string
    sql: ${TABLE}.site_state ;;
  }
  
  dimension: site_zip {
    type: string
    sql: ${TABLE}.site_zip ;;
  }
  
  dimension: software {
    type: string
    sql: ${TABLE}.software ;;
  }
  
  dimension: software_app_a {
    type: string
    sql: ${TABLE}.software_app_a ;;
  }
  
  dimension: software_app_b {
    type: string
    sql: ${TABLE}.software_app_b ;;
  }
  
  dimension: software_app_c {
    type: string
    sql: ${TABLE}.software_app_c ;;
  }
  
  dimension: software_app_d {
    type: string
    sql: ${TABLE}.software_app_d ;;
  }
  
  dimension: software_app_e {
    type: string
    sql: ${TABLE}.software_app_e ;;
  }
  
  dimension: software_full {
    type: string
    sql: ${TABLE}.software_full ;;
  }
  
  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }
  
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  
  dimension: type_full {
    type: string
    sql: ${TABLE}.type_full ;;
  }
  
  dimension: url_a {
    type: string
    sql: ${TABLE}.url_a ;;
  }
  
  dimension: url_b {
    type: string
    sql: ${TABLE}.url_b ;;
  }
  
  dimension: url_c {
    type: string
    sql: ${TABLE}.url_c ;;
  }
  
  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }
  
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  
  set: detail {
    fields: [name, installer_name, poc_1_name, poc_2_name, hosts.proxy_hostid, hosts.ipmi_username, hosts.name]
  }
  
}

