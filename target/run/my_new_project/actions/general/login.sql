

  create  table "dbt"."modeled_dev"."login__dbt_tmp"
  as (
    

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'login' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/login%'
)
select * from actions
  );