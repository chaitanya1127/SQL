CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    department VARCHAR(50),
    credits INT,
    instructor_id INT,
    duration_weeks INT
);
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    major VARCHAR(50),
    year_of_study INT,
    gpa DECIMAL(3, 2),
    course_id INT
    );
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT, 
    course_id INT,  
    enrollment_date DATE,
    grade CHAR(2),
    status VARCHAR(20));


INSERT INTO Courses  VALUES (1, 'Data Structures', 'Computer Science', 4, 1, 12),
(2, 'Database Systems', 'Computer Science', 3, 2, 10),
(3, 'Calculus I', 'Mathematics', 5, 3, 15),
(4, 'Microeconomics', 'Economics', 3, 4, 8),
(5, 'Psychology 101', 'Psychology', 4, 5, 12),
(6, 'Physics I', 'Physics', 5, 6, 14),
(7, 'Linear Algebra', 'Mathematics', 4, 3, 10),
(8, 'Machine Learning', 'Computer Science', 3, 1, 10),
(9, 'Statistics', 'Mathematics', 3, 2, 12),
(10, 'Marketing Basics', 'Business', 3, 4, 8);

INSERT INTO Students VALUES (1, 'Alice Cooper', 'Computer Science', 3, 3.9, 4),
(2, 'Bob Harris', 'Computer Science', 2, 3.5, 2),
(3, 'Charlie Davis', 'Mathematics', 1, 3.7, 11),
(4, 'Diana Moore', 'Economics', 3, 3.2, 4),
(5, 'Eva Taylor', 'Psychology', 4, 3.8, 12),
(6, 'Frank White', 'Physics', 1, 3.1, 6),
(7, 'Grace Black', 'Mathematics', 2, 3.9, 16),
(8, 'Henry Adams', 'Computer Science', 3, 3.6, 25),
(9, 'Ivy Roberts', 'Mathematics', 4, 3.4, 9),
(10, 'Jack Wilson', 'Business', 1, 3.2, 27);


INSERT INTO Enrollments  VALUES (1, 1, 1, '2024-01-10', 'A', 'Completed'),
(2, 11, 11, '2024-02-15', 'B+', 'Ongoing'),
(3, 3, 27, '2024-03-12', 'A-', 'Ongoing'),
(4, 27, 4, '2024-04-10', 'B', 'Completed'),
(5, 5, 5, '2024-05-08', 'A+', 'Ongoing'),
(6, 25, 6, '2024-06-18', 'C+', 'Completed'),
(7, 7, 25, '2024-07-01', 'A', 'Ongoing'),
(8, 66, 8, '2024-08-15', 'B+', 'Ongoing'),
(9, 9, 3, '2024-09-25', 'B-', 'Ongoing'),
(10, 12, 42, '2024-10-02', 'B+', 'Ongoing');


SELECT * FROM Enrollments e  INNER JOIN  Students s on  e.student_id = s.student_id;
SELECT * FROM Students s INNER JOIN Courses c ON s.course_id = c.course_id;
SELECT s.student_name, s.major, e.course_id, e.grade FROM Students s LEFT JOIN Enrollments e ON s.student_id = e.student_id;
SELECT s.student_name, s.major, e.course_id, e.grade FROM Students s RIGHT JOIN Enrollments e ON s.student_id = e.student_id;

SELECT * FROM Enrollments e INNER JOIN Students s ON e.student_id = s.student_id LEFT JOIN Courses c ON e.course_id = c.course_id;
SELECT * FROM Enrollments e INNER JOIN Students s ON e.student_id = s.student_id RIGHT JOIN Courses c ON e.course_id = c.course_id;
