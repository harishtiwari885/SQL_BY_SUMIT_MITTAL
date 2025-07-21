create database practicingGroupbyAggreagateFunctionsAndHavingClause;
use practicingGroupbyAggreagateFunctionsAndHavingClause;
create table gg(
id int primary key,
name varchar(50),
department varchar(50),
salary int,
age int,
city varchar(50)
);
-- inserting the values 
insert into gg values
(1, 'Ravi Sharma', 'IT', 50000, 25, 'Mumbai'),
(2, 'Priya Verma', 'HR', 60000, 28, 'Delhi'),
(3, 'Aman Singh', 'IT', 75000, 30, 'Mumbai'),
(4, 'Suman Joshi', 'Sales', 40000, 24, 'Delhi'),
(5, 'Rohit Kumar', 'IT', 90000, 35, 'Bangalore'),
(6, 'Anjali Mehta', 'HR', 55000, 27, 'Delhi'),
(7, 'Karan Yadav', 'Sales', 45000, 26, 'Bangalore'),
(8, 'Deepak Malhotra', 'IT', 80000, 33, 'Mumbai'),
(9, 'Neha Pandey', 'Sales', 47000, 29, 'Delhi'),
(10, 'Meena Kumari', 'HR', 62000, 31, 'Bangalore');
-- level 1
-- Q1. Find the total salary of all employees.
select sum(salary) as total_salary from gg;
-- Q2. Find the average age of employees.
select avg(age) as average_age from gg;
-- Q3. Find the maximum salary among employees.
select max(salary) as maximum_salary from gg;
-- Q4. Count how many employees are there in the table.
select count(*) as total_employees from gg;
-- level -2 
-- Q5. Show the total salary paid to each department.
select department , sum(salary) as total_salary from gg
group by department;
-- Q6. Find the average salary in each department.
select department , avg(salary) as average_salary from gg
group by department;
-- Q7. Show the count of employees in each city.
select city , count(*) as number_of_employees from gg
group by city ;
-- Q8. Show the maximum salary in each department.
select department , max(salary) as maximum_salary from gg 
group by department;
-- level -3
-- Q9. Find departments where the total salary paid is more than 1,50,000.
select department , sum(salary) as total_salary from gg 
group by department
having total_salary > 150000;
-- Q10. Show cities where the number of employees is at least 3.
select city , count(*) as number_of_employees from gg
group by city 
having number_of_employees >= 3;
-- Q11. Find departments where the average salary is more than 60,000.
select department , avg(salary) as average_salary from gg
group by department 
having avg(salary) > 60000;
-- Q12. Show cities where the total salary paid is less than 2,00,000.
select city , sum(salary) as total_salary from gg
group by city 
having total_salary < 200000;
-- level 4 
-- Q13. Find departments having more than 2 employees 
-- and total salary more than 1,50,000.
select department , count(*) as number_of_employees , sum(salary) as total_salary
from gg
group by department
having number_of_employees > 2 and total_salary > 150000;
-- Q14. Show the city-wise count of 
-- employees where the average age is more than 28 years.
select city , count(*) as number_of_employees , avg(age) as average_age from gg
group by city 
having average_age > 28;
-- Q15. Find departments where the highest salary is greater than 80,000.
select department , max(salary) as highest_salary from gg
group by department
having highest_salary > 80000;
/* ===============================================================================================================
==================================================================================================================
==================================================================================================================
*/
create table kk(
id int primary key ,
name varchar(50),
city varchar(50),
amount int ,
status1 varchar(50)
);
-- inserting the values
insert into kk values
(1, 'Rahul Gupta', 'Mumbai', 500, 'Completed'),
(2, 'Priya Singh', 'Delhi', 700, 'Pending'),
(3, 'Aman Verma', 'Mumbai', 1500, 'Completed'),
(4, 'Suman Joshi', 'Bangalore', 2000, 'Completed'),
(5, 'Rohit Kumar', 'Delhi', 1200, 'Completed'),
(6, 'Neha Pandey', 'Bangalore', 300, 'Pending'),
(7, 'Karan Yadav', 'Mumbai', 800, 'Completed'),
(8, 'Meena Kumari', 'Delhi', 900, 'Completed'),
(9, 'Anjali Mehta', 'Mumbai', 2500, 'Completed'),
(10, 'Deepak Malhotra', 'Bangalore', 1800, 'Completed');
-- Q1. Find the total amount received from completed orders.
select status1 , sum(amount) as total_amount from kk
group by status1 
having status1 = 'Completed';
-- Q2. Show city-wise total amount for only completed orders.
select city , sum(amount) as total_amount from kk 
where status1 = 'Completed'
group by city ; -- this is correct
-- =================================================
select city , sum(amount) as total_amount from kk
group by city 
having status1 = 'Completed'; -- this is wrong 
-- Q3. Find cities where total amount from completed orders is more than 3000.
select city , sum(amount) as total_amount from kk
where status1 = 'Completed'
group by city 
having sum(amount) > 3000;
-- Q4. Find cities where:
-- ✅ Total amount > 3000 AND
-- ✅ At least 2 orders placed (irrespective of status)
select city , sum(amount) as total_amount , count(status1) as order_placed from kk
group by city 
having sum(amount) > 3000 and count(status1) >= 2;
-- Q5. Show city-wise total amount for all orders 
-- but only display those cities where average order amount is more than 1000.
select  city , sum(amount) as total_amount , avg(amount) as average_order_amount
from kk
group by city 
having avg(amount) > 1000;





