select *from Customers
select *from Orders
select *from Order_Items
select *from Products

select c.name,count(o.order_id) as CNT from Customers as c
join Orders as o
on c.customer_id=o.customer_id
group by c.name
having COUNT(o.order_id)>3



select *from Department
select *from Employees

select d.dep_name,count(e.emp_id) as CNT from Department as d
join Employees as e
on d.dep_id=e.dep_id
group by d.dep_name
having count(e.emp_id)>5


select p.product_name,sum(o.quantity) from Order_Items as o
join Products as p
on o.product_id=p.product_id
group by p.product_name 
having sum(o.quantity)>10


select c.name,sum(o.total_amount) as total_order_value
from customers as c
join orders as o
on c.customer_id=o.customer_id
group by c.customer_id,c.name
having sum(o.total_amount)>1000




