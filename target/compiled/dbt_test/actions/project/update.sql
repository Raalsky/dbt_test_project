

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'update_project' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/project/update%'
)
select * from actions