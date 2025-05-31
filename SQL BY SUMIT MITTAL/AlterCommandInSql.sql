create database alter2;
use alter2;
create table zz(
id int primary key ,
firstname varchar(50),
lastname varchar(50),
age int ,
salary int,
locations varchar(50) default 'delhi'
);
/*==============================================================================
1) Adding a Column:
syntax: 
alter table table_name add column column_name datatype constraints;
                          or
alter table table_name add column_name datatype constarints;
*/
alter table zz add column middlename varchar(50) after firstname;
alter table zz add hobbies varchar(50) default 'Cricket';
desc zz ;
/*==============================================================================
2)Drop a Column:
syntax:
alter table table_name drop column column_name ; 
here column optional
*/
alter table zz drop column hobbies;
alter table zz drop middlename;
/*==============================================================================
3)Rename a column:
syntax :
there are two ways:
1) rename keyword 
2)change keyword 
rename: alter table table_name rename old_column_name to new_column_name;
for rename the column keyword is not optional 
change : alter table table_name change old_column_name new_column_name datatype constarints;
but for the change keyword the column keyword is optional 
*/
-- rename keyword
alter table zz rename column middlename to middle_name ;
alter table zz change hobbies myhobbies varchar(50) default 'Cricket';
desc zz;
alter table zz change column myhobbies myyyhobbies varchar(50);
alter table zz drop myyyhobbies;
/* ================================================================================
4)modifying column datatype;
syntax: 
alter table table modify column coulmn_name new_datatype constraints;
ALTER TABLE table_name
MODIFY [COLUMN] column_name new_datatype [constraints];
*/
alter table zz drop middle_name ;
alter table zz modify middle_name int unique key after age;
desc zz;
alter table zz drop salary;
alter table zz rename column middle_name to salary ;
/* 
"alter table zz rename column middle_name to salary ;" : this line will throw error ,
because rename is only use for renaming the column and unless it doesnt do any work , so
after cant be used with rename keyword
*/
/*
5)Rename the table name:
syntax :
 alter table old_table_name rename to new_table_name;
*/
alter table zz rename to mm;
rename table mm to yy;
/*Chnaging the primary key :
syntax:
alter table zz drop primary key; // firts frop primary key and then add
alter table yy add primary key(id) ; // for single column
alter table yy add primary key(id , salary);// for composite column
*/
alter table yy drop primary key;
alter table yy add primary key(id) ;
alter table yy modify id primary key to unique key; -- this is the incorrect way 
desc yy;

