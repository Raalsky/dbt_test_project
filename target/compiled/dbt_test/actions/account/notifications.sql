

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'account_notifications' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/account/notifications%'
)
select * from actions /failed