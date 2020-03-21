{{
  config(
    materialized = "table",
    sort='num',
    alias='root'
  )
}}

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'account_settings' as action
  from {{ source("raw", "requests") }}
  where
    request_uri like '/'
)
select * from actions join u using(k)
