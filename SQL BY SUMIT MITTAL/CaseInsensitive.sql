create database CaseSensitive;
use CaseSensitive;
create table ss(
id  int primary key,
firstname varchar(50),
lastname varchar(50),
age int
);
insert into ss value
(1 ,'Harish' , 'Tiwari' , 20),
(2 ,'Routu' , 'yesh' , 21),
(3 ,'Tota' , 'Akhil' , 22),
(4 ,'Sarvu' , 'Vikas' , 23),
(5 ,'Routu' , 'Girish' , 24);
/* since we all know that sql is case - Insensitive:
means captial or smaller that doesnt matter*/
select firstname , lastname from ss where age = 20;
-- this is an example for case - Insensitive where i have given small letters 
select *  from ss where firstname = 'harish';
/* what if i want to make it case - Sensitive then:
i can use binary keyword ,
The BINARY keyword : is used to make string comparisons case-sensitive in SQL
 — especially in MySQL.
 */
 select * from ss where binary firstname = 'Harish';
 select * from ss where binary firstname = 'harish';

