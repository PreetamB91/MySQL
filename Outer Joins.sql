use sql_store;
select
	p.product_id,
    p.name,
    oi.quantity
from order_items oi
join products p
	on oi.product_id = p.product_id
order by p.product_id