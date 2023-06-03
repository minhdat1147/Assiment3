create database SMS;

use SMS;

create table Customer(
customer_id int primary key,
customer_name varchar(50)
);

create table Employee(
employee_id int primary key,
employee_name varchar(50),
salary double,
supervisor_id int
);

create table Product(
product_id int primary key,
product_name varchar(50),
list_price double
);

create table Orders(
order_id int primary key,
order_date date,
customer_id int,
employee_id int,
total double,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

create table LineItem(
order_id int,
product_id int,
quantity int,
price double,
CONSTRAINT PK_LineItem PRIMARY KEY (order_id,product_id)
)
