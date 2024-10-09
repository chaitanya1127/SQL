CREATE DATABASE bank;
use bank;
CREATE TABLE bank_details (
    bank_id int,
    manager_name varchar(25),
    branch_id INT ,                         
    branch_name VARCHAR(30),                      
    branch_city VARCHAR(25),                        
    branch_state VARCHAR(25),                       
    branch_zipcode VARCHAR(10),                     
    phone_number VARCHAR(15),                    
    email VARCHAR(30),
    working_employees int
    );
desc bank_details;
select * from bank_details;
INSERT INTO bank_details VALUES(1, 'Amit ', 101, 'Main Branch', 'Mumbai', 'Maharashtra', '400001', '022-12345678', 'amit@bankofindia.com', 150),
(2, 'Priya ', 102, 'East Branch', 'Delhi', 'Delhi', '110001', '011-87654321', 'priya.gupta@punjabank.com', 120),
(3, 'Rahul ', 103, 'West Branch', 'Bengaluru', 'Karnataka', '560001', '080-23456789', 'rahul@icicibank.com', 130),
(4, 'Sneha ', 104, 'North Branch', 'Chennai', 'Tamil Nadu', '600001', '044-34567890', 'sneha@axisbank.com', 140),
(5, 'Rohit ', 105, 'South Branch', 'Kolkata', 'West Bengal', '700001', '033-45678901', 'rohit@hdfcbank.com', 110),
(6, 'Neha Reddy', 106, 'Central Branch', 'Hyderabad', 'Telangana', '500001', '040-56789012', 'neha@bankindia.com', 125),
(7, 'Karan ', 107, 'City Branch', 'Ahmedabad', 'Gujarat', '380001', '079-67890123', 'karan@bankofbaroda.com', 95),
(8, 'Deepa ', 108, 'Downtown Branch', 'Pune', 'Maharashtra', '411001', '020-78901234', 'deepa@indusindbank.com', 80),
(9, 'Vikram ', 109, 'Suburban Branch', 'Jaipur', 'Rajasthan', '302001', '0141-8901234', 'vikram@kotakmahindrabank.com', 70),
(10, 'Ritika ', 110, 'Uptown Branch', 'Surat', 'Gujarat', '395001', '0261-9012345', 'ritika@cityunionbank.com', 60),
(11, 'Arjun Kumar', 111, 'Park Branch', 'Lucknow', 'Uttar Pradesh', '226001', '0522-0123456', 'arjun@federalbank', 75),
(12, 'Sita ', 112, 'Valley Branch', 'Kanpur', 'Uttar Pradesh', '208001', '0512-1234567', 'sita@yesbank.in', 85),
(13, 'Tarun ', 113, 'River Branch', 'Nagpur', 'Maharashtra', '440001', '0712-2345678', 'tarun@dhanlaxmibank', 90),
(14, 'Anjali Soni', 114, 'Hill Branch', 'Visakhapatnam', 'Andhra Pradesh', '530001', '0891-3456789', 'anjali@karurvysiy', 65),
(15, 'Kavita Singh', 115, 'Lakeside Branch', 'Bhopal', 'Madhya Pradesh', '462001', '0755-4567890', 'kavita@orientalbank', 55),
(16, 'Nitin Jain', 116, 'Sunset Branch', 'Coimbatore', 'Tamil Nadu', '641001', '0422-5678901', 'nitin@indianbank.com', 50),
(17, 'Aditi ', 117, 'Seaside Branch', 'Nashik', 'Maharashtra', '422001', '0253-6789012', 'aditi@pnbhousing.com', 45),
(18, 'Sandeep Yadav', 118, 'Mountain Branch', 'Vadodara', 'Gujarat', '390001', '0265-7890123', 'sandeep@tmbnet.in', 40),
(19, 'Geeta ', 119, 'Forest Branch', 'Rajkot', 'Gujarat', '360001', '0281-8901234', 'geeta@bankmaharashtra.in', 35),
(20, 'Ramesh Rao', 120, 'Harbor Branch', 'Agra', 'Uttar Pradesh', '282001', '0562-9012345', 'ramesh@unionbankindia.com', 30);
select * from bank_details;
CREATE TABLE account_holder (
    account_holder_id INT,  
    name VARCHAR(30),                          
	account_no int ,                     
    gender VARCHAR(10),                                  
    address VARCHAR(30),                             
    city VARCHAR(50),                                
    state VARCHAR(50),                                  
    postal_code VARCHAR(10),                             
    phone_number VARCHAR(15),                            
    email VARCHAR(100));                                 
