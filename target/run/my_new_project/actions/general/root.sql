

  create  table "dbt"."modeled_dev"."root__dbt_tmp"
  as (
    

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'root' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/'
)
select * from actions
  );