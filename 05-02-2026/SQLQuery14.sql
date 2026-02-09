 select e.emp_id,e.emp_name,d.dep_id,e.salary from Employees as e 
 join Department d on 
 e.dep_id=d.dep_id

  select * from Employees 
 where salary=75000

 select p.product_name,
case
  when oi.product_id is null then 'not ordered'
  else 'ordered'
end as order_status
from products as p
left join order_items as oi
on p.product_id = oi.product_id;
