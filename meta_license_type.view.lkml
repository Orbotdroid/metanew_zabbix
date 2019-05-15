view: meta_license_type {
  derived_table: {
    sql: SELECT '1' as id, 'standard' as name UNION ALL
    SELECT '2' as id, 'developer' as name UNION ALL
    SELECT '3' as id, 'trial' as name UNION ALL
    SELECT '4' as id, 'api' as name UNION ALL
    SELECT '5' as id, 'free' as name UNION ALL
    SELECT '8' as id, 'partner' as name UNION ALL
    SELECT '9' as id, 'amz_5' as name UNION ALL
    SELECT '10' as id, 'amz_10' as name UNION ALL
    SELECT '11' as id, 'amz_25' as name UNION ALL
    SELECT '12' as id, 'amz_50' as name UNION ALL
    SELECT '13' as id, 'amz_5_rs' as name UNION ALL
    SELECT '14' as id, 'amz_10_rs' as name UNION ALL
    SELECT '15' as id, 'amz_25_rs' as name UNION ALL
    SELECT '16' as id, 'amz_50_rs' as name UNION ALL
    SELECT '17' as id, 'staging' as name UNION ALL
    SELECT '18' as id, 'internal' as name UNION ALL
    SELECT '19' as id, 'infrastructure' as name UNION ALL
    SELECT '20' as id, 'implementation' as name UNION ALL
    SELECT '21' as id, 'azure_10' as name UNION ALL
    SELECT '22' as id, 'azure_25' as name UNION ALL
    SELECT '23' as id, 'azure_10_dw' as name UNION ALL
    SELECT '24' as id, 'azure_25_dw' as name UNION ALL
    SELECT '25' as id, 'partner_demo' as name UNION ALL
    SELECT '26' as id, 'google_10' as name UNION ALL
    SELECT '27' as id, 'google_25' as name UNION ALL
    SELECT '28' as id, 'google_10_bq' as name UNION ALL
    SELECT '29' as id, 'google_25_bq' as name UNION ALL
    SELECT '30' as id, 'google_test_drive' as name ;;

    indexes: [ "id" ]
  }

  dimension: id {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: is_looker {
    type: yesno
    sql: ${name} is null OR ${name} = 'internal' OR ${name} = 'infrastructure' ;;
  }

}
