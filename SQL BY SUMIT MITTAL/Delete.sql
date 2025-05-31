create database Delete1;
use Delete1;
create table zz(
id int primary key,
firstname varchar(50),
lastname varchar(50),
age int ,
salary int,
locations varchar(50) default 'Delhi'
);
drop table zz;
insert into zz(id , firstname , lastname, age , salary) values
(1, 'Harish' , 'Tiwari' , 20 , 40000),
(2, 'Sumit' , 'Tiwari' , 23 , 50000),
(3, 'Sudhanshu' , 'Tiwari' , 22 , 60000),
(4, 'Harish' , 'Tiwari' , 16 , 70000);
/* what if i want to delete one record or row ,
syntax: delete from table_name where coulmn_name = existing value ;
*/
delete from zz where firstname = 'Harish';
select * from zz;
/* what if i dont mention whom to delete or to delete particular column ,
what if i dont mention:
ans : so in this case every row will be deleted */
delete from zz ;
/* what if i want to delete the particular value of the column :
ans: then you cant delete beacuse ,
"delete is used for deleting the entire row , it will not delete the single value , 
instead you need to update the value use null if you want the value" */
/* what if i wnat to delete multiple rows then*/
delete from zz where id = 1 or id = 4;
delete from zz where lastname = 'Tiwari';
set sql_safe_updates = 1;
select * from zz;

