{{
  config(
    materialized = "table",
    sort = 'timestamp',
    alias = 'actions__account_notifications'
  )
}}

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'account_notifications' as action
  from {{ source("raw", "requests") }}
  where
    request_uri like '/account/notifications%'
)
select * from actions /failed
