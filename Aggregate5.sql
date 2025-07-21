create database Aggregate5;
use Aggregate5;
create table gg(
id int primary key,
name varchar(50),
age int,
salary int,
locations varchar(50) default 'Delhi'
);
-- inserting the rows
insert into gg(id , name , age , salary) values
(1 , 'Harish Tiwari' , 20 , 50000),
(2 , 'Sumit Tiwari' , 21 , 80000),
(3 , 'Chotu Tiwari' , 22 , 40000),
(4 , 'Soumya Tiwari' , 23 , 30000),
(5 , 'Vaishnavi Tiwari' , 24 , 45000);
insert into gg(id , name , age , salary) values
(6 , null , 12 , null);
insert into gg(id , name , age , salary) values
(7 , 'Harish Tiwari' , 12 , null);
/* understanding the aggregate function*/
select count(*) as number_of_rows from gg ; -- this will count null and duplicate values as well 
select count(name) as number_of_names from gg; -- output 6 because there is one value null but it will count the duplicate value
select count(distinct name) as distinct_number_of_names from gg ; -- output 5 beacuse it will ignore the null and duplicate value 
select sum(salary) as Sum_of_Salary from gg;
/* know its times for concat(): this is not and aggreagte function it is an string function,
this is used for adding the two columns values but for every row there is resultent row*/
select concat(name , '@' , salary) as name_and_salary from gg ;
select concat('@' ,name) as names_of_the_employee from gg;
/* know its times to group_conact(): this is does the exact thing as the conact , 
but with the only differnece that it will add the all the rows as one string instead of giving added string for every row*/
-- group_concat for the single column so :
select group_concat(name separator '|') as group_merged from gg;
/* so group_concat() : this will ignore the null values unlike the concat()*/
select group_concat(concat(name , '@' , salary) separator '#') as names_and_Salary from gg;
select group_conact(name , '@' , salary separator '#') as names_and_salary from gg;
/* so ,
select group_conact(name , '@' , salary separator '#') as names_and_salary from gg;
this query will give the error beacuse:
group_concat(): expects the single arguments or single column but , i have given the multiple columns,
so sql will be confused and give the syntax error.
***** so always when you use the group_concat() with the multiple  columns  so you have to use concat() ,
in the group_concat(concat()); */
/* =========================================================================================================================================
=============================================================================================================================================
*/
/* Aggregate functions with multiple columns:
lets try  
*/ 
select sum(age , salary) as sum_of_age_salary from gg ;
/* so,
select sum(age , salary) as sum_of_age_salary from gg ;
this query will give error because aggreagte function hamesha se ek hi column pe chalta hai,\
hum usko multiple column directly nahi de sakte hai */
select sum(age + salary) as sum_of_age_and_salary from gg;






