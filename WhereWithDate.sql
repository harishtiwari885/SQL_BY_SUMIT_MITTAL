create database where1;
use where1;
create table kk(
id int primary key ,
name varchar(50),
age int , 
hired_date date,
loactions varchar(50) default 'Delhi'
);
-- inserting the rows 
insert into kk(id , name , age , hired_date) values
(1 , 'Harish Tiwari' , 20 , '2021-02-21'),
(2 , 'Sumit Tiwari' , 21 , '2020-03-16'),
(3 , 'Sudhanshu Tiwari' , 22 , '2022-04-18'),
(4 , 'Shikha Tiwari' , 23 , '2020-05-20'),
(5 , 'Vinay Tiwari' , 24 , '2023-06-05');
-- Show the names of all employees hired after the year 2020.
select name from kk where hired_date > '2020-06-01';
-- another way what if i only need employee who joined after 2020 only year 
-- for that i can use or i can extract year from hired date
select name from kk where year(hired_date) > 2020;
-- what if i domt need people who joined in june
-- so same like year i can use month 
/* here sql will convert string into number:
string conversion:
1) agar number is first then charcters then it will give number eg : '123abd' = 123;
2) agar charcter is first then numbers then it will giver zero eg : 'abd123' = 0;
*/
select name from kk where month(hired_date) != 'june' ; -- ye correct value nahi diya 
/* thats why this month(hired_date) gives number from (1-12) and 1-12 != 0 is true for every row ,
so every row will be printed*/
select name from kk where month(hired_date) != 06; -- ye correct value diya
-- what if i need people who not joined on a particular day 
insert into kk(id , name , age , hired_date) values
(6 , 'Vaishnavi Tiwari' , 20 , '2020-01-21'),
(7 , 'Sarswati Tiwari' , 21 , '2020-02-21');
select * from kk ;
/* this 'twentyone' will be converted into 0 by sql*/
select name from kk where day(hired_date) != 'twentyone';
/* this '21twentyone' will be converted into 21 by sql by using string conversion rules*/
select name from kk where day(hired_date) != '21twentyone';
select name from kk where day(hired_date) != 21;


