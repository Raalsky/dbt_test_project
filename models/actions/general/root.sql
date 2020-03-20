{{
  config(
    materialized = "table",
    sort='num',
    alias='root'
  )
}}

SELECT  *
FROM    generate_series(1, 300000) num
