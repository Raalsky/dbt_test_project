



select count(*)
from "dbt"."raw"."requests"
where request_uri is null

