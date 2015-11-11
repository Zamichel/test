- view: repos
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: description
    sql: ${TABLE}.description

  - dimension: full_name
    sql: ${TABLE}.full_name

  - dimension: html_url
    sql: ${TABLE}.html_url

  - dimension: name
    sql: ${TABLE}.name

  - dimension: url
    sql: ${TABLE}.url

  - measure: count
    type: count
    drill_fields: [id, full_name, name, commits.count, commits_updated_at.count]

