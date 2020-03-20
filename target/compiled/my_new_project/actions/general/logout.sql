

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'logout' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/logout%'
)
select * from actions