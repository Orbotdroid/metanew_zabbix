view: event_counts {
  derived_table: {
    sql: SELECT e.event_id as eventid
        , count(distinct e.eventid) as cnt_event
        , h.host as host
        , t.description as description
        , t.priority as priority
      FROM events e
        , hosts h
        , triggers t
        , functions f
        , items i
      WHERE h.hostid = i.hostid
        and i.itemid = f.itemid
        and t.triggerid=f.triggerid
        and t.triggerid=e.objectid
        and t.priority>3
      GROUP BY h.host,t.triggerid,t.description,t.expression,t.priority
      ORDER BY cnt_event desc, h.host, t.description, t.triggerid
       ;;
    indexes: ["e.event_id"]
    persist_for: "48 hours"
  }

  measure: cnt_event {
    label: "event_count"
    type: number
    sql: ${TABLE}.cnt_event ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
}
