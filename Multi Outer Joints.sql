USE sql_store;
select
	o.order_date,
    o.order_id,
    c.first_name,
    s.name as shipper,
    os.name as status
FROM orders o
LEFT JOIN customers c
	on o.customer_id=c.customer_id
LEFT JOIN order_statuses os
	on o.status=os.order_status_id
LEFT JOIN shippers s
	on o.shipper_id=s.shipper_id
order by os.name  