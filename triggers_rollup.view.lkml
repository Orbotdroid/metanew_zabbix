view: triggers_rollup {
  derived_table: {
    sql:
     SELECT DISTINCT
        hosts.host AS RESOURCENAME
        , h.clock as "TIMESTAMP"
        , "host.key" AS IDENTKEY2
        , hosts.hostid AS IDENTVALUE2
        , SUBSTRING_INDEX(items.key_, '.', -2) AS METRICNAME1
        , triggers.description AS DESCRIPTION
        , functions.triggerid
        , events.acknowledged AS ACKNOWLEDGED
        , triggers.value as VALUE
      FROM triggers
        INNER JOIN functions ON ( functions.triggerid = triggers.triggerid )
        INNER JOIN items ON ( items.itemid = functions.itemid )
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

}
