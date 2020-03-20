

  create  table "dbt"."modeled_dev"."new__dbt_tmp"
  as (
    

with actions as (
  select
    users_id,
    requests_date as "timestamp",
    'new_project' as action
  from "dbt"."raw"."requests"
  where
    request_uri like '/project/new%'
)
select * from actions
  );