create database understandingTheUpdateCommand;
use understandingTheUpdateCommand;
create table bb(
id int primary key,
name varchar(50),
age int,
marks int ,
grade varchar(10),
city varchar(50)
);
-- inserting the rows 
insert into bb values
(1 , 'Harish Tiwari' , 20 , 98 , 'A' , 'BhagyaNagar'),
(2 , 'Sumit Tiwari' , 20 , 92 , 'A' , 'BhagyaNagar'),
(3 , 'Chotu Tiwari' , 20 , 88 , 'B' , 'BhagyaNagar'),
(4 , 'Soumya Tiwari' , 20 , 85 , 'B' , 'BhagyaNagar'),
(5 , 'Shikha Tiwari' , 20 , 75 , 'C' , 'BhagyaNagar'),
(6 , 'Luto Tiwari' , 20 , 78 , 'C' , 'BhagyaNagar'),
(7 , 'Cutie Tiwari' , 20 , 65 , 'D' , 'BhagyaNagar'),
(8 , 'Vaishnavi Tiwari' , 20 , 68 , 'D' , 'BhagyaNagar'),
(9 , 'Sarswati Tiwari' , 20 , 55 , 'F' , 'BhagyaNagar'),
(10 , 'Tota Akhil' , 20 , 60 , 'D' , 'BhagyaNagar'),
(11, 'Sarvu Vikas' , 20 , 54 , 'F' , 'BhagyaNagar');
-- update with single column
update from bb set name = 'Aman Tiwari' where id = 1; -- this is the  wrong query 
/* why i have got error :
because in sql , when iam updating the single table sql doesnt allow the from keyword to use ,
simple its just the sql rules*/
update bb set name = 'Aman Tiwari' where id = 1;
select * from bb where id = 1;
-- update with multiple columns
update bb set name = 'Routu Yeshwanth' , age = 24 , marks = 94 , grade = 'A'
where id = 10;
select * from bb where id = 10 ;
-- done 
update bb set name = 'Tota Akhil' , age = 22 , marks = 88 , grade = 'B' 
where id = 10 or id = 11;
select * from bb where id = 10 or id = 11;
select * from bb where id = 10 and id = 11;
-- updating the city without the where clause for mention which column 
update  bb set city = 'Delhi';
/* this will throw error because sql : 
will not allow updating the value for all rows at once : 
so for that we need to disable the safe update mode : this safe mode means :
that it is used by the sql to avoid accidental updates for all the rows .
how to enable it : 
set sql_safe_updates = 1;
how to disable it for updating all at once :
set sql_safe_updates = 0;
*/
set sql_safe_updates = 0; -- here i have disabled the safe mode and know can update all at once 
-- know update without where clause 
update bb set city = 'Delhi';
select * from bb;
set sql_safe_updates = 1 ;
-- updating using the expression
update bb set age = age + 4 where id = 2;
select * from bb where id = 2 ;
/* =============================================================================================================
================================================================================================================
================================================================================================================
*/
CREATE TABLE gg (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    email VARCHAR(100),
    city VARCHAR(50),
    joining_year INT,
    bonus INT,
    status VARCHAR(20)
);
drop table employees;
INSERT INTO gg (id, name, department, salary, email, city, joining_year, bonus, status) VALUES
(1, 'Aman', 'Sales', 45000, NULL, 'Delhi', 2019, 0, 'active'),
(2, 'Priya', 'Tech', 72000, 'priya@gmail.com', 'Mumbai', 2020, 5000, 'active'),
(3, 'Raj', 'HR', 30000, NULL, 'Delhi', NULL, 0, 'active'),
(4, 'Simran', 'Tech', 80000, 'simran@example.com', 'Bangalore', 2021, 0, 'active'),
(5, 'Anil', 'Sales', 28000, NULL, 'Chennai', 2018, 2000, 'active'),
(6, 'Pooja', 'Tech', 65000, 'pooja@gmail.com', 'Delhi', NULL, 0, 'inactive'),
(7, 'Ravi', 'HR', 60000, 'ravi@company.com', 'Mumbai', 2022, 0, 'active');
-- level 1 
-- Q1. Update the email of Raj to raj@gmail.com.
update gg set email = 'raj@gmail.com' where name = 'Raj';
/* so this will give the erro beacuse this query will accidentally update all the email,
whose name is 'Raj' so to avoid this sql will give error */
set sql_safe_updates = 0;
-- level 1 easy
-- ✅ Increase the salary of employee with id = 1 by 5,000.
update gg set salary = salary + 5000 where id = 1;
-- ✅ Update the email of Raj to 'raj@company.com'.
update gg set email = 'raj@company.com' where name = 'Raj';
-- ✅ Change the city of Anil to 'Hyderabad'.
update gg set city = 'Hyderabad' where name = 'Anil';
select * from gg where name = 'Anil';
-- ✅ Set the bonus to 1000 for employee whose name = 'Pooja'.
update gg set bonus = 1000 where name = 'Pooja';
-- ✅ Change the status to 'inactive' for employee with id = 5.
update gg set status = 'inactive' where id = 5;
-- level 2 medium
-- 🔄 Increase the salary by 10% for all employees in the 'Tech' department.
select name , salary as salary_of_people from gg where department = 'Tech';
update gg set salary = salary * 1.10 where department = 'Tech';
-- 🔄 Set the joining_year to 2023 for employees who have NULL in joining_year.
update gg set joining_year = '2023' where joining_year is null;
select name , joining_year from gg where joining_year = '2023';
-- 🔄 Update the status to 'inactive' for all employees whose salary 
-- is less than 30000.
update gg set status = 'inactive' where salary < 30000;
-- 🔄 Add a bonus of 2000 for all employees who joined in or after the year 2020.
update gg set bonus = bonus + 2000 where joining_year >= '2020';
select * from gg where joining_year >= '2020';
-- 🔄 Set email to 'not_provided@example.com' where it is currently NULL.
select name , email from gg where email is null;
update gg set email = 'not_provided@example.com' where email is null;
select name , email from gg where email is not null;
-- 🧠 Increase the salary of employees in 'Sales' by 15% only 
-- if their current salary is less than 40000.
select name , salary from gg where salary < 40000;
update gg set salary = salary * 1.15 where department = 'Sales' and salary < 40000;
-- 🧠 Update the city to 'Remote' for all employees whose 
-- status is 'inactive' and email is NULL.
update gg set city = 'Remote' where status = 'inactive' and email is null;
select name , city from gg where status = 'inactive' and email is null;
-- 🧠 Change the department to 'Support' for employees 
-- from 'HR' whose salary is more than 50000.
select name , department from gg where department = 'HR' and salary > 50000;
update gg set department = 'Support' where department = 'HR' and salary > 50000;
-- 🧠 Set the bonus to 10% of salary for 
-- all employees in 'Tech' who have bonus currently as 0.
select name , bonus from gg where department = 'Tech' and bonus = 0 ;
update gg set bonus = bonus * 1.10 where department = 'Tech' and bonus = 0 ;
-- 🧠 Update status to 'terminated' for
-- all employees who joined before 2019 and have no email.
update gg set status = 'terminated'
where joining_year < '2019' and email is null;






