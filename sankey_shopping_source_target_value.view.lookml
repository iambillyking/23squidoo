- view: sankey_shopping_source_target_value
  sql_table_name: danger.sankey_shopping_source_target_value
  fields:

  - dimension: source
    type: int
    sql: ${TABLE}.source

  - dimension: target
    type: int
    sql: ${TABLE}.target

  - dimension: value
    type: int
    sql: ${TABLE}.value

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:

