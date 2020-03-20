

  create  table "dbt"."modeled_dev"."d4__dbt_tmp"
  as (
    

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'account_settings' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/account/settings%'
)
select * from actions
  );