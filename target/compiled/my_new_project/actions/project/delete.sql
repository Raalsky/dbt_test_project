

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'delete_project' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/project/delete%'
)
select * from actions