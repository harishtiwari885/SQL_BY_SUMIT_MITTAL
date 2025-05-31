create database HandlingTargetList;
use HandlingTargetList;
create table cc(
id int primary key,
firstname varchar(50),
middlename varchar(50),
lastname varchar(50),
age int,
location varchar(50)
);
/* Target list : 
this is nothing but we are mentioning the columns in which we want to enter the 
values , like mentioning specific columns in which inserting data
*/
-- this is an eg of target list:
insert into cc(id , firstname , lastname ,age , location) values
(1 , 'Harish' , 'Tiwari' , 20 , 'Ballia'),
(2 , 'Sumit' , 'Tiwari' , 23 , 'Ballia'),
(3 , 'Sudhanshu' , 'Tiwari' , 22 , 'Ballia'),
(4 , 'Vaishnavi' , 'Tiwari' , 19 , 'Ballia'),
(5 , 'Sarwasti' , 'Tiwari' , 15 , 'Ballia');
/* but even this i can get column count error,
if i mention column and i dont enter that much value then it will throw and error
of column count doesnt match.alter
eg: insert into cc(id , firstname , lastname , age , location) values
(6 , 'Shika' , 'Tiwari' , 29); isme upper 5 columns mention kiya but i have only,
given 4 values so itr throws an error.
output: Column count doesn't match value count at row 1	0.000 sec
*/ 
insert into cc(id , firstname , lastname , age , location) values
(6 , 'Shika' , 'Tiwari' , 29 , 'Ballia');
select * from cc;