desc account_holder ;
select * from account_holder ;
INSERT INTO account_holder VALUES(1, 'Aarav ', 10101, 'Male', '123 Main St', 'Mumbai', 'Maharashtra', '400001', '9821234567', 'aarav.sharma@example.com'),
(2, 'Saanvi ', 10102, 'Female', '456 Oak St', 'Delhi', 'Delhi', '110001', '9812345678', 'saanvi.gupta@example.com'),
(3, 'Vihaan ', 10103, 'Male', '789 Pine Rd', 'Bengaluru', 'Karnataka', '560001', '9809876543', 'vihaan.verma@example.com'),
(4, 'Ananya ', 10104, 'Female', '321 Elm St', 'Chennai', 'Tamil Nadu', '600001', '9845123456', 'ananya.iyer@example.com'),
(5, 'Aditya ', 10105, 'Male', '654 Maple St', 'Kolkata', 'West Bengal', '700001', '9900987654', 'aditya.singh@example.com'),
(6, 'Shreya Reddy', 10106, 'Female', '987 Cedar Rd', 'Hyderabad', 'Telangana', '500001', '9700123456', 'shreya.reddy@example.com'),
(7, 'Arjun ', 10107, 'Male', '123 Birch St', 'Ahmedabad', 'Gujarat', '380001', '9654321098', 'arjun.joshi@example.com'),
(8, 'Deepika ', 10108, 'Female', '456 Willow Rd', 'Pune', 'Maharashtra', '411001', '9934567890', 'deepika.nair@example.com'),
(9, 'Karan ', 10109, 'Male', '789 Spruce St', 'Jaipur', 'Rajasthan', '302001', '9678901234', 'karan.patil@example.com'),
(10, 'Ritika ', 10110, 'Female', '321 Chestnut St', 'Surat', 'Gujarat', '395001', '9323456789', 'ritika.mehta@example.com'),
(11, 'Mason Kumar', 10111, 'Male', '654 Ash St', 'Lucknow', 'Uttar Pradesh', '226001', '9987654321', 'mason.kumar@example.com'),
(12, 'Pooja Singh', 10112, 'Female', '987 Palm Rd', 'Kanpur', 'Uttar Pradesh', '208001', '9812345670', 'pooja.singh@example.com'),
(13, 'Nikhil ', 10113, 'Male', '123 Acacia St', 'Nagpur', 'Maharashtra', '440001', '9700123457', 'nikhil.bansal@example.com'),
(14, 'Sneha ', 10114, 'Female', '456 Fir Rd', 'Visakhapatnam', 'Andhra Pradesh', '530001', '9643210987', 'sneha.gupta@example.com'),
(15, 'Rohan Verma', 10115, 'Male', '789 Palm Rd', 'Bhopal', 'Madhya Pradesh', '462001', '9812467530', 'rohan.verma@example.com'),
(16, 'Tanya Rao', 10116, 'Female', '321 Pine St', 'Coimbatore', 'Tamil Nadu', '641001', '9876543210', 'tanya.rao@example.com'),
(17, 'Kartik Yadav', 10117, 'Male', '654 Juniper St', 'Nashik', 'Maharashtra', '422001', '9922334455', 'kartik.yadav@example.com'),
(18, 'Vani Sharma', 10118, 'Female', '987 Maple St', 'Vadodara', 'Gujarat', '390001', '9567891234', 'vani.sharma@example.com'),
(19, 'Siddharth', 10119, 'Male', '123 Alder Rd', 'Rajkot', 'Gujarat', '360001', '9534567890', 'siddharth.patel@example.com'),
(20, 'Alisha ', 10120, 'Female', '456 Birch Rd', 'Agra', 'Uttar Pradesh', '282001', '9456789012', 'alisha.joshi@example.com');
select * from account_holder ;
CREATE TABLE loan (
    loan_id INT,            
    account_holder_id INT,                             
    loan_term_months INT,                          
    loan_type VARCHAR(30),                             
    loan_amount INT,                                    
    interest_rate INT,                            
    issue_branch VARCHAR(50),                           
	borrower_name VARCHAR(50));
