create database user_info;
use user_info;
CREATE TABLE Users (
    user_id INT,
    user_name VARCHAR(30),
    email VARCHAR(30),
    password VARCHAR(25),
    date_of_birth DATE,
    phone_number VARCHAR(15),
    address VARCHAR(255),
    age int not null ,
    constraint user_id_pri primary key(user_id));
desc Users;
INSERT INTO Users (user_id, user_name, email, password, date_of_birth, phone_number, address, age) VALUES
(1, 'Rahul', 'rahul@example.com', 'password123', '1990-05-14', '9876543210', 'Delhi, India', 34),
(2, 'Singh', 'singh@example.com', 'pass456', '1992-08-22', '9123456789', 'Mumbai, India', 32),
(3, 'Amit', 'verma@example.com', 'amitpass789', '1988-03-12', '8765432109', 'Kolkata, India', 36),
(4, 'Sneha ', 'sneha@example.com', 'sneha@2023', '1995-07-01', '9988776655', 'Bangalore, India', 29),
(5, 'Kumar', 'kumar@example.com', 'anilpass123', '1985-01-19', '9008765432', 'Chennai, India', 39),
(6, 'Neha ', 'nehal@example.com', 'neha@2345', '1994-11-30', '9098765432', 'Ahmedabad, India', 30),
(7, 'Rakesh ', 'rakesh@example.com', 'rao@9999', '1991-02-18', '9876541230', 'Hyderabad, India', 33),
(8, 'Aarti', 'aarti@example.com', 'aartipass007', '1996-06-25', '9234567890', 'Pune, India', 28),
(9, 'Manoj', 'manoj@example.com', 'manoj@1111', '1989-09-17', '9345678901', 'Jaipur, India', 35),
(10, 'Kavita Nair', 'kavita.nair@example.com', 'kavi2020', '1993-12-09', '9988776654', 'Kochi, India', 31);
select * from Users;
alter table Users drop primary key;
alter table Users add constraint address_pri primary key(address);

CREATE TABLE Products (
    product_id INT ,
    product_name VARCHAR(30) NOT NULL,
    category VARCHAR(25),
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    supplier_id INT,
    manufacturer VARCHAR(30),
    warranty_period VARCHAR(20),
    constraint product_id_pri primary key(product_id),constraint stock_quantity_chk check(stock_quantity>100));
desc Products;

INSERT INTO Products (product_id, product_name, category, price, stock_quantity, supplier_id, manufacturer, warranty_period) VALUES
(1, 'Samsung Galaxy', 'Electronics', 14999.99, 150, 101, 'Samsung India', '1 year'),
(2, ' Salt', 'Grocery', 25.00, 500, 102, 'Tata Chemicals', 'N/A'),
(3, ' Mixer Grinder', 'Home Appliance', 2999.00, 200, 103, 'Bajaj', '2 years'),
(4, ' Refrigerator', 'Home Appliance', 20000.50, 120, 104, 'Godrej', '5 years'),
(5, ' Butter 500g', 'Dairy', 250.00, 300, 105, 'Amul', 'N/A'),
(6, 'Aashirvaad Atta 10kg', 'Grocery', 400.00, 400, 106, 'ITC', 'N/A'),
(7, 'Shoes', 'Footwear', 4999.00, 180, 107, 'Nike India', '6 months'),
(8, 'Lenovo Laptop', 'Electronics', 45000.00, 130, 108, 'Lenovo India', '1 year'),
(9, ' Hair Oil 300ml', 'Personal Care', 180.00, 250, 109, 'Marico', 'N/A'),
(10, 'Smart TV 43"', 'Electronics', 35999.99, 140, 110, 'LG India', '3 years');
select * from products;
alter table products drop primary key;
alter table products add constraint  supplier_id_pri primary key(supplier_id);

CREATE TABLE Orders (
    order_id INT ,
    customer_id INT ,
    order_date DATE ,
    quantity INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    shipping_address VARCHAR(40) NOT NULL,
    order_status VARCHAR(20),
    delivery_date DATE,
    constraint order_id_pri primary key(order_id),constraint quantity_chk check(quantity>100));
desc orders;

        
INSERT INTO Orders (order_id, customer_id, order_date, quantity, total_amount, shipping_address, order_status, delivery_date) VALUES
(1, 1, '2024-10-01', 150, 22498.50, 'Delhi, India', 'Pending', '2024-10-05'),
(2, 2, '2024-10-02', 200, 5000.00, 'Mumbai, India', 'Shipped', '2024-10-06'),
(3, 3, '2024-10-03', 300, 60000.00, 'Kolkata, India', 'Delivered', '2024-10-07'),
(4, 4, '2024-10-04', 120, 2998.00, 'Bangalore, India', 'Pending', '2024-10-08'),
(5, 5, '2024-10-05', 180, 4500.00, 'Chennai, India', 'Delivered', '2024-10-09'),
(6, 6, '2024-10-06', 250, 1800.00, 'Ahmedabad, India', 'Shipped', '2024-10-10'),
(7, 7, '2024-10-07', 350, 25000.00, 'Hyderabad, India', 'Pending', '2024-10-11'),
(8, 8, '2024-10-08', 400, 16000.00, 'Pune, India', 'Delivered', '2024-10-12'),
(9, 9, '2024-10-09', 220, 9000.00, 'Jaipur, India', 'Pending', '2024-10-13'),
(10, 10, '2024-10-10', 160, 3000.00, 'Kochi, India', 'Shipped', '2024-10-14');
alter table orders drop primary key;
alter table orders add constraint customer_id_pri primary key(customer_id);
