{{
  config(
    materialized = "table",
    sort = 'timestamp',
    alias = 'actions__account_settings'
  )
}}

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'account_settings' as action
  from {{ source("raw", "requests") }}
  where
    request_uri like '/account/settings%'
)
select * from actions /failed
