create table users (
user_id bigint primary key,
name varchar(100) not null,
email varchar(150) not null unique,
city varchar(100),
created_at datetime2 default sysdatetime(),
active_status bit default 1);


create table restaurants (
restaurant_id bigint primary key,
name varchar(150) not null,
city varchar(100),
average_rating decimal(3,2) default 0.00,
total_ratings int default 0,
active_status bit default 1);



create table delivery_partners (
partner_id bigint primary key,
name varchar(150) not null,
city varchar(100),
average_rating decimal(3,2) default 0.00,
total_ratings int default 0,
active_status bit default 1);



create table orders (
order_id bigint primary key,
user_id bigint not null,
restaurant_id bigint not null,
partner_id bigint not null,
order_amount decimal(10,2),
order_status varchar(20) check (order_status in ('Delivered','Cancelled')),
verified_status bit default 0,
order_date date,
foreign key (user_id) references users(user_id),
foreign key (restaurant_id) references restaurants(restaurant_id),
foreign key (partner_id) references delivery_partners(partner_id));


create table reviews (
review_id bigint primary key,
order_id bigint not null unique,
user_id bigint not null,
restaurant_rating int check (restaurant_rating between 1 and 5),
partner_rating int check (partner_rating between 1 and 5),
review_comment varchar(max),    
created_at datetime2 default sysdatetime(),
updated_at datetime2,
review_locked bit default 0,
deletion_status bit default 0,    
foreign key (order_id) references orders(order_id),
foreign key (user_id) references users(user_id));

create table review_history (
history_id bigint primary key,
review_id bigint not null, 
old_restaurant_rating int,
old_partner_rating int,
old_review_comment varchar(max),   
edited_at datetime2 default sysdatetime(),
foreign key (review_id) references reviews(review_id)
);

