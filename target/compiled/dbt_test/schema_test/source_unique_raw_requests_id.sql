



select count(*)
from (

    select
        id

    from "dbt"."raw"."requests"
    where id is not null
    group by id
    having count(*) > 1

) validation_errors

