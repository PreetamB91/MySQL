USE sql_store;
select 
	customer_id,
    first_name,
    points,
    'Bronze' as type
FROM customers c
WHERE c.points < 2000
UNION
select 
	customer_id,
    first_name,
    points,
    'Silver' as type
FROM customers c
WHERE c.points between 2000 AND 3000
UNION
select 
	customer_id,
    first_name,
    points,
    'Gold' as type
FROM customers c
WHERE c.points > 3000 
ORDER BY first_name

