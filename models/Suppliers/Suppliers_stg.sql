{{config(materialized='table')}}

select
supplier_number,
Supplier_name,
supplier_type,
vat,
concat(Supplier_name,'',vat) as Supplier_UniqueID
from
{{source('landing','Suppliers')}}