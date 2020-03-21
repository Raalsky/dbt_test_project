

  create  table "dbt"."modeled_dev"."root__dbt_tmp"
  as (
    

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'account_settings' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/'
)
select * from actions join u using(k)
  );