create database distinct1;
use distinct1;
create table gg(
id int primary key ,
name varchar(50),
age int,
locations varchar(50));
insert into gg values
(1 , 'Harish' , 20 , 'Delhi'),
(2 , 'Tiwari' , 20 , 'Delhi'),
(3 , 'Sumit' , 20 , 'Delhi'),
(4 , 'Harish' , 20 , 'Delhi');
-- distinct is used for selecting or returning the unique values
select distinct name from gg;
-- distinct in multiple columns
select distinct name , locations from gg ;
/* distinct on single column : it will comapre each individual value and ignore the,
duplicates values and print it once and ignore the duplicate */
/* but distinct on multiple : 
it will comapre the the pair , eg this code
it has maked the pair of (name , locations): is pair ka koi duplicate aaya tho ignore karega ek baar print karke,
but name ka duplicate value ho sakta hai and also the locations ka bhi , but pair of (name , locations) ka duplicate ,
nahi ho sakta hai)
*/