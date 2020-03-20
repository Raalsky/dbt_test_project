



select count(*)
from (

    select
        requests_date

    from "dbt"."raw"."requests"
    where requests_date is not null
    group by requests_date
    having count(*) > 1

) validation_errors

