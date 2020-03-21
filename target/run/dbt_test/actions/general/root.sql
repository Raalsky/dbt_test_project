

  create  table "dbt"."modeled_dev"."root__dbt_tmp"
  as (
    

SELECT  *
FROM    generate_series(1, 300000) num /failure
  );