create database practice;
use practice;
create table gg(
id int primary key ,
name varchar(50),
age int ,
grade varchar(5)
);
-- Add a new column email of type VARCHAR(100) to the students table.
alter table gg add column email varchar(100);
select * from gg;
-- Rename the column grade to performance.
alter table gg rename column grade to performance;
select * from gg;
-- Change the data type of name column to VARCHAR(100).
alter table gg modify column name  varchar(100);
desc gg;
-- Rename the table gg to school_students.
alter table gg rename to school_students;
desc school_students;
-- Remove the email column from the table.
alter table school_students drop column email;
select * from school_students;
alter table school_students rename to gg;
/*
Create a new table courses with columns:
course_id (INT, PK)
course_name (VARCHAR)
teacher (VARCHAR)
*/
create table courses(
course_id int primary key ,
course_name varchar(50),
teacher varchar(50)
);
desc courses;
-- Insert two rows into the courses table.
insert into courses values
(1 , 'Java' , 'Vikas Sir'),
(2 , 'Dsa' , 'Kunal'),
(3 , 'Sql' , 'Sumit mittal');
select * from courses;
-- Drop the courses table.
drop table courses;
desc courses;
-- Create a table temp_students with the same structure as students but no data
create table temp_students(
id int primary key ,
name varchar(50),
age int ,
grade varchar(50)
);
-- Truncate the gg table (delete all data but keep structure)
truncate table gg;
select * from gg;








