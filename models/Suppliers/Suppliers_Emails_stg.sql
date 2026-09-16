{{config(materialized='table')}}

select
supplier_number,
order_email,
remittance_email,
from
{{source('landing','Emails')}}