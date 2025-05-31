create database Null1;
use Null1;
create table hg(
id int primary key ,
firstname varchar(50) not null ,
middlename varchar(50),
lastname varchar(50),
age int not null ,
locations varchar(50) not null default 'Delhi'
);
drop table hg;
/* here eexcept middlename  nothing can be null , so what if user enters null values,
so to stop that iam using not null ,to give error to the user that the particular column ,
cannot be null , you have to enter some value 
eg: 
insert into hg values
(1 , null , 'Kumar', 'Tiwari' , 20 , 'Delhi'),
(2 , 'Routu' ,'yesh','wanth' , null, 'Hyderabad'),
(3 , 'Routu' , 'kumar', 'girish' , 20, 'Hyderabad'),
(4 , 'Tota' ,'shstariya', 'Akhil' , 20, 'Hyderabad');
so when i have run this i got error that is:
Error Code: 1048. Column 'firstname' cannot be null	0.016 sec
*/
insert into hg values
(1 , 'Harish' , 'Kumar', 'Tiwari' , 20 , 'Delhi'),
(2 , 'Routu' ,'yesh','wanth' , 21, 'Hyderabad'),
(3 , 'Routu' , 'kumar', 'girish' , 20, 'Hyderabad'),
(4 , 'Tota' ,'shstariya', 'Akhil' , 20, 'Hyderabad');
insert into hg(id , firstname , middlename ,lastname , age) values
(5 , 'Sai' , 'Ram', 'Goud' , 22),
(6 , 'Totha' ,'shstariya', 'Akhil' , 20);
insert into hg values(7 , 'Jarvis' , 'Friday' , 'Tony Stark' , 40 , null);
/* insert into hg values(7 , 'Jarvis' , 'Friday' , 'Tony Stark' , 40 , null);
from this line i can also set default value as null , if it is not defined
 as not null  ,
 agar ab main locations ko not null karun tho error karun*/
select * from hg;