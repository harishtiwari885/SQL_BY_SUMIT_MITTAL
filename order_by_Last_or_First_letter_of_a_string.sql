create database orderbyLastorFirstletterofastring;
use orderbyLastorFirstletterofastring;
create table gg(
id int primary key ,
name varchar(50) , 
age int ,
locations varchar(30)  default 'Delhi'
);
drop table gg;
-- inserting the rows 
insert into gg(id , name , age) values
(1 , 'Harish Tiwari' , 20),
(2 , 'Tota Akhil' , 22),
(3 , 'Routu Yesh' , 22),
(4 , 'Sai Ram' , 22),
(5 , 'Sarvu Vikas' , 21);
-- Sort a list of names based on their first letter alphabetically.
/* so i can do this by using two ways:
1) left(column_name , 1 this one means the first charcter)
2)substring(column_name , start , how_many_characters)
so lets try this */
-- 1) left(column_name , 1 this one means the first charcter)
select name from gg order by left(name , 1); 
-- 2)column_name.charAt(0) 
select name from gg order by substring(name , 1 , 1);
/* so this substring : is used for extracting any part of the string,
in this i have to mention the string or column of string  , then start this means that from which charcater i need to chose or start ,
then i need to mention the number_of_charcters or length to tell that how many charcters i want from start to know   */
-- Sort a list of words based on their last character alphabetically.
/* same i can do this in two ways :
1) right(column_name , 1 this means the first charcter)
2) substring(column_name , length(column_name) , position) or 
substring(column_name , char_length(column_name) , psoition )
so this length() : this means that it will return the memory size used by the string based on its characters 
but this char_length(): this is used for to return the actual total characters in the string ,
so lets do this parctically */
select name from gg order by substring(name , length(name) , 1);
select name from gg order by right(name , 1);
select name from gg order by substring(name , char_length(name) , 1) ;
-- Sort an array of strings based on the middle character (use left-middle if even length).
/* so i can do this in two ways:
1) mid(column_name , start , how_many_charcters)
2) substring(column_name , start , how_many_characters)
so lets do this practically
*/
select name from gg order by binary mid(name , 5 , 1);
select name from gg order by mid(name , 5 , 1) ;
select name from gg order by substring(name , 2 , 2) ;
/* working of this : 
select name from gg order by substring(name , 2 , 2) ;
so ye second letter se start hoke third letter tak jaayega :
id = 1 , ar
id = 2 , ot 
id = 3 , ou 
id = 4 , ai 
id = 5 , ar 
so isme then ar , ar , ai tho isme a phele aata hai alphabetically order tho ,
teeno ka same first letter so second letter comapre hoga so , i phele aata hai :
tho phele id 4 then ,
uske baadh ar , ar main jo insert ke basis pe vo aagyega tho id = 4 , then id = 1 , id = 5 , 
uske ou , ot hai , ab isme o same hai tho second letter compare hoga so,
t comes first than u so the order is 
id = 4 , 1 , 5 , 2 , 3 */