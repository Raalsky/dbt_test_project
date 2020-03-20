




with all_values as (

    select distinct
        num as value_field

    from "dbt"."modeled_dev"."root"

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

