create database DataTypeMismatch;
use DataTypeMismatch;
create table Ht(
id int primary key ,
firstname varchar(50),
lastname varchar(50),
age int ,
locations varchar(50)
);
insert into ht(id , firstname , lastname , age) values
(1 , 'Harish' , '455' , 20),
(2 , 'routu' , 'yesh' , 21),
(3 , 'routu' , 'girish' , 22),
(4 , 'tota ' , 'akhil' , 23),
(5 , 'Sarvu' , 'vikas' , 25 );
/* so in this at the place of string i have given a number i.e: 455,
(1 , 'Harish' , '455' , 20), like this ,
so it should give me error right , so here sql will implicitly or automatically
convert number into string , so it will not throw error of type mismatch*/
/* but if i try to insert or give string to int then it will throw me an error, 
because of size and type , but string can easily convert into into string */
-- insert into ht(id , firstname , lastname , age) values
-- (6 , 'sai' , 'ram' , 'hey' );
/* see 
insert into ht(id , firstname , lastname , age) values
(6 , 'sai' , 'ram' , 'hey' ); this has given me error*/
select * from ht;