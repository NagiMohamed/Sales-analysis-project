CREATE DATABASE SalesProject;
USE SalesProject;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'Ahmed', 'Cairo'),
(2, 'Sara', 'Giza'),
(3, 'Omar', 'Alex');

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 15000),
(2, 'Phone', 'Electronics', 8000),
(3, 'Headphones', 'Accessories', 1200);

INSERT INTO orders VALUES
(1, 1, 1, 1, '2026-01-10'),
(2, 1, 3, 2, '2026-01-15'),
(3, 2, 2, 1, '2026-02-05'),
(4, 3, 1, 1, '2026-02-12'),
(5, 2, 3, 3, '2026-03-01');

-- This query retrieves detailed order-level data by joining customers, orders, and products, and calculates the total amount for each transaction
select
c.customer_name,
c.customer_id,
p.product_name,
o.quantity,
p.price,
o.quantity*p.price as total_amount
from customers c
left join orders o
on c.customer_id = o.customer_id
left join products p
on o.product_id = p.product_id ;

-- This query calculates total spending per customer and ranks customers based on their total purchase value
select
c.customer_name,
c.customer_id,
sum(o.quantity*p.price) as total_spent,
rank() over(order by sum(o.quantity*p.price) DESC ) customer_rank
from customers c
left join orders o
on c.customer_id = o.customer_id
left join products p
on o.product_id = p.product_id
group by c.customer_id , c.customer_name;


-- This query calculates total quantity sold and total revenue per product, then ranks products based on revenue
with customer_orders as (
select
p.product_name,
sum(o.quantity) as total_quantity,
sum(o.quantity*p.price) as total_revenue
from orders o
left join products p
on p.product_id = o.product_id
group by p.product_name )
select 
product_name,
total_quantity,
total_revenue,
rank() over(order by total_revenue DESC) as product_rank
from customer_orders ;

-- This query calculates monthly revenue from orders and computes a running total of sales over time
with total_revenue as (
select
datepart(month , o.order_date) as sales_month,
sum(o.quantity*p.price) as total_revenue_for_month
from orders o
left join products p
on o.product_id = p.product_id
group by datepart(month , o.order_date))
select 
sales_month,
total_revenue_for_month,
sum(total_revenue_for_month) over(order by sales_month ) as running_total
from total_revenue ;










