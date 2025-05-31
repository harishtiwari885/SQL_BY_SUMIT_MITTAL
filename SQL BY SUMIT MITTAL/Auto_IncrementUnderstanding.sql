create database AutoIncrement;
use AutoIncrement;
create table kk(
id int auto_increment key,
firstname varchar(50),
lastname varchar(50),
age int ,
locations varchar(50)
);
/* AUTO_INCREMENT needs an index (like PRIMARY KEY or UNIQUE KEY)
This index helps MySQL keep track of the last inserted number and where it was stored
Without that index, MySQL can't reliably generate the next unique number
So the index acts like a reference point for AUTO_INCREMENT
 to know the current max value and continue incrementing from there */
insert into kk(firstname , lastname , age , locations) values
('pihu' ,'tiwari',12 , 'ballia'),
('sihu' ,'tiwari',10 , 'ballia'),
('cutie' ,'tiwari',8 , 'ballia'),
('luto' ,'tiwari',3 , 'ballia'),
('tihu' ,'tiwari',12 , 'ballia');
drop table kk;
insert into kk values(6 , 'khurfatho' , 'tiwari' ,16 , 'ballia');
/* so when you want the increment should be happen automatically , so mention,
the columns in target list and enter or insert data except auto incrmented column
When you write an INSERT like this:

sql
Copy
Edit
INSERT INTO kk (firstname, lastname, age, locations) VALUES (...)
SQL sees you didn’t mention the id column (which is AUTO_INCREMENT).
So it automatically assigns the next auto-incremented number to the id column for each row you insert.
This is how MySQL knows to generate the id values for you without you 
specifying them.*/
insert into kk(firstname , lastname , age , locations) values 
('bhabhako' ,'tiwari',18 , 'ballia'),
('choti' ,'tiwari',22 , 'ballia');
/* yaha par maine null value diya par ye nahi lega instead it will genrate the number
So NULL here is a special signal telling MySQL:
“Hey, please generate the next auto-incremented value for me.”*/
insert into kk values(null , 'babu' , 'tiwari', 16, 'ballia');
select * from kk;
/* this line will give error: 
insert into kk values(9 , 'harish' , 'tiwari' , 20 , 'ballia');
the error is: primary key error ,
but maine tho primary key define hi nahi kiya : answer
MySQL needs your AUTO_INCREMENT column to be unique, usually by making it a primary key.
If you don’t say it’s a primary key or unique, MySQL still acts like it is to keep things working.
So, when you try to insert a duplicate number, MySQL gives an error mentioning PRIMARY KEY because it expects that column to be unique — even if you didn’t say it explicitly.
That’s why you should always make your auto-increment column a primary key or unique key. It avoids confusion and errors.
*/
insert into kk values(9 , 'harish' , 'tiwari' , 20 , 'ballia');