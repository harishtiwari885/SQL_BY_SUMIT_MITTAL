create database PrimaryKey;
use PrimaryKey;
create table jj(
id int primary key ,
firstname varchar(50),
lastname varchar(50),
age int ,
locations varchar(50)
);
/* learning about primary key:
⚖️ 2. Characteristics / Properties of Primary Key
Property	Description
Uniqueness	Every value in a primary key column must be unique.
NOT NULL	Primary key column(s) cannot have NULL values.
Immutability	Ideally, primary key values should not change over time.
Only One Per Table	A table can have only one primary key (single or composite).
Automatically Indexed	Most RDBMSs automatically create a unique index on the primary key column(s).
*/
/* so lets understand first point: 
Uniqueness	Every value in a primary key column must be unique.
insert into jj values
(1 ,'Harish' , 'Tiwari' , 20 ,'Ballia')
(1 ,'Sumit' , 'Tiwari' , 24 ,'Ballia'); 
so yes this code has given me error because 1 is duplicate value
*/
insert into jj values-- error 
(1 ,'Harish' , 'Tiwari' , 20 ,'Ballia') -- error
(1 ,'Harish' , 'Tiwari' , 20 ,'Ballia'); -- error of using duplicate value
insert into jj values
(1 ,'Harish' , 'Tiwari' , 20 ,'Ballia');
/* so know lets us understand second point: 
NOT NULL	Primary key column(s) cannot have NULL values.
insert into jj values(null , 'Sumit', 'Tiwari' , 24 , 'Ballia'); 
so yaa this is correct that it cannot be null , it has given me the error
*/
insert into jj values(null , 'Sumit', 'Tiwari' , 24 , 'Ballia'); -- error of using null
insert into jj values(2 , 'Sumit', 'Tiwari' , 24 , 'Ballia');
/* so know let us understand third point:
Only One Per Table	A table can have only one primary key (single or composite).
create table jj(
id int primary key ,
firstname varchar(50) primary key,
lastname varchar(50),
age int ,
locations varchar(50)
); 
so yes i have got error of using multiple primary key
*/
drop table jj;
create table jj(
id int primary key ,
firstname varchar(50) primary key,
lastname varchar(50),
age int ,
locations varchar(50)
);
/* let us understand the fourth point:
Can Be Composite ,A primary key can consist of more 
than one column (Composite key).
🔑 What is a Composite Primary Key?
A composite primary key is a primary key that consists of two or more columns. Together, these columns uniquely identify each row in the table.
It’s used when no single column can uniquely identify a row, but a combination of columns can.
You can only have one primary key in a table, but that primary key can span multiple columns.

*/
drop table jj;
create table jj(
id int,
firstname varchar(50),
lastname varchar(50),
age int ,
locations varchar(50),
primary key(id , firstname)
);
insert into jj values
(1 , 'Harish' , 'Tiwari', 20 , 'Delhi'),
(1 , 'Sumit' , 'Tiwari', 20 , 'Delhi');
insert into jj values
(2 , 'Chotu' ,'Tiwari' , 23 , 'Ballia'),
(3 , 'Chotu' ,'Tiwari' , 23 , 'Ballia');
select * from jj;



