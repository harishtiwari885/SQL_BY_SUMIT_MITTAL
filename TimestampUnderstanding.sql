create database timestamp5;
use timestamp5;
create table hh(
id int primary key,
name varchar(50),
age int ,
enrollment_date timestamp,
city varchar(50) default 'Delhi'
);
drop table hh;
-- inserting the rows 
insert into hh(id , name , age , enrollment_date) values
(1 , 'Harish Tiwari' , 20 , current_timestamp()),
(2 , 'Sumit Tiwari' , 21 , current_timestamp()),
(3 , 'Shikha Tiwari' , 22 , current_timestamp()),
(4 , 'Sudhanshu Tiwari' , 23 , current_timestamp()),
(5 , 'Soumya Tiwari' , 24 , current_timestamp()),
(6 , 'Vaishnavi Tiwari' , 25 , current_timestamp());
select * from hh;
/* so i can use the current_timesatmp in the insert but i have to mention in the ,
every insert */
/*but if i use the curent_timestamp as the default then i dont need to handle it manually,
and there is no past and future timestamp */
create table tt(
id int primary key,
name varchar(50),
age int ,
enrollment_date timestamp default current_timestamp,
city varchar(50) default 'Delhi'
);
drop table tt;
-- inserting the rows 
insert into tt(id , name , age) values
(1 , 'Harish Tiwari' , 20),
(2 , 'Sumit Tiwari' , 21),
(3 , 'Shikha Tiwari' , 22),
(4 , 'Sudhanshu Tiwari' , 23),
(5 , 'Soumya Tiwari' , 24),
(6 , 'Vaishnavi Tiwari' , 25);
select * from tt;