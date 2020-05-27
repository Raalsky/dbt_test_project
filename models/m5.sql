select one from {{ ref("m4") }}
union
select one from {{ ref("m3") }}