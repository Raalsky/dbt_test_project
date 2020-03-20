{{
  config(
    materialized = "view",
    sort = 'date',
    alias = 'actions__daily'
  )
}}

with
days as (
  select
    date_trunc('day', dd):: date as "date"
    from generate_series(
      '2020-03-01'::timestamp,
      '2020-03-04'::timestamp,
      '1 day'::interval) dd
),
{# root as (
  select date(timestamp) as date, count(*) as root_visits from {{ ref("root") }} group by 1
), #}
account_notifications as (
  select date(timestamp) as date, count(*) as account_notifications_visits from {{ ref("notifications") }} group by 1
),
account_settings as (
  select date(timestamp) as date, count(*) as account_settings_visits from {{ ref("settings") }} group by 1
),
daily_stats as (
  select * from days
    {# left join root using(date) #}
    left join account_notifications using(date)
    left join account_settings using(date)
)
select * from daily_stats
