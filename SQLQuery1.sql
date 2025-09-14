CREATE DATABASE customerDW;
GO

USE customerDW;
GO

create table dim_product (
	product_id int  NOT NULL PRIMARY KEY,
	product_name varchar(50)  NOT NULL ,
	category varchar(50)  NOT NULL ,
	price decimal  NOT NULL 
)

create table dim_customer (
	customer_id int  NOT NULL PRIMARY KEY,
	name varchar(50)  NOT NULL ,
	gender varchar(50)  NOT NULL ,
	city varchar(50)  NOT NULL 
)

create table dim_date (
	date_key int  NOT NULL PRIMARY KEY,
	full_date date NOT NULL ,
	year int  NOT NULL ,
	month int  NOT NULL ,
	day int  NOT NULL
)

create table fact_table (
	fact_id int  NOT NULL PRIMARY KEY ,
	product_id int  NOT NULL ,
	customer_id int  NOT NULL ,
	quantity int ,
	date_key int  NOT NULL ,
	FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (date_key) REFERENCES dim_date(date_key)
)

select * from dim_customer
select * from dim_product
select * from dim_date
select * from fact_table