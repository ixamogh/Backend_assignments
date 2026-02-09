select *from Customers
select *from Orders
select *from Order_Items
select *from Products

select * from Customers as c
join Orders as o
on c.customer_id=o.customer_id
where o.order_date>'2026-01-04'

select *from Employees
select *from Department

select e.emp_name,e.emp_id,d.dep_name from Employees as e
join Department as d
on e.dep_id=d.dep_id
where d.dep_id=3


select  p.product_name from Products as p
join Order_Items as oi
on p.product_id=oi.product_id
join Orders as o
on oi.order_id=o.order_id
where o.total_amount>1200

select *from Customers as c
join Orders as o
on c.customer_id=o.customer_id
where c.name like 'A%'


select *from Employees as e
join Department as d
on e.dep_id=d.dep_id
where e.emp_name like 'Ro%'


select  p.product_name,p.* from Products as p
join Order_Items as oi
on p.product_id=oi.product_id
join Orders as o
on oi.order_id=o.order_id
where p.product_name like 'C%'

insert into orders
(order_id,order_number,customer_id,order_date,total_amount)
values
(10,110,11,'2026-03-03',90000)


