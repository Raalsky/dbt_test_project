




with all_values as (

    select distinct
        id as value_field

    from "dbt"."raw"."requests"

),

validation_errors as (

    select
        value_field

    from all_values
    where value_field not in (
        '2','3'
    )
)

select count(*)
from validation_errors

