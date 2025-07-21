create database ifnull5;
use ifnull5;
create table pp(
id int primary key,
name varchar(50),
age int,
city varchar(50) default 'Delhi'
);
drop database ifnull5;
drop table pp;
/* why does the ifnull() is used:
IFNULL() is a conditional function in SQL used to replace,
 NULL values with a specified alternate value,
 making output cleaner and more user-friendly.
 working:
 ifnull(expression , alternate_value):
 so if expression is not null then print the expression 
 and if expression is null then print the alternate_value
 */
 -- inserting the rows
 insert into pp(id , name , age) values
 (1 , 'Harish Tiwari' , 20),
 (2 , null , 20),
 (3 , 'Sumit Tiwari' , 23),
 (4 , null , 20),
 (5 , 'Sudhanshu Tiwari' , 22);
 -- understanding the working of the ifnull()
select ifnull(name , 'Jarvis') from pp;
-- what if i want to print the numeric number
select ifnull(name , 45) from pp;
