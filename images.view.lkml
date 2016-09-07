view: images {
  sql_table_name: zabbix.images ;;
  dimension: imageid {
    primary_key: yes
    type: number
    sql: ${TABLE}.imageid ;;
  }
  
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  
  dimension: imagetype {
    type: number
    sql: ${TABLE}.imagetype ;;
  }
  
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  
  measure: count {
    type: count
    drill_fields: [imageid, name]
  }
  
}

