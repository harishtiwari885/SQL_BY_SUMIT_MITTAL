create database rev2;
use rev2;
create table ss(
id int primary key,
name varchar(50),
age int,
locations varchar(50) default 'Delhi', -- this is for string,
salary int default 25000 not null -- ths for the int 
);
drop table ss;
insert into ss values(1 , 'Harish' , 20 ); -- this will throw me error because there id total 5 columns and i am giving value to only 3 so coulmn count errror
/* so when you mention the target list , the non mentioned column get null or default values*/
insert into ss(id , name) values(2 , 'Sumit');
/* so for age : i did not mention default value so it will take null value ,
butfor locations and salary there is deafult value so that will be assigned */
/* can i update or change the default value*/
insert into ss(id , name , age , locations) values
(3 , 'Chotu' , 22 , 'Pune');
insert into ss(id , name , age , locations) values
(4 , 'Soumya' , 17);
/* hum log default value koi null kar sakte only if that column is nullable */
insert into ss(id , name , age , locations) values
(5 , 'Tiwari' , 20 , null);
/* but agar main default value column ko not null bana doon tab main null value nahi de sakta*/
insert into ss(id , name , age , salary) values
(7 , 'Khurfatto' , 15 , null);
-- so this line khurfatto has given the error that salary cannot be null because i have mention salary has not null 
insert into ss(id , name , age , locations) values
(6 , 'Vaishnavi' , 20 , null);

select *from ss;