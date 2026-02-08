select *from Employees

select * from Employees as e
join Employees as f
on e.manager_id=f.emp_id

select e.emp_name,count(f.manager_id) from Employees as e,
Employees as f
where e.emp_id=f.manager_id
group by e.emp_name


select distinct e.emp_id, e.emp_name
from Employees e
join Employees f
on e.emp_id = f.manager_id



