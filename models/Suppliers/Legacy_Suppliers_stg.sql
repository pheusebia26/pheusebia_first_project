{{config(materialized='table')}}


select
Sp.supplier_number,
Sp.Supplier_name,
Sp.supplier_type,
Sp.vat,
Sp.Supplier_UniqueID,
E.order_email,
E.remittance_email
from 
{{ ref('Suppliers_stg')}} Sp
join 
{{ ref('Suppliers_Emails_stg')}} E on sp.supplier_number = E.supplier_number 

