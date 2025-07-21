create database HavingClause;
use HavingClause;
create table gg(
id int primary key ,
name varchar(50) , 
age int ,
city varchar(50) 
);
-- inserting the rows
insert into gg values
(1 , 'Harish Tiwari' , 20 , 'BhagyaNagar'),
(2 , 'Sumit Tiwari' , 21 , 'BhagyaNagar'),
(3 , 'chotu Tiwari' , 22 , 'pune'),
(4 , 'Soumya Tiwari' , 23 , 'pune'),
(5 , 'shikha Tiwari' , 24 , 'Ballia');
-- understanding why there is having clause is present if where is alreay present
-- 1) i cant use aggreaget function in where clause lets see
select name from gg where max(age) = 24;
select max(age) as max_age from gg where max_age = 24;
-- can i use the having clause without the group by 
select max(age) as maximum_age from gg having max(age) = 24;
select name from gg having max(age) = 24;
insert into gg values
(6 , 'Sarswati Tiwari' , 24 , 'Ballia');
/* know there are two same age 24 24 and max(age) will return the single values
lets check*/
select max(age) as maximum_age from gg having max(age) = 24 ; -- tho output main shika and sarswati 
/* ye ouput main singele value kyun de raha hai jab ki 24 do baar hai hai*/
select name , max(age) from gg;
/* ==============================================================================================================
=================================================================================================================
*/
create table pt(
id int primary key,
mode varchar(50),
amount int
);
-- inserting the rows
insert into pt values
(1, 'UPI' ,500),
(2, 'Cash',1000),
(3 , 'UPI' ,700),
(4 , 'Card ',2000),
(5 , 'UPI' ,800),
(6 , 'Cash' ,600),
(7 , 'UPI' ,900),
(8 , 'Card' ,1500),
(9 , 'UPI' ,750),
(10 , 'Cash' ,400);
-- Q1. Find all payment modes where total number of transactions is more than 3.
select mode , count(mode) as total_transaction from pt 
group by mode 
having count(mode) > 3;
-- Q2. Find payment modes where total amount of transactions exceeds ₹2500.
select mode , sum(amount) as total_amount from pt 
group by mode 
having total_amount > 2500;
select mode , sum(amount) as total_amount from pt
group by mode 
having sum(amount) > 2500;
-- Q3. Find payment modes where maximum transaction amount is greater than ₹1500.
select mode , max(amount) as maximum_amount from pt 
group by mode 
having maximum_amount > 1500;
-- Q4. Find payment modes where average transaction amount is above ₹700.
select mode , avg(amount) as average_amount from pt 
group by mode 
having average_amount > 700;
-- Q5. Show payment modes where minimum transaction amount is less than ₹500.
select mode , min(amount) as minimum_amount from pt 
group by mode 
having minimum_amount < 500;