create database havingClause5;
use havingclause5;
create table gg(
id int primary key,
name varchar(50),
age int,
salary int,
city varchar(50) 
);
-- inserting the rows 
insert into gg values
(1 , 'Harish Tiwari' , 20 , 45000 , 'BhagyaNagar'),
(2 , 'Sumit Tiwari' , 21 , 50000 , 'BhagyaNagar'),
(3 , 'Sudhanshu Tiwari' , 22 , 41000 , 'Pune'),
(4 , 'Soumya Tiwari' , 23 , 40000 , 'Pune'),
(5 , 'Cutie Tiwari' , 24 , 35000 , 'Ballia'),
(6 , 'Luto Tiwari' , 25 , 30000 , 'Ballia'),
(7 , 'Vaishnavi Tiwari' , 26 , 60000 , 'Ballia'),
(8 , 'Sarswati Tiwari' , 27 , 55000 , 'Delhi'),
(9 , 'Shikha Tiwari' , 29 , 51000 , 'Delhi');
-- having clause with aggregate function but without the group by 
select sum(salary) as sum_of_salary from gg
having name != 'Harish Tiwari';
select sum(salary) as  sum_of_salary from gg
where name != 'Harish Tiwari';
-- having clause  with the group by 
select city from gg
group by city
having city != 'Pune';
-- having clause with the aggregate function
select max(salary) as maximum_salary from gg
having max(salary) > 50000;
-- havinng clause with the combination of the group by and the aggregate function 
select city , sum(salary) as total_salary from gg
group by city
having city != 'Pune';
-- having clause with single conidtions 
select city , count(name) as total_people from gg 
group by city 
having count(name) > 1
order by count(name) ;
-- having clause with multiple conditions 
select city , sum(salary) as total_salary , count(*) as number_of_people from gg 
group by city 
having sum(salary) > 50000 and count(*) >= 1;
-- having clause with between operator 
insert into gg values
(10 , 'Sahil Tiwari' , 29 , 51000 , null);
select city , sum(salary) as total_salary from gg
group by city 
having sum(salary) between 30000 and 250000
and city is not null;
-- having with null
select city , sum(salary) as total_salary from gg
group by city 
having city is null;
select * from gg where salary is null;
select * from gg;