create database HandlingTheOrderOfAlterAddingColumn;
use HandlingTheOrderOfAlterAddingColumn;
create table qq(
id int primary key ,
firstname varchar(50),
lastname varchar(50),
age int ,
salary int,
locations varchar(50) default 'delhi'
);
insert into qq(id , firstname , lastname, age , salary) values
(1, 'Harish' , 'Tiwari' , 20 , 40000),
(2, 'Sumit' , 'Tiwari' , 23 , 50000),
(3, 'Sudhanshu' , 'Tiwari' , 22 , 60000),
(4, 'Harish' , 'Tiwari' , 16 , 70000);
/* so when we add new column using the alter command the:
syntax : alter table table_name add column middlename varchar(50);
*/
-- so adding the new column
alter table qq add column middlename varchar(50);
alter table qq drop column middlename;
/* Hey , when we add new column , so vo proper order main nahi balki last column ke baadh create jo raha hai,
so what can we do lets : 
1) change the position of middlename from lastcolumn to 3 rd column using numbers;
2) using the number text eg : first , second , third
*/
alter table qq add column middlename position 1;
/* in sql you can not position the column using numbers like 1 , 2 , 3 etc ;
so try ordering the column using number text */
alter table qq add column middlename third;
/* you can not order or you can not decide or do position of column using number text*/
/* 
==========================================================================================
*/
/* so know what to do :
since sql automatically adds the column at last to avoid confusion , performance issue ;
so what to do:
sql understand  two things :
1) first
2) after 
it only understand these two keyword for ordering the column:
firts : this is used to add column as first column;
after existing_coulmn_name : this is used to add the column after the mentioned coulmn*/
-- using first keyword
alter table qq add column student_id int unique key first;
/* yes this worked , first keyword is working to add the new column as first coulmn */
select * from qq;
-- using after existing_column_name to add after the mentioned coulmn
alter table qq add column middlename varchar(50) after firstname;
select * from qq;
alter table qq add hg varchar(50); -- isme column keyword menation karna jaruri nahi hai
