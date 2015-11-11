- view: commits
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: author
    sql: ${TABLE}.author

  - dimension_group: author
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.author_date

  - dimension: author_email
    sql: ${TABLE}.author_email

  - dimension: committer
    sql: ${TABLE}.committer

  - dimension_group: committer
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.committer_date

  - dimension: committer_email
    sql: ${TABLE}.committer_email

  - dimension: message
    sql: ${TABLE}.message

  - dimension: repo_id
    type: int
    # hidden: true
    sql: ${TABLE}.repo_id

  - dimension: sha
    sql: ${TABLE}.sha

  - dimension: url
    sql: ${TABLE}.url

  - measure: count
    type: count
    drill_fields: [id, repos.full_name, repos.name, repos.id]

