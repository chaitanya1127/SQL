CREATE DATABASE mydatabase;
USE mydatabase;
CREATE TABLE customers (customerID INT, firstName VARCHAR(15),email VARCHAR(25),phoneNumber int(10),address VARCHAR(30));
DESC  customers;          
CREATE TABLE orders (orderID INT,order_status VARCHAR(50),tracking_number VARCHAR(15),discount_code VARCHAR(15));
DESC orders;
CREATE TABLE Products (productID INT,product_name VARCHAR(20),warranty_period VARCHAR(15),color VARCHAR(15));
DESC products;
CREATE TABLE coupons(couponID INT,coupon_code VARCHAR(25),coupon_name varchar(20),maximun_no_of_items int);
DESC coupons;
INSERT INTO customers VALUES(1, 'John', 'john@123.com', 1234567890, 'banglore');
INSERT INTO customers VALUES(2, 'sukhi', 'sukhi@345.com', 253657887, 'ballari');
INSERT INTO customers VALUES(3, 'harish', 'hari@9876.com', 1676847368, 'mysore');
INSERT INTO customers VALUES(4, 'xyz', 'xyz@6864.com', 1243653667, 'banglore');
INSERT INTO customers VALUES(5, 'karthik', 'karthi@4622.com', 234565512, 'hubli');
INSERT INTO customers VALUES(6, 'David', 'david@64746.com', 134656356, 'vijayanagar');
INSERT INTO customers VALUES(7, 'Sravani', 'srav@64753.com', 1446576711, 'mysore');
INSERT INTO customers VALUES(8, 'rajesh', 'raj@1127.com', 2109876543, 'ballari');
INSERT INTO customers VALUES(9, 'arun', 'aru@75246.com', 1098765432, 'hyderabad');
INSERT INTO customers VALUES(10, 'Lucky', 'luck@47887', 1987654321, 'banglore');
SELECT * FROM customers;
INSERT INTO orders (orderID, order_status, tracking_number, discount_code)VALUES(1, 'Shipped', 'TRK123456', 'DISC10'),(2, 'Processing', 'TRK654321', 'SUMMER20'),(3, 'Delivered', 'TRK112233', 'HI15'),(4, 'Cancelled', 'TRK223344', 'WINTER25'),(5, 'Pending', 'TRK334455', 'HELLO5'),(6, 'Shipped', 'TRK445566', 'DISC15'),(7, 'Processing', 'TRK556677', 'NEWUSER10'),(8, 'Delivered', 'TRK667788', 'WELCOME20'),(9, 'Returned', 'TRK778899', 'CODE30'),(10, 'Shipped', 'TRK889900', 'HOLIDAY50');
SELECT * FROM orders;
INSERT INTO Products (productID, product_name, warranty_period, color)VALUES(1, 'Laptop', '2 Years', 'Silver'),(2, 'phone', '1 Year', 'Black'),(3, 'Headphones', '6 Months', 'White'),(4, 'Watch', '1 Year', ' Gold'),(5, 'Bag', '2 Years', ' Gray');
INSERT INTO Products (productID, product_name, color)VALUES(6, 'Washingmachine','Black'),(7, 'Ironbox','GREEN');
INSERT INTO Products (productID, product_name, warranty_period)VALUES(8, 'shoes', '1 Year'),(9, 'bottle', '1 Year'),(10, 'belt', '2 Years');
SELECT * FROM products;
INSERT INTO coupons(couponID, coupon_code, coupon_name,maximun_no_of_items) VALUES(1, 'SAVE10', 'Save 10%', 5),(2, 'FREESHIP', 'Free Shipping', 1),(3, 'SUMMER20', 'Summer Sale 20%', 10),(4, 'WELCOME15', 'Welcome Discount 15%', 3);
INSERT INTO coupons VALUES(5, 'SALE150', 'Sale', 2),(6, 'BOGO', 'Buy One Get One', 4),(7, 'NEWYEAR', 'New Year Special', 6),(8, 'STUDENT10', 'Student Discount 10%', 2);
INSERT INTO coupons (couponID, coupon_code, coupon_name) VALUES(9, 'BBS5', 'Big bold sale 25%');
INSERT INTO coupons (couponID, coupon_code,maximun_no_of_items) VALUES(10, 'BBS5',1);
SELECT * FROM coupons;
SELECT * FROM coupons WHERE coupon_code = 'SAVE10';
SELECT * FROM coupons WHERE coupon_name = 'Welcome Discount 15%';
SELECT * FROM Products WHERE color = 'white';
SELECT * FROM Products WHERE warranty_period = '2 years';
SELECT * FROM Products WHERE product_name = 'Bag';
SELECT * FROM customers WHERE customerID = 8 ;
SELECT address from customers WHERE customerID = 1;
SELECT * FROM orders WHERE order_status = 'Shipped';
SELECT * FROM orders WHERE tracking_number = 'TRK112233';
SELECT * FROM orders WHERE order_status = 'Processing';
SELECT tracking_number FROM orders WHERE orderID = 6;



      

