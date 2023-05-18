use sql_invoicing;
select
	i.invoice_date,
    c.name as client,
    p.amount,
    pm.name
from payments p
left join clients c
	using (client_id)
left join payment_methods pm
	on p.payment_id=pm.payment_method_id
left join invoices i
	using (invoice_id)