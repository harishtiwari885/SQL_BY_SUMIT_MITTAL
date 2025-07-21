create database Aggregate_Function;
use Aggregate_Function;
create table gg(
id int primary key,
name varchar(50),
age int , 
locations varchar(50) default 'Delhi'
);
-- inserting the values 
insert into gg(id , name , age) values
(1 , 'Harish Tiwari' , 20),-- 20 + 21 = 41 , 22 + 23 = 45 , 41 + 45 = 86 + 24 = 110 
(2 , 'Sudhanshu Tiwari' , 21),
(3 , 'Sumit Tiwari' , 22),
(4 , 'Soumya Tiwari' , 23),
(5 , 'Vaishnavi Tiwari' , 24);
insert into gg(id , name , age) values
( 6 , null , null);
-- using aggregate function 
-- print the maximum age 
select max(age) as maximum_age from gg;
-- print the minimum age 
select min(age) as minimum_age from gg;
-- print the sum of age 
select sum(age) as sum_of_age from gg ; -- 110
-- count the total rows 
select count(*) as total_no_of_rows from gg ;
-- avg of the age 
select avg(age) as average_age from gg;
-- so what happesn if i domt mention the column_name in sum function
select sum() from gg ;
-- count only rows where age is not null 
select count(age) as age_in_table from gg;
/* let us understand about the count() aggregate function :
syntax is :
1)select count(*) from table_name : so this will return the total no of rows 
even som rows have null value so it will ignore it and print the ,
total no of rows.
2) select count(column_name) from table_name : so in this it will count the rows and ignore the null values ,
so basically it will not count the rows but it can count the duplicate value 
*/
insert into gg(id , name , age) values -- so this is duplicate value and lets check count workings
(7 , 'Harish Tiwari' , 20);
select count(*) from gg; -- so this will return the total no of rows including the  rows has null values
-- total there are 7 rows 
-- know what if i dont want to count null values then 
select count(name) from gg; -- so here 7 rows  but id = 6  name is null so it will return the 6
-- know what about i dont want duplicate and null value to be counted so:
select count(distinct name ) from gg ; -- so this will count only unique rows 
/* =========================================================================================================================*/
-- lets learn about the:
-- 1) count()
create table count1(
id int ,
name varchar(50) ,
age int , 
loactions varchar(50) default 'banaras'
);
insert into count1(id , name , age) values
(1 , 'Harish Tiwari' , 20),
(2 , 'Harish Tiwari' , 21),
(3 , 'Harish Tiwari' , 22),
(4 , null , null),
(5 , 'Harish Tiwari' , 20);
/* so this count1 : table has null values and duplicate values:
duplicate rows means two or more are same 
lets see how count functions:
1) count(*) : this count all rows , including the duplicate rows and null values as well 
2) count(column_name) : this will count the rows , but not the null values but duplicate will be counted
3) count(distinct , column_name) : DISTINCT means: ek value ko sirf ek baar count karna
Chahe woh value 10 baar repeat ho , this is will count the distinct or unique values in that particular column */
-- 1) count(*): 
select count(*) from count1; -- so it will be 5 
-- count(column_name):
select count(age) from count1; -- so it will be 4
-- count(distinct , column_name) :
select count(distinct  age) from count1 ; -- so it will give 21 , 22 and 20 is duplicate and null it will avoid 
/* =============================================================================================================================================
================================================================================================================================================
*/
create table sum1(
id int ,
name varchar(50) ,
age int ,
locations varchar(50) default 'UP'
);
drop table sum1;
insert into sum1(id , name , age) values
(1 , 'Harish Tiwari' , 20),
(2 , 'Harish Tiwari' , 21),
(3 , 'Harish Tiwari' , 22),
(4 , null , null),
(1 , 'Harish Tiwari' , 20);
-- 2) Sum():
/* sum() : this is used foe returning the sum of all the values in particular column
and we have to mention the  column_name complusory .
1) it will ignore the null value */
select sum() from sum1 ;
-- this will give error because i havent mentioned the  coumn_name in the sum function 
select sum(age) from sum1; -- it has ignore the null so the result is = 83
select sum(distinct age) from sum1; -- it will count 20 + 21 + 22 = 63
select sum(name) from sum1; -- this gives zero beacuse it has converted the string zero
-- 'abd' = 0 but agar main '12abd' = 12 
-- If all values are NULL, it returns NULL.
/* ===================================================================================================*/
create table max1(
id int ,
name varchar(50),
age int,
locations varchar(20) default 'Kashmir'
);
insert into max1(id , name , age) values
(1 , 'Harish Tiwari' , 20),
(2 , 'Chotu Tiwari' , 21),
(3 , 'Sumit Tiwari' , 22),
(4 , null , null),
(1 , 'Harish Tiwari' , 20);
-- gives the highest non null salary
select max(age) from max1;
-- minimum 
select min(age) from max1;
-- finidng the avg() there are two ways :
-- 1) avg()
-- 2) sum() / count() ;
select avg(age) from max1;
select sum(age) / count(age) from max1;
-- this is all about the aggregate functions 

