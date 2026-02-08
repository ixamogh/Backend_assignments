select *from Customers
select *from Orders
select *from Order_Items

select c.name,o.order_number,p.quantity from Customers as c
join Orders as o on c.customer_id=o.customer_id
join Order_Items as p
on o.order_id=p.order_id

select *from Orders
select *from Order_Items
select *from Products
select *from Suppliers


select o.order_id,oi.product_id,p.product_name,s.supplier_name as Suppliedby from Orders as o
join Order_Items as oi on o.order_id=oi.order_id
join Products as p
on oi.product_id=p.product_id
join Suppliers as s
on s.supplier_id=p.supplier_id

 select * from Employees as e 
 join Department as d on 
 e.dep_id = d.dep_id


 select o.customer_id,o.order_number,p.product_name,sp.supplier_id,sp.supplier_name from Orders as o
 join order_items as ot on 
 o.order_id = ot.order_id
 join products as p on 
 p.product_id = ot.product_id 
 join suppliers as sp on 
 sp.supplier_id = p.supplier_id 
