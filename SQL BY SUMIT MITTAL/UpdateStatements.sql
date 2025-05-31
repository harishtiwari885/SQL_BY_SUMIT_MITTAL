create database UpdateStatements;
use UpdateStatements;
create table dd(
id int primary key,
firstname varchar(50),
lastname varchar(50),
age int ,
locations varchar(50) default 'Delhi'
);
insert into dd(id , firstname , lastname , age) values
(1 , 'Harish' , 'Tiwari' , 20),
(2 , 'Sumit' , 'Tiwari' , 21),
(3 , 'Sudhanshu' , 'Tiwari' , 22),
(4 , 'Soumya' , 'Tiwari' , 23),
(5 , 'Shikha' , 'Tiwari' , 24);
/* Update any single value */
update dd set firstname = 'Chotu' where id = 1;
/* so this lines means update or changes to be done in dd table,
and go to rows whose id is 1 , and replace the firstname with chotu*/
/* updating multiple columns
syntax:
update table_name set column_name1 = value1 , column_name2 = value2 , column_name3 = value3
where column_name = existing_value;
where clause: Yes, the WHERE clause filters rows based on conditions on columns (or expressions involving columns).
WHERE age > 18
Here, age is a column.
*/
update dd set firstname = 'Vaishanavi',lastname ='Sharma',age = 19,
locations = 'Ballia' where id = 5;
/* what if i dont mention any , to update the particular rows ,
so what happens*/
update dd set locations = 'Banaras';
SET SQL_SAFE_UPDATES = 0;
UPDATE dd SET locations = 'Banaras';
SET SQL_SAFE_UPDATES = 1;
 -- here iam not mentioning to update which rows
 /* SET SQL_SAFE_UPDATES = 0;
UPDATE dd SET locations = 'Banaras';
SET SQL_SAFE_UPDATES = 1; so we are using the or we are disabiling the safe updates , 
beacuse we are not able to update all records at once*/
update dd set firstname = 'Sarswati',lastname ='Sharma',age = 16,
locations = 'Ballia' where id = 5;
select * from dd;
