create database UnderstandingTheForeignKey;
use UnderstandingTheForeignKey;
create table dgg(
id int primary key,
department varchar(20),
Hod varchar(20)
);
drop table dgg;
-- inserting the rows
insert into dgg values
(1, 'Coding', 'Sarswati Tiwari'),
(2, 'Testing', 'Luto Tiwari'),
(3, 'Designing', 'Cutie Tiwari'),
(4 , 'Monitoring' , 'Pihu Tiwari');
-- creating the another table 
create table tt(
id int primary key,
name varchar(50),
age int,
salary int,
belonging_Department int default 1,
foreign key(belonging_Department) References dgg(id)
);
drop table tt;
-- inserting the rows 
insert into tt values
(1 , 'Harish Tiwari' , 20 , 80000 , 1),
(2 , 'Harish Tiwari' , 20 , 80000 , 2),
(3 , 'Harish Tiwari' , 20 , 80000 , 1),
(4 , 'Harish Tiwari' , 20 , 80000 , 3),
(5 , 'Harish Tiwari' , 20 , 80000 , 2);
select * from tt;
drop table tt;
insert into tt values
(6 , 'Sumit Tiwari' , 21 , 90000 , 4);
/* so this query will give me the error becuase: 
insert into tt values
(6 , 'Sumit Tiwari' , 21 , 90000 , 4);
because : the belonging_department = 4 is not prsent in the department table thats why foreign key gives you the error,
of cannot add the row because foreign key constraints fails because,
foreign key doesnot allow the data which is not present in the parent table */
delete from dgg where id = 3;
/* again this query will give error :
delete from dgg where id = 3;
because this row is present in the parent table and it is used as refrene in the tt table*/
delete from dgg where id = 4;
