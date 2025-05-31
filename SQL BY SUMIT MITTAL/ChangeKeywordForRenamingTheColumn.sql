create database ChangeKeywordForRenamingTheColumn;
use ChangeKeywordForRenamingTheColumn;
create table rr(
id int primary key ,
firstname varchar(50),
lastname varchar(50),
age int ,
salary int,
locations varchar(50) default 'delhi'
);
/* change karta hai kya hai:
syntax :
alter table table_name change old_column_name new_column_name datatype constarints;
so , it will delete or replace the old column with new column and it will move the data ,
from the old column to new column ,
thats why :
it will delete the old_column and create new_column , but it will not delete the data inside the column,
thats we use datatype 
*/
alter table rr change firstname first_name varchar(50);
insert into rr(id , first_name , lastname , age , salary) values
(1 , 'Harish' , 'Tiwari' , 20 , 45000);
select * from rr ;
/* so , the data will be safe or stored only when , 
the both old_column_datatype matches or same or,
compatible with new_column_datatype , if they are not same it will throw errror*/
alter table rr change lastname last_name int;
/* so this will throw error beacuse old_column_ datatype was 
string and new data type is int and so data is not compatible */
