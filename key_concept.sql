create database key_concept;
use key_concept;
CREATE TABLE Department (
    department_id INT PRIMARY KEY,               
    department_name VARCHAR(30) NOT NULL,       
    location VARCHAR(35),              
    head_of_department VARCHAR(30),    
    phone_number bigint(10) NOT NULL,           
    email VARCHAR(100));
desc Department;
INSERT INTO Department VALUES(1, 'Human Resources', 'Mumbai', 'Ramesh Sharma', 9123456789, 'hr.mumbai@company.in'),
(2, 'Information Technology', 'Bangalore', 'Suresh Rao', 9112345678, 'it.bangalore@company.in'),
(3, 'Finance', 'Delhi', 'Sunita Verma', 9198765432, 'finance.delhi@company.in'),
(4, 'Marketing', 'Kolkata', 'Anjali Sharma', 9176543210, 'marketing.kolkata@company.in'),
(5, 'Operations', 'Chennai', 'Vikram Patel', 9191234567, 'operations.chennai@company.in'),
(6, 'Legal', 'Hyderabad', 'Kiran Rao', 9187654321, 'legal.hyderabad@company.in'),
(7, 'Sales', 'Pune', 'Manoj Desai', 9123456701, 'sales.pune@company.in'),
(8, 'Procurement', 'Jaipur', 'Seema Agarwal', 9176543298, 'procurement.jaipur@company.in'),
(9, 'Customer Support', 'Ahmedabad', 'Amit Gupta', 9111234567, 'support.ahmedabad@company.in'),
(10, 'Research and Development', 'Noida', 'Rahul Khanna', 9189023456, 'rnd.noida@company.in');
select * from Department;
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,                     
    employee_name VARCHAR(30),                 
    email VARCHAR(30),                  
    phone_number BIGINT,                   
    salary DECIMAL(10,2),                   
    department_id INT,                              
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES Department(department_id));
desc  Employee;
INSERT INTO Employee VALUES(1, 'Amit Sharma', 'amit.sharma@company.in', 9000000001, 75000.00, 2),
(2, 'Priya Rao', 'priya.rao@company.in', 9000000002, 80000.00, 1),
(3, 'Rahul Patel', 'rahul.patel@company.in', 9000000003, 60000.00, 3),
(4, 'Simran Verma', 'simran.verma@company.in', 9000000004, 55000.00, 4),
(5, 'Kiran Gupta', 'kiran.gupta@company.in', 9000000005, 67000.00, 5),
(6, 'Sunil Desai', 'sunil.desai@company.in', 9000000006, 58000.00, 3),
(7, 'Manoj Kumar', 'manoj.kumar@company.in', 9000000007, 72000.00, 2),
(8, 'Neha Singh', 'neha.singh@company.in', 9000000008, 50000.00, 1),
(9, 'Arjun Mehta', 'arjun.mehta@company.in', 9000000009, 62000.00, 4),
(10, 'Ritu Shah', 'ritu.shah@company.in', 9000000010, 65000.00, 5);
select * from Employee;
CREATE TABLE Project (
    project_id INT PRIMARY KEY,                     
    project_name VARCHAR(30) NOT NULL,              
    start_date DATE ,  
    budget DECIMAL(12,2) NOT NULL,                  
    status VARCHAR(20) ,                    
    employee_id INT,                               
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id));
desc Project;
INSERT INTO Project VALUES(1, 'Website Revamp', '2023-01-15', 500000.00, 'In Progress', 1),
(2, 'HR Management System', '2023-02-01', 300000.00, 'Completed', 2),
(3, 'Mobile App Development', '2023-03-10', 700000.00, 'In Progress', 3),
(4, 'Digital Marketing Campaign', '2023-04-05', 250000.00, 'Planned', 4),
(5, 'Inventory Management System', '2023-05-20', 450000.00, 'In Progress', 5),
(6, 'Data Analytics Project', '2023-06-15', 600000.00, 'In Progress', 6),
(7, 'Financial Reporting Tool', '2023-07-10', 400000.00, 'Completed', 7),
(8, 'Employee Training Program', '2023-08-01', 200000.00, 'Planned', 8),
(9, 'Sales Automation System', '2023-09-12', 550000.00, 'In Progress', 9),
(10, 'Cloud Migration Project', '2023-10-20', 800000.00, 'Planned', 10);
select * from Project;
CREATE TABLE Salary (
    salary_id INT ,                     
    project_id INT NOT NULL,                     
    month VARCHAR(15) NOT NULL,                   
    year INT ,                             
    basic_salary DECIMAL(10,2) NOT NULL,       
    bonus DECIMAL(10,2),                      
    CONSTRAINT fk_project FOREIGN KEY (project_id) REFERENCES Project(project_id)
);
desc Salary;
INSERT INTO Salary  VALUES(1, 1, 'January', 2023, 50000.00, 5000.00),
(2, 2, 'February', 2023, 60000.00, 4000.00),
(3, 3, 'March', 2023, 55000.00, 3000.00),
(4, 4, 'April', 2023, 52000.00, 2000.00),
(5, 5, 'May', 2023, 58000.00, 3500.00),
(6, 6, 'June', 2023, 61000.00, 4000.00),
(7, 7, 'July', 2023, 53000.00, 2500.00),
(8, 8, 'August', 2023, 48000.00, 1500.00),
(9, 9, 'September', 2023, 56000.00, 5000.00),
(10, 10, 'October', 2023, 70000.00, 6000.00);
select * from Salary;
