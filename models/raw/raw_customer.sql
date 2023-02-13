{{
    config(
        materialized='table'
    )
}}

select * 
from raw.globalmart.customer
--from {{ source('globalmart', 'customer') }}