desc loan ;
select * from loan;
INSERT INTO loan VALUES(1, 101, 60, 'Home Loan', 500000, 8, 'Main Branch', 'Aarav'),
(2, 102, 36, 'Personal Loan', 200000, 12, 'East Branch', 'Saanvi Gupta'),
(3, 103, 48, 'Auto Loan', 300000, 10, 'West Branch', 'Vihaan Verma'),
(4, 104, 60, 'Home Loan', 750000, 9, 'North Branch', 'Ananya'),
(5, 105, 24, 'Personal Loan', 100000, 15, 'South Branch', 'Aditya Singh'),
(6, 106, 36, 'Education Loan', 400000, 11, 'Central Branch', 'Shreya Reddy'),
(7, 107, 48, 'Home Loan', 650000, 8, 'City Branch', 'Arjun '),
(8, 108, 12, 'Personal Loan', 150000, 13, 'Downtown Branch', 'Deepika '),
(9, 109, 60, 'Home Loan', 800000, 7, 'Suburban Branch', 'Karan Patil'),
(10, 110, 36, 'Auto Loan', 250000, 10, 'Uptown Branch', 'Ritika Mehta'),
(11, 111, 24, 'Personal Loan', 120000, 14, 'Park Branch', 'Mason Kumar'),
(12, 112, 48, 'Home Loan', 900000, 9, 'Valley Branch', 'Pooja Singh'),
(13, 113, 36, 'Education Loan', 500000, 10, 'River Branch', 'Nikhil '),
(14, 114, 60, 'Home Loan', 700000, 8, 'Hill Branch', ' Gupta'),
(15, 115, 12, 'Personal Loan', 180000, 12, 'Lakeside Branch', ' Verma'),
(16, 116, 48, 'Auto Loan', 350000, 11, 'Sunset Branch', 'Tanya Rao'),
(17, 117, 24, 'Home Loan', 600000, 9, 'Seaside Branch', 'Yadav'),
(18, 118, 36, 'Personal Loan', 220000, 13, 'Mountain Branch', ' Sharma'),
(19, 119, 60, 'Home Loan', 500000, 7, 'Forest Branch', 'Siddharth '),
(20, 120, 12, 'Personal Loan', 170000, 15, 'Harbor Branch', ' Joshi');
select * from loan;
UPDATE bank_details SET  branch_city = 'New Delhi city',branch_zipcode= '110002' WHERE bank_id = 2 AND branch_name = 'East Branch';
UPDATE bank_details SET branch_state = 'New State' WHERE branch_city = 'Ahmedabad' OR branch_city = 'Pune';
UPDATE bank_details SET phone_number = '022-98765432' WHERE bank_id IN (1, 2, 3);
select * from bank_details ;
UPDATE account_holder SET address = 'Updated Main St', phone_number = '9999999999' WHERE account_holder_id = 1 AND gender = 'Male';
UPDATE account_holder SET phone_number = '9999999999' WHERE account_holder_id = 1 OR account_holder_id = 2;
UPDATE account_holder SET address = 'New Address' WHERE account_holder_id IN (13, 14, 15);
select * from account_holder;
UPDATE loan SET interest_rate = 7 WHERE loan_type = 'Home Loan' AND  loan_term_months = 60;
UPDATE loan SET loan_amount = 600000 WHERE loan_id = 4 OR loan_id = 5;
UPDATE loan SET interest_rate = 7 WHERE loan_id IN (1, 2, 3);
select * from loan;
DELETE FROM loan WHERE loan_id IN (1, 3);
DELETE FROM  account_holder WHERE phone_number = '9999999999';
DELETE FROM bank_details WHERE bank_id IN (1, 20);