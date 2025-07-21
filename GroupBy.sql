create database groupby2;
use groupby2;
create table gg(
id int primary key ,
name varchar(50) ,
age int , 
department varchar(50),
salary int
);
-- inserting the  rows 
insert into gg values
(1 , 'Harish Tiwari' , 20 , 'Developer' , 45000),
(2 , 'Soumya Tiwari' , 21 , 'Developer' , 30000),
(3 , 'Sudhanshu Tiwari' , 22 , 'HR' , 50000),
(4 , 'Sumit Tiwari' , 23 , 'HR' , 45000),
(5 , 'Sujata Tiwari' , 24 , 'Intern' , 25000),
(6 , 'Vaishnavi Tiwari' , 25 , 'Intern' , 35000),
(7 , 'Sarswati Tiwari' , 26 , 'Tester' , 26000),
(8 , 'Shikha Tiwari' , 27 , 'Tester' , 55000);
-- the column in the select should also be in the  group by to create the group based on the coulmn ;
select department from gg group by department;
-- the column in the select either it should be in group by or the aggregate function
select count(salary) from gg group by department;
-- but what if i dont mention the column in either the aggregate function and as well as group by then what happend
select salary from gg group by department;
/* this line will give error : 
select salary from gg group by department; : the erro is: 
"Salary column SELECT mein likha hai, par GROUP BY ya aggregate function mein nahi hai — isliye error aaya."
what  is this and how to fixed :
“Memory main table ka data load ho jaayega, 
phir group banega department ke basis pe. 
Lekin ek group ke andar agar multiple salaries hain, 
toh SQL confused ho jaata hai — usse pata nahi hota kaunsi salary dikhaye.
 Isliye aggregate function lagana padta hai taaki ek single value nikle.”
 */
 -- the error is fixed that is :
 select department, max(salary) as maximum_salary  from gg group by department;
 select count(name) from gg;
 /* ===========================================================================================
 ==============================================================================================
 */
 -- level-1 : group by
 create table pt(
 id int primary key ,
 name varchar(50) ,
 category varchar(50),
 price int
 );
 -- inserting the values
insert into pt values
(1 , 'Harish Tiwari' , 'Books' , 100),
(2 , 'Sumit Tiwari' , 'Sports' , 150),
(3 , 'Chotu Tiwari' , 'pen' , 10),
(4 , 'Soumya Tiwari' , 'pen' , 20),
(5 , 'Shikha Tiwari' , 'sports' , 200),
(6 , 'Vaishnavi Tiwari' , 'Books' , 300);
-- Show the number of products in each category.
select category , count(name) from pt group by category;
-- Find the total price of all products in each category.
select category , sum(price) from pt group by category;
-- Find the average price of products in each category.
select category , avg(price) from pt group by category;
-- Find the maximum product price in each category.
select category , max(price) from pt group by category;
-- Find the minimum product price in each category.
select category , min(price) from pt group by category ;
-- level 1 done 
/* ======================================================================================================
========================================================================================================= 
*/
-- level - 2 
-- Show category-wise total price, sorted by total price descending.
select category , sum(price) as total_price from pt group by category 
order by total_price desc;
-- Show category-wise average price, sorted by average price ascending.
select category , avg(price) as average_price  from pt group by category 
order by average_price asc;
select category , avg(price) from pt group by category 
order by avg(price);
-- Show category-wise count of items.
select category , count(name) from pt group by category;
-- Show the total price per category, but exclude category = 'pen'.
select category , sum(price) as Sum_of_Total from pt where category != 'pen' 
group by category;
-- Show total price per category 
-- where only those products with price > 100 are considered.
select category , sum(price) from pt where price > 100 group by category;
-- Show count of names per category where category starts with 's' or 'S'.
select category , count(name) from pt where name like 's%' group by category;
-- Show category-wise minimum price and sort it alphabetically.
select category , min(price) from pt group by category order by category asc;
-- Show the total price per category using alias AS total_price.
select category , sum(price) as total_price from pt group by category;
-- Show the sum of price in each category but only for categories that 
-- include 'Tiwari' in name.
select category , sum(price) from pt where name like '%Tiwari' group by category;
-- Show category-wise total price, but only consider rows where
--  price is not equal to 10.
select category , sum(price) as total_price from pt where price <> 10  
group by category;
-- level 2
-- Show average price per category 
-- and order them by average price in descending order.
select category , avg(price) as average_price from pt group by category 
order by  average_price desc; 
-- Show category with the highest total price. (Hint: Use LIMIT 1)
select category , sum(price) as total_price from pt group by category 
order by total_price desc limit 1;




