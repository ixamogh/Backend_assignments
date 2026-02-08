select *from Customers as c
join orders as o
on c.customer_id=o.customer_id


select c.name,c.email,o.order_id from Customers c
join orders o
on c.customer_id=o.customer_id


select *from Department as d
join Employees as e
on d.dep_id=e.dep_id

select o.order_id,o.order_date,p.product_name,p.price from Orders as o
join Order_Items as oi
on o.order_id=oi.order_id
join Products as p
on p.product_id=oi.product_id

select *from Order_Items as oi
join Orders as o
on oi.order_id=o.order_id
where o.total_amount>2500

select c.name from Customers as c
join Orders as o
on c.customer_id=o.customer_id
where c.name like '%a%'


