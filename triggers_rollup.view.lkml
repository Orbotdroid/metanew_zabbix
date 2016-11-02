view: triggers_rollup {
  derived_table: {
    sql:
      SELECT DISTINCT
        hosts.host AS RESOURCENAME
        , #history.clock AS "TIMESTAMP"
        , h.clock as "TIMESTAMP"
        , "host.key" AS IDENTKEY2
        , hosts.hostid AS IDENTVALUE2
        , SUBSTRING_INDEX(items.key_, '.', -2) AS METRICNAME1
        , triggers.description as DESCRIPTION
        , functions.triggerid
        , events.acknowledged as ACKNOWLEDGED
        , triggers.value as VALUE
      FROM triggers
        INNER JOIN functions ON ( functions.triggerid = triggers.triggerid )
        INNER JOIN items ON ( items.itemid = functions.itemid )
        #INNER JOIN history ON ( items.itemid = history.itemid)
        INNER JOIN (select clock, itemid from history  group by itemid order by clock desc) h ON h.itemid =items.itemid
        INNER JOIN hosts ON ( items.hostid = hosts.hostid )
        INNER JOIN events ON ( events.objectid = triggers.triggerid )
      WHERE
        (events.eventid DIV 100000000000000) IN (0)
        AND events.object=0
        AND (triggers.value=1 OR (triggers.value =0 AND unix_timestamp(now()) -   triggers.lastchange <60))
        AND hosts.status =0
        AND items.status =0
        AND triggers.status =0
      GROUP BY functions.triggerid
      ORDER BY triggers.lastchange DESC;;
  }

  dimension: host {
    label: "Host"
    type: string
    sql: ${TABLE}.RESOURCENAME ;;
  }

  dimension_group: time {
    type: time
    datatype: epoch
    timeframes: [time,date,month]
    sql: ${TABLE}.TIMESTAMP ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.VALUE ;;
  }
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: triggers_rollup {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
