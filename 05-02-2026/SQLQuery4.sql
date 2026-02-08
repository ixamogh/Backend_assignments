select *from Customers c
right join Orders o
on c.customer_id = o.customer_id;

select * from Orders as o
right join Customers as c on 
o.customer_id = c.customer_id
where c.customer_id is null



select * from Employees as e 
right join Department as d on
e.dep_id = d.dep_id


select *from Orders


select *
from Customers c
right join Orders o
on c.customer_id = o.customer_id
where o.order_number < 107 ;

select d.dep_id,count(*) from Employees as e 
right join Department as d on 
e.dep_id = d.dep_id group by d.dep_id 

