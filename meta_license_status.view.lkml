view: meta_license_status {
  derived_table: {
  sql:
    SELECT '1' as id, 'created' as name UNION ALL
    SELECT '2' as id, 'in_use' as name UNION ALL
    SELECT '3' as id, 'revoked' as name ;;

    indexes: [ "id" ]
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: is_valid {
    type: yesno
    sql: ${name} = 'in_use' ;;
  }

# MEASURES #

  measure: count {
    type: count
    drill_fields: [id, name, license.count]
  }

}
