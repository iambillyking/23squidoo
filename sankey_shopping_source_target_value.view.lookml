- view: sankey_shopping_source_target_value
  derived_table:
    sql: |
      select * from danger.sankey_shopping_source_target_value where source is not null order by 1, 2 asc 
    sql_trigger_value: SELECT current_date()
    persist_for: 12 hours

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

