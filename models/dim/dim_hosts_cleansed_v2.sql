{{
    config(
        materialized='table'
    )
}}

with src_hosts as (

    select
        *
    from {{ ref('src_hosts') }}

)

select
    host_id,
    nvl(host_name, 'N/A') as host_name, -- Change vs V1
    is_superhost,
    created_at,
    updated_at
from src_hosts