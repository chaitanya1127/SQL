<<<<<<< HEAD

=======
>>>>>>> 68613bb9067ea3e7591350e309ee488267940fa2
CREATE DATABASE institute;
CREATE TABLE institute_info(institute_id int,course_name varchar(25));
desc institute_info;
drop database institute;
CREATE DATABASE institute;
CREATE TABLE institute_info(institute_id int,institute_name varchar(25));
desc institute_info;
select * from  institute_info;
ALTER TABLE  institute_info ADD COLUMN no_of_courses int,ADD COLUMN total_no_of_students int,ADD COLUMN address varchar(25),ADD COLUMN working_days_in_week int;
ALTER TABLE  institute_info DROP COLUMN no_of_courses , DROP COLUMN working_days_in_week;
ALTER TABLE  institute_info RENAME COLUMN total_no_of_students TO no_of_students,RENAME COLUMN institute_name TO name_of_the_institute,RENAME COLUMN address TO address_of_institute;
ALTER TABLE  institute_info ADD COLUMN no_of_courses int;
ALTER TABLE  institute_info MODIFY COLUMN no_of_students long,MODIFY COLUMN institute_id long,MODIFY COLUMN no_of_courses long;
RENAME TABLE institute_info TO institute_datails;
RENAME TABLE institute_datails to institute_details;
desc institute_details;
SELECT * from  institute_details;
