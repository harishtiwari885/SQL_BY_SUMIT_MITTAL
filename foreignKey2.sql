create database foreignKey2 ;
use foreignKey2;
/* For using the foreign key:
1) At First we need to create the parent table :to tell sql that the on who is giving the,
refrence to the child table exists.
2)At Second we can create both table together but without foreign key,
after the table creation we need to add the foreign key to the child table using the alter*/
-- Understaning the first 1st
create table f1( -- creating the parent table 
id int primary key,
department varchar(50),
Hod varchar(20)
);
-- inserting the rows
insert into f1 values
(1, 'Coding', 'Sarswati Tiwari'),
(2, 'Testing', 'Luto Tiwari'),
(3, 'Designing', 'Cutie Tiwari'),
(4 , 'Monitoring' , 'Pihu Tiwari');
-- know creating the child table 
create table f11(
id int primary key,
name varchar(20),
salary int
);
select * from f11;
-- inserting the rows
insert into f11 values
(1 , 'Harish Tiwari' , 80000 , 1),
(2 , 'Sumit Tiwari'  , 80000 , 2),
(3 , 'Shikha Tiwari' , 80000 , 1),
(4 , 'Sudhanshu Tiwari', 80000 , 3),
(5 , 'Soumya Tiwari' , 80000 , 2);
insert into f11 values
(6 , 'Vaishnavi Tiwari' , 35000 , 5);
select * from f11;
-- second way of creating the foreign key
create table s1( -- creating the parent table
id int primary key,
department varchar(50),
Hod varchar(20)
);
drop table s1;
-- inserting the rows
insert into s1 values
(1, 'Coding', 'Sarswati Tiwari'),
(2, 'Testing', 'Luto Tiwari'),
(3, 'Designing', 'Cutie Tiwari'),
(4 , 'Monitoring' , 'Pihu Tiwari');
-- creating the child table 
create table s11(
id int primary key,
name varchar(20),
salary int,
selected_Department int default 1
);
alter table s11 
add foreign key(selected_Department) references s1(id);
desc s11;
insert into s11 values
(1 , 'Harish Tiwari' , 80000 , 1),
(2 , 'Sumit Tiwari'  , 80000 , 2),
(3 , 'Shikha Tiwari' , 80000 , 3),
(4 , 'Sudhanshu Tiwari', 80000 , 4),
(5 , 'Soumya Tiwari' , 80000 , 1);
select * from s11;
insert into s11 values
(6 , 'Vaishnavi Tiwari' , 35000 , 5);


