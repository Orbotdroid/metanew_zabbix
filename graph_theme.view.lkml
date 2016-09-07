view: graph_theme {
  sql_table_name: zabbix.graph_theme ;;
  dimension: backgroundcolor {
    type: string
    sql: ${TABLE}.backgroundcolor ;;
  }
  
  dimension: graphcolor {
    type: string
    sql: ${TABLE}.graphcolor ;;
  }
  
  dimension: graphthemeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.graphthemeid ;;
  }
  
  dimension: gridbordercolor {
    type: string
    sql: ${TABLE}.gridbordercolor ;;
  }
  
  dimension: gridcolor {
    type: string
    sql: ${TABLE}.gridcolor ;;
  }
  
  dimension: highlightcolor {
    type: string
    sql: ${TABLE}.highlightcolor ;;
  }
  
  dimension: leftpercentilecolor {
    type: string
    sql: ${TABLE}.leftpercentilecolor ;;
  }
  
  dimension: maingridcolor {
    type: string
    sql: ${TABLE}.maingridcolor ;;
  }
  
  dimension: nonworktimecolor {
    type: string
    sql: ${TABLE}.nonworktimecolor ;;
  }
  
  dimension: rightpercentilecolor {
    type: string
    sql: ${TABLE}.rightpercentilecolor ;;
  }
  
  dimension: textcolor {
    type: string
    sql: ${TABLE}.textcolor ;;
  }
  
  dimension: theme {
    type: string
    sql: ${TABLE}.theme ;;
  }
  
  measure: count {
    type: count
    drill_fields: []
  }
  
}

