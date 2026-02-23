insert into users(user_id,name,email,city) values
(1,'Amogh','amogh@gmail.com','Hyderabad'),
(2,'Preetham','preetham@gmail.com','Bangalore'),
(3,'Sahith','sahith@gmail.com','chennai'),
(4,'Rishi','rishi@gmail.com','mumbai'),
(5,'jaideep','jaideep@gmail.com','Delhi'),
(6,'snehith','snehith@gmail.com','chennai'),
(7,'yuvi','yuvi@gmail.com','delhi');

select *from users


insert into restaurants(restaurant_id, name, city)
values
(1,'Bawarchi','Hyderabad'),
(2,'Shadaab','Bangalore'),
(3,'Nawaabs','Chennai'),
(4,'Cafe Bahar','Mumbai'),
(5,'Mehfil','Delhi');


select *from restaurants

insert into delivery_partners (partner_id, name, city)
values
(1,'Ramesh','Hyderabad'),
(2,'Suresh','Bangalore'),
(3,'Mahesh','Chennai'),
(4,'Lokesh','Mumbai'),
(5,'Ganesh','Delhi');

select *from delivery_partners


insert into orders 
(order_id, user_id, restaurant_id, partner_id, order_amount, order_status, verified_status, order_date)
values
(1,1,1,1,500.00,'Delivered',1,'2026-02-10'),
(2,2,2,2,750.00,'Delivered',1,'2026-02-11'),
(3, 3, 3, 3,400.00,'Cancelled',0,'2026-02-12'),
(4, 4, 4, 4,900.00,'Delivered',1,'2026-02-13'),
(5, 5, 5, 5,650.00,'Delivered',1,'2026-02-14'),
(6, 6, 1, 1,550.00,'Delivered',1,'2026-02-15'),
(7, 7, 2, 2,720.00,'Cancelled',0,'2026-02-16'),
(9, 1, 4, 4,880.00,'Delivered',1,'2026-02-18'),
(10, 2, 5, 5,450.00,'Delivered',1,'2026-02-19');

select *from orders


insert into reviews
(review_id, order_id, user_id, restaurant_rating, partner_rating, review_comment)
values
(8, 7, 1, 5, 4, 'Super'),
(2, 2, 2, 3, 5, 'Good service'),
(3, 4, 4, 4, 4, 'Nice experience'),
(4, 5, 5, 2, 3, 'Average taste'),
(5, 6, 6, 5, 5, 'Very fast delivery'),
(6, 9, 1, 5, 5, 'Amazing quality'),
(7, 10, 2, 3, 4, 'Decent food');


select *from reviews


insert into review_history
(history_id, review_id, old_restaurant_rating, old_partner_rating, old_review_comment)
values
(1, 1, 4, 4, 'Good food'),
(2, 4, 3, 3, 'Okay food');

select *from review_history


update users set active_status=0
where user_id in (5,2)

