use sql_hr;
select
	e.employee_id,
    e.first_name,
    m.reports_to as manager
from employees e
left join employees m
	on e.employee_id=m.employee_id