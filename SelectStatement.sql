create database Select1;
use Select1;
create table gg(
id int primary key ,
name  varchar(50),
age int ,
department varchar(50),
salary int,
bonus int default 5000,
locations varchar(50) default 'USA'
);
drop table gg;
insert into gg(id , name , age , department , salary) values 
(1 , 'Harish Tiwari' , 23, 'It' , 50000),
(2 , 'Sumit Tiwari' , 24,  'Non-It' , 50000),
(3 , 'Sudhanshu Tiwari' , 25 , 'Mechanical' , 50000),
(4 , 'Soumya' , 21 , 'It' , 50000),
(5 , 'Shikha' , 20 , 'Non-It' , 50000);
-- Show all columns of the employees table.
select * from gg;
-- Display only the name and department of all employees.
select name , department from gg ;
-- Show name and age, where age is increased by 2 years.
select name , age from gg where age = age + 2;
-- Show name as Employee Name and salary as Income using aliases.
select name as Employee_name , salary as Income from gg;
-- Select all the cities from the customers table.
select locations from gg;
-- Display only distinct departments from the employees table.
insert into gg(id , name , age , department , salary) values
(6 , 'Vaishnavi' , 23 , 'Editing' , 40000);
select distinct department from gg ;
-- Show a custom message: “Hello SQL” using SELECT (no table).
select "Hello Sql" as msg;
-- Show the square of the number 5 using SELECT (no table).
select 5 * 5 as squareOfaNumber;
-- Display name and bonus + salary as Total Pay from the employees table.
select name , bonus + salary as Total_pay from gg;
-- Show name, age, and "India" as Country for all students
select name , age , "India" as Country from gg;
/* in this we got know , how to print things without using the table like:
this is the topic name 🔸 Using Constant / Static Values in SELECT Clause
🔸 SELECT Clause with Literal Values 
select "Hello Sql" as msg;
*/
select "Hello";
/* 
select "Hello";: tho ye query
 column name bhi hello kardega by default and
 also the hello will be displayed */
 select name , salary Add 1000 as New_Salary from gg;
  SELECT name, "India" FROM gg;
  SELECT "India" FROM gg;
  SELECT name, age FROM gg WHERE age = age + 2;

 