create database Truncate5;
use Truncate5;
create table jj(
id int primary key,
name varchar(50),
age int, 
city varchar(50) default 'Delhi'
);
drop table jj ;
-- inserting the rows 
insert into jj(id , name , age) values
(1 , 'Harish Tiwari' , 20),
(2 , 'Sumit Tiwari' , 21),
(3 , 'Shikha Tiwari' , 22),
(4 , 'Sudhanshu Tiwari' , 23),
(5 , 'Soumya Tiwari' , 24);
/* truncate is used for deleting all the rows and just keeping the structure 
syntax : trucante from table_name;*/
truncate table jj;
truncate jj;
desc  jj;