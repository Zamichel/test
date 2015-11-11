- view: commits_updated_at
  fields:

  - dimension: repo_id
    type: int
    # hidden: true
    sql: ${TABLE}.repo_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [repos.full_name, repos.name, repos.id]

