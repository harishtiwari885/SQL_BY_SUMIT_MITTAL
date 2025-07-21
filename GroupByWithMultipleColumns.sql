create database groupbyOnMultipleColumns;
use groupbyOnMultipleColumns;
create table gg(
id int primary key,
name varchar(50),
age int,
salary int,
city varchar(50)
);
-- inserting the rows
insert into gg values
(1 , 'Harish Tiwari' , 20 , 45000 , 'BhagyaNagar'),
(2 , 'Sumit Tiwari' , 21 , 50000 , 'BhagyaNagar'),
(3 , 'Sudhanshu Tiwari' , 22 , 41000 , 'Pune'),
(4 , 'Soumya Tiwari' , 23 , 40000 , 'Pune'),
(5 , 'Cutie Tiwari' , 24 , 35000 , 'Ballia'),
(6 , 'Luto Tiwari' , 25 , 30000 , 'Ballia'),
(7 , 'Vaishnavi Tiwari' , 26 , 60000 , 'Ballia'),
(8 , 'Sarswati Tiwari' , 27 , 55000 , 'Delhi'),
(9 , 'Shikha Tiwari' , 29 , 51000 , 'Delhi');
insert into gg values -- this is same value so i the group by works in the pair 
(10 , 'Harish Tiwari' , 20 , 60000 , 'BhagyaNagar'),
(11 , 'Sumit Tiwari' , 21 , 80000 , 'BhagyaNagar');
-- group by on single column 
select city , sum(salary) as sum_of_salary from gg
group by city;
-- group by on multiple columns
select name , city , sum(salary) as sum_of_salary_of_multiple_grouped_column 
from gg
group by name , city;
select name , city , count(*) as number_of_people_of_multiple_grouped_column 
from gg
group by name , city;
-- question 
-- 1) Har city ka total salary batao
select city , sum(salary) as total_salary from gg 
group by city;
-- 2) Har city ka average salary batao
select city , avg(salary) as average_salary from gg
group by city;
-- 3)Har (name, city) combination ka total salary batao
select name , city , sum(salary) as sum_of_salary from gg 
group by name , city ;
-- 4)Har city ka maximum salary kisne liya, wo nahi bata sakte simple GROUP BY se, 
-- par har city ka maximum salary batao
select city , max(salary) as maximum_salary from gg 
group by city;
-- 5)Har (city, age) ke combination ka total salary batao
select city , age , sum(salary) as sum_of_salary from gg 
group by city , age ;
-- 6)Har city ke andar kitne unique log hain wo count karo
select city , count(distinct name) as unique_people from gg
group by city;








