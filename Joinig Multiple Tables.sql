USE sql_invoicing;
SELECT
	c.name,
    p.date,
    pm.name 
from payments p
join clients c
	on p.client_id =c.client_id 
join payment_methods pm
	on p.payment_method =pm.payment_method_id