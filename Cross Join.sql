use sql_store;
select
	p.name as product,
    s.name as shipper
from products p
cross join shippers s
order by p.name