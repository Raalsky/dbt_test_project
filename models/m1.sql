select id as one, users_id as two from {{ source("raw", "requests") }}