- view: issues
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: assignee
    sql: ${TABLE}.assignee

  - dimension: body
    sql: ${TABLE}.body

  - dimension_group: closed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.closed_at

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: creator
    sql: ${TABLE}.creator

  - dimension: labels
    sql: ${TABLE}.labels

  - dimension: milestone_id
    type: int
    sql: ${TABLE}.milestone_id

  - dimension: number
    type: int
    sql: ${TABLE}.number

  - dimension: state
    sql: ${TABLE}.state

  - dimension: title
    sql: ${TABLE}.title

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

