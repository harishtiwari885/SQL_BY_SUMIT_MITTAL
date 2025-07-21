create database delete5;
use delete1;
CREATE TABLE ff (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    email VARCHAR(100),
    status VARCHAR(20)
);
drop table employees;
-- inserting the rows 
INSERT INTO ff (id, name, department, salary, email, status) VALUES
(1, 'Amit', 'HR', 40000, 'amit@gmail.com', 'active'),
(2, 'Neha', 'Sales', 55000, 'neha@gmail.com', 'inactive'),
(3, 'Raj', 'IT', 70000, NULL, 'active'),
(4, 'Priya', 'HR', 30000, 'priya@gmail.com', 'inactive'),
(5, 'Alok', 'Marketing', 45000, NULL, 'active'),
(6, 'Simran', 'Sales', 60000, 'simran@gmail.com', 'inactive');
-- level 1 
-- Q1. Delete the employee whose id is 3.
delete from ff where id = 3;
select * from ff;
-- Q2. Delete all employees from the HR department.
delete from ff where department = 'HR';
-- Q3. Delete the employee whose name is 'Neha'.
delete from ff where name = 'Neha';
-- Q4. Delete all employees with salary less than 35000.
delete from ff where salary < 35000;
-- Q5. Delete all employees with status = 'inactive'.
delete from ff where status = 'inactive';
-- level 2
-- Q6. Delete employees who have NULL in their email.
delete from ff where email is null;
-- Q7. Delete employees who belong to the Sales 
-- department and have a salary more than 55000.
delete from ff where department = 'Sales' and salary > 55000;
-- Q8. Delete employees who are from Marketing or have salary < 45000.
delete from ff where department = 'Marketing' or salary < 45000;
-- Q9. Delete employees whose name starts with 'S'.
delete from ff where name like 'S%';
-- Q10. Delete employees who do not have a status of active
delete from ff where status != 'active';
-- level 3
-- Q11. Delete all employees whose salary is 
-- less than the average salary of all employees.
select avg(salary) as avreage_salary from gg
group by name ;
set sql_safe_updates = 1;
delete from ff where name = 'Alok';
delete from ff;
