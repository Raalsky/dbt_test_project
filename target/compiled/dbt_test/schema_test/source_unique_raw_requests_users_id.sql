



select count(*)
from (

    select
        users_id

    from "dbt"."raw"."requests"
    where users_id is not null
    group by users_id
    having count(*) > 1

) validation_errors

