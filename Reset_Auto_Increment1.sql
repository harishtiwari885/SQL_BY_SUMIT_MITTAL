create database Reset_Auto_Increment;
use Reset_Auto_Increment;
create table pp(
id int auto_increment unique key,
firstname varchar(50),
lastname varchar(50),
age int ,
locations varchar(50) default 'Delhi'
);
drop table pp;
insert into pp(firstname , lastname , age ) values
( 'Harish' , 'Tiwari' , 20),
( 'Sumit' , 'Tiwari' , 23),
( 'Shikha' , 'Tiwari' , 30),
( 'Sudhanshu' , 'Tiwari' , 23),
( 'Soumya' , 'Tiwari' , 18);
select * from pp;
delete from pp where id = 5;
insert into pp(firstname , lastname , age) values
('Vaishnavi' , 'Tiwari' , 18);
/* what is happening here :
When you create a table with an AUTO_INCREMENT column (like your id), MySQL automatically assigns a unique incrementing number for each new row.
When you delete a row (for example, the row where id = 5), MySQL does not reset or reuse that auto-increment value.
So, after deleting the row with id = 5, the next inserted row will get id = 6, not 5.
The auto-increment counter keeps moving forward, even if some rows are deleted.
*/
/* in this once the incremented value is deleted then we cant re-use or re-assign,
value to the another row because delete does not reset auto increment */

