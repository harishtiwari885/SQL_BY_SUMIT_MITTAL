create database likeCommand;
use likeCommand;
create table employees(
id int primary key , 
name varchar(50),
age int ,
city varchar(50)
);
drop table employees;
insert into employees values
(1 ,'Ramesh' , 17 , 'Delhi'),
(2 ,'Suresh' , 17 , 'Mumbai'),
(3 ,'Rahul' , 17 , 'Patna'),
(4 ,'Raghav' , 17 , 'Pune'),
(5 ,'Ravi' , 17 , 'Jaipur'),
(6 ,'Aman' , 17 , 'Amritsar'),
(7 ,'Akash' , 17 , 'Ahmedabad'),
(8 ,'Vikas' , 17 , 'Varanasi'),
(9 ,'Kumar' , 17 , 'Kochi'),
(10 ,'Karan' , 17 , 'Kolkata');
--  Q1. Select all employees whose name starts with 'Ra'
select * from employees where name like 'Ra%';
-- Q2. Select all employees whose name ends with 'sh'
select * from employees where name like '%sh';
--  Q3. Find employees whose name contains 'kar' anywhere
select * from employees where name like '%kar%';
--  Q4. Find employees whose name has 'a' as the second letter
select * from employees where name like '_a%';
--  Q5. Select employees whose name has exactly 4 characters
select * from employees where name like '____';
-- Q6. Select employees whose name starts with any 2 letters, then has m, then anything
select * from employees where name like '__m%';
--  Q7. Select employees whose city name ends with 'pur'
select * from employees where city like '%pur';
--  Q8. Select employees whose city name starts with 'A'
select * from employees where city like 'A%';
-- Q9. Select employees whose name has vi in the middle (not at the beginning or end)
select * from employees where name like '_%vi%_'; -- this is correct
--  Q10. Select employees whose name ends with 'an'
select * from employees where name like '%an';