{{
    config(
        materialized='table'
    )
}}

select * 
from from {{ source('globalmart', 'product') }}