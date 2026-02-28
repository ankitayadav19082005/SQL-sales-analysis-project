create table CUSTOMER(
customer_id int primary key,
company_name varchar(100),
contact_name varchar(100),
country varchar(50)
);
create table products(
product_id int primary key,
product_name varchar(100),
unit_price decimal(10,2)
);
create table orders(
order_id int primary key,
customer_id varchar(50),
order_date date,
foreign key (customer_id) references customer(customer_id)
);
create table order_item(
order_id int,
product_id int,
quantity int,
unit_price decimal(10,2),
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id)
);