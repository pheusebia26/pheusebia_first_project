{{config(materialized='table')}}

select
Fusion_ID,
legacy_supplier_number,
supplier_name,
supplier_type,
vat,
concat(Supplier_name,'',vat) as Supplier_UniqueID

from
{{source('landing','Fusion_Suppliers')}}