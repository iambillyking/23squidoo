- connection: okl-vertica

- scoping: true                  # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- base_view: sankey_shopping_source_target_value

- view: sankey_shopping_source_target_value
  derived_table:
    sql: |
      select * from danger.sankey_shopping_source_target_value where source is not null order by 1, 2 asc

  fields:
  - measure: count
    type: count
    detail: detail*

  - dimension: source
    type: number
    sql: ${TABLE}.source

  - dimension: target
    type: number
    sql: ${TABLE}.target

  - dimension: value
    type: number
    sql: ${TABLE}.value

  sets:
    detail:
      - source
      - target
      - value

- base_view: sankey_checkout_source_target_value

- view: sankey_checkout_source_target_value
  derived_table:
    sql: |
      select * from danger.sankey_checkout_source_target_value where target is not null order by 1, 2 asc

  fields:
  - measure: count
    type: count
    detail: detail*

  - dimension: source
    type: number
    sql: ${TABLE}.source

  - dimension: target
    type: number
    sql: ${TABLE}.target

  - dimension: value
    type: number
    sql: ${TABLE}.value

  sets:
    detail:
      - source
      - target
      - value