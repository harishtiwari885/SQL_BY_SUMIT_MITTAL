create database UnderstandingTheForeignKeyWithUnique;
use UnderstandingTheForeignKeyWithUnique;
create table dhh(
id int primary key,
course varchar(50),
price int
);
drop table dhh;
-- inserting the rows
insert into dhh values
(1 , 'Sql' , 15000),
(2 , 'Java' , 25000),
(3 , 'Dsa Using Java' , 50000);
-- creating another table
create table jj(
id int primary key,
name varchar(50),
roll_no int,
selected_Course int default 1,
foreign key(selected_Course) references dhh(id)
);
drop table jj;
-- inserting the rows
insert into jj values
(1 , 'Harish Tiwari' , 140 , 1),
(2 , 'Sumit Tiwari' , 99 , 2),
(3 , 'Shikha Tiwari' , 10 , 3),
(4 , 'Chotu Tiwari' , 30 , 2),
(5 , 'Vaishnavi Tiwari' , 14 , 3);
select * from jj;
insert into jj values
(6 , 'Soumya Tiwari' ,12 , null);
select name , selected_Course from jj where id = 6;
/* how could this query can run:
insert into jj values
(6 , 'Soumya Tiwari' ,12 , null);
my doubt is parent table doesnot have the null value then how can the child table can be insert with the null values,
*******"Even though NULL value parent table mein present nahi hai, fir bhi agar child table mein NULL value aati hai, 
toh foreign key usko ignore kar deta hai."*****
************** NULL ka matlab hota hai: "Kuch bhi nahi / pata nahi"

Aur SQL ka rule hai:

Foreign key constraint tabhi check hoga jab child table mein value NULL nahi ho.
**************** most important:
✅ Final Answer (Simplified in Hinglish):
Haan! Chahe parent table ka column PRIMARY KEY ho ya UNIQUE KEY ho...
Agar child table mein foreign key column ka value NULL hai, to SQL usko hamesha ignore karega —
koi check nahi karega — aur insert ho jaayega bina error ke. ✅ *******************
************************* */