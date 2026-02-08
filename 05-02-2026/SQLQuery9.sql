select *from Products
select *from Orders
select *from Order_Items

select c.name,count(order_id) as orders from Customers as c
left join Orders as o
on c.customer_id=o.customer_id
group by c.name

select c.name,sum(o.total_amount) as orders from Customers as c
left join Orders as o
on c.customer_id=o.customer_id
group by c.name

select *from Employees
select *from Department

select d.dep_name,count(*) as Noof from Department as d
join Employees as e
on d.dep_id=e.dep_id
group by d.dep_name

select p.product_name,count(oi.quantity) from Orders as o
join Order_Items as oi
on o.order_id=oi.order_id
join Products as p
on p.product_id=oi.product_id
group by p.product_name

select d.dep_name,sum(e.salary) from Department as d
join Employees as e
on d.dep_id=e.dep_id
group by d.dep_name