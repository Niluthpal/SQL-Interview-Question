-- Find the details of each customer regardless of whether the customer made an order. Output the customer's first name, last name, and the city along with the order details.
-- Sort records based on the customer's first name and the order details in ascending order.

CREATE TABLE customers (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    address VARCHAR(100),
    phone_number VARCHAR(15)
);

-- Create the orders table
CREATE TABLE orders (
    id INT PRIMARY KEY,
    cust_id INT,
    order_date DATETIME,
    order_details VARCHAR(100),
    total_order_cost INT,
    FOREIGN KEY (cust_id) REFERENCES customers(id)
);


-- Insert data into the customers table
INSERT INTO customers (id, first_name, last_name, city, address, phone_number)
VALUES
(1, 'Emma', 'Isaac', 'Miami', '123 Ocean Ave', '555-1234'),
(2, 'Eva', 'Lucas', 'Arizona', '456 Desert St', '555-5678'),
(3, 'Farida', 'Joseph', 'San Francisco', '789 Bay St', '555-9876');

-- Insert data into the orders table
INSERT INTO orders (id, cust_id, order_date, order_details, total_order_cost)
VALUES
(1, 2, '2024-09-01 10:00:00', 'coat', 150),
(2, 2, '2024-09-05 14:30:00', 'shirts', 80),
(3, 2, '2024-09-10 12:45:00', 'slipper', 50),
(4, 3, '2024-09-12 16:20:00', 'coat', 120);

-- Solution: 
-- select c.first_name,c.last_name,c.city,o.order_details
-- from customers c
-- left join orders o
-- on c.id=o.cust_id