

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'account_settings' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/account/settings%'
)
select * from actions /failed