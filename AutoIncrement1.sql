create database autoincrement1;
use autoincrement1;
create table jj(
id int auto_increment primary key ,
name varchar(50),
age int,
locations varchar(50)  default 'Delhi'
);
-- it will automatically enter the values for id whichis not null and not duplicated,
insert into jj(name , age) values('Harish' , 20),('Sumit' , 24) ,('Sudhanshu' , 23),
('Soumya' , 17);
-- what if i entered the id value then what will be the next value for id , so it will check the highest value then + 1 and it will give the value,
insert into jj(id , name , age) values(101 , 'Shikha' , 30);
select* from jj;
-- so iam entering the highest value is 101 then next will be 102 
insert into jj(name , age) values
('Vaishnavi' , 18) ,('Sarswati' , 16);
-- till know the highest is 103 id what if i delete this then what would be the next 102 + 1 = 103 
-- will it will recreate 103 or reuse it lets check
delete from jj where id = 103;
insert into jj(name , age) value
('Cutie' , 8); -- hey i have got 104 
select *from jj;