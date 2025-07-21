create database Practice1;
use Practice1;
create table tt(
id int primary key ,
name varchar(50),
salary int 
);
insert into tt values
(1,	'Aditi' ,50000),
(2 , 'Rohan' ,60000),
(3 ,'Priya' ,55000);
-- updating the salary of all employees
update tt set salary = salary * 1.10 ;
-- update the salary of particular employee
update tt set salary = salary * 1.10 where id = 1;
alter table tt drop column salary;
/* ==============================================================================*/
alter table tt drop column grade ;
alter table tt add column grade varchar(10);
alter table tt add column marks double after name ;
-- inserting the marks using update keyword for single row 
update tt set marks = 88 where id = 1;
-- but what if i want to update or insert value all at once 
update tt set marks = case id
when 1 then 75 
when 2 then 88
when 3 then 95
else marks 
end
where id in(1 , 2 , 3);
/* solving the question :
*/
update tt set grade = case 
when marks >= 90 and marks <= 100 then 'A'
when marks >= 80 and marks < 90 then 'B'
when marks < 80 then 'C'
else grade 
end 
where id in(1 , 2 , 3);
insert into tt(id , name) values
(4 , 'Harish Tiwari'),
(5 , 'Soumya Tiwari'),
(6 , 'Chotu Tiwari');
insert into tt(id , name )values
(7 , 'Vaishnavi Tiwari');
update tt set marks = case id
when 4 then 98
when 5 then 55
when 6 then 88
when 7 then 35
else marks
end 
where id in(4 , 5, 6 , 7);
update tt set grade = case
when marks >= 90 and marks <= 100 then 'A'
when marks >= 80 and marks < 90 then 'B'
when marks >= 45 and marks < 80 then 'C'
else 'fail' 
end where id in ( 4 , 5, 6, 7);
select * from tt;
set sql_safe_updates= 0;