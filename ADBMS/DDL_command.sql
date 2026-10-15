-- 01/10/2026
-- ADMBS
-- DDL COMMANDS
-- data defination language

/* create database */

create database institute;
show database;
use institute;


/* create table */

create table staff(staff_id int, first_name varchar(10),last_name varchar(10), DOB date, dept_id int);
desc staff;
create table department(dept_id int, dept_name varchar(10),dept_location varchar(10));

/* insert value into table staff  */

insert into staff values(joining_year int);
insert into staff values(contact_no int);

/* add location and joining_year into table staff  */

alter table staff add location varchar(20);
alter table staff add joining_year int;

/* modify datatype of a column  */

alter table staff modify first_name text;

/* drop column from a table */

alter table staff drop column contact_no;
desc staff;

/* change size of the datatype */
alter table staff modify column last_name varchar(15);

/* create a foreign key constraint between two tables */
-- first create the primary key on both the tables
-- syntax: alter table tablename add primary key (column_name);

alter table staff add primary key ( staff_id );
alter table department add primary key ( dept_id );
desc staff;
desc department;

/* drop primary key from table */
-- syntax : alter table table_name drop primary key;
alter table staff drop primary key;

/*syntax: alter table table_name add foreign key (column_name) references 2nd table_name (colum_name)  */
alter table staff add foreign key (dept_id) references department (dept_id);
des staff;

/* another way to add foreign key */
lter table staff add constraint FK_staff_Department foreign key (dept_id) references department (dept_id);

/* drop foreign key from a table */
-- syntax : alter table table_name drop foreign key  both table_name;
alter table staff drop fpreign key FK_staff_department;
des staff;

/* rename table */
-- syntax: alter table old table_name rename new table_name;
alter table staff rename staff1;
desc staff1;

/* another way to rename a table */
--syntax: rename table old_table_name to new_table_name;
rename table staff to staff1;

/* rename column name in a table */
ALTER TABLE staff RENAME COLUMN last_name TO surname_name;

/* another way to rename a column */
ALTER TABLE staff RENAME COLUMN last_name TO surname_name;


