create database WorkingOfAutoIncrement;
use WorkingOfAutoIncrement;
create table ll(
id int auto_increment key ,
firstname varchar(50),
age int
);
/* agar main kuch value dena chah raha hoon tho target list ki zarurat nahi bas,
pura column jitne hai utne data dena padega*/
insert into ll values(1 , 'Harish Tiwari' , 20);
/* agar main chahta hoon automatically increment karein tho target list
 zaruri hai, to make sql understand left out column i need to assign value ,
 automatically through index
*/
insert into ll(firstname , age) values
('Sumit Tiwari' , 24),
('Sudhansu Tiwari' , 23);
/* and ab kuch bada number doon tho kya index pichel prvious number se dega ,
ya abhi jo number dunga udhar se dega*/
insert into ll values(1001 , 'Soumya Tiwari' , 17);
/* tho abhi maine 1001 diya hai tho agla ,so highest number check karega so that is 1001,
so is number se increment hoga */
insert into ll(firstname , age) values('Sakshi Tiwari' , 22);
/* ab agar main abhi jo current value do tho primary key error aayega ki duplicate value for,
primary key
eg: 
insert into ll values(1002 , 'Aradhaya Tiwari' , 12);
error: 
Duplicate entry '1002' for key 'll.PRIMARY'	0.000 sec
*/
insert into ll values(1002 , 'Aradhaya Tiwari' , 12);
select * from ll;