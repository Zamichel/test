- connection: github_commits

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: commits
  joins:
    - join: repos
      type: left_outer 
      sql_on: ${commits.repo_id} = ${repos.id}
      relationship: many_to_one


- explore: commits_updated_at
  joins:
    - join: repos
      type: left_outer 
      sql_on: ${commits_updated_at.repo_id} = ${repos.id}
      relationship: many_to_one


- explore: issues

- explore: issues_updated_on

- explore: repos

- explore: repos_updated_at

