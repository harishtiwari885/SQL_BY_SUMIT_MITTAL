create database HandlingNullValues;
use HandlingNullValues;
create table bb(
id int primary key,
firstname varchar(50),
middlename varchar(50),
lastname varchar(50),
age int,
location varchar(50)
);
/* agar main simply value insert kara raha hoon and agar ek value bhi,
nahi diya ya miss kiya tho coloumn count ka error aayega , jsika matlab,
column ke hissab se value nahi mila easily error aaya*/

/* Is problem ko theek karne ke 3 tarike hain:
1) NULL use karo jahan value dena zaroori nahi ho (string ya int dono ke liye).
2) Empty string (' ') use karo agar string column me value nahi deni.
3) Sabse important: Sirf unhi columns ke naam mention karo jisme value dena hai
   — isse column count error avoid hota hai. */
-- this is an eg for use null(no value) where values is not required for string and int
insert into bb values(1 , 'Harish' , null , 'Tiwari' , 20 , 'Ballia');
-- this is an eg for use empty string(' ') where values is not required for string to 
-- avoid column count error
insert into bb values(2 , 'Vaishnavi' , ' ' , 'Tiwari' , 19 , 'Ballia');
-- this is the most important one mention column in which you want to enter the
-- values
insert into bb(id ,firstname , lastname , age , location) values
(3 , 'Sakshi' , 'Tiwari' , 20 , 'Ballia'),
(4 , 'Sikha' , 'Tiwari' , 29 , 'Ballia'),
(5 , 'Sarswati' , 'Tiwari' , 16 , 'Ballia'),
(6 , 'Pihu' , 'Tiwari' , 12 , 'Pune');
select * from bb;