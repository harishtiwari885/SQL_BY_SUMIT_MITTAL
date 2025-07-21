create database concatination;
use concatination;
create table gg(
id int primary key,
firstname varchar(50) ,
lastname varchar(50) ,
age int ,
salary int ,
locations varchar(50) default 'Delhi'
);
insert into gg(id , firstname , lastname , age , salary ) values
(1 , 'Harish' , 'Tiwari' , 20 , 50000),
(2 , 'Routu' , 'Yeshwanth' , 21 , 40000),
(3 , 'Tota' , 'Akhil' , 22 , 45000),
(4 , 'Sarvu' , 'Vikas' , 23 , 30000),
(5 , 'Sai' , 'Ram' , 24 , 20000);
-- merge or combine the firstname and the lastname with space in between them
select concat(firstname , ' ' , lastname) as full_name from gg;
-- another way to do this 
set sql_mode = 'pipes_as_concat';
select firstname || lastname as full_name from gg ;
-- another way to do this 
select firstname + ' ' + lastname from gg ;
-- merge int columns 
select concat(age , ' ', ':age' , salary, ' ' , ':salary') from gg;
/* so yes this can concatinate the  int columns as well 
*/
-- working of the concat with null  values
select concat(firstname , null , lastname) as full_name from gg;
insert into gg(id , firstname , lastname , age , salary) values
(6 , null , 'Sruthi' , 21 , 45000); 
-- in concat if any aruguments in concat is null then the result will be the null
select concat(firstname , ' ' , lastname) as full_name from gg ;
/* what is group_concat(): this means that  it will group the entire string and give one single string,
one single string means every string values is combined in one string.
syntax: 
group_concat(firstname separator '-') by default the separator is comma(,).*/
select group_concat(firstname separator '-') as single_string from gg;
-- what if i need to combine mutliple columns
select group_concat(firstname , lastname separator '-') as single_string from gg;
-- can i group the int values
select group_concat(age) as single_age from gg;
select group_concat(lastname separator '-') as single_string from gg;

