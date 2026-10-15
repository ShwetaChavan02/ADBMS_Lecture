create database User;
Show databases;
use User;
create table customer (custid int, custname varchar(15),city varchar(10), product varchar(15), price int);

-- display table customer
desc customer;

-- insert values
insert into customer values(1,'shweta','pune','pen',10);
insert into customer values(2,'sayali','ambegaon','pencil',20);
insert into customer values(3,'arya','hadapsar','eraser',30);
insert into customer values(4,'shreya','dhayari','sharpner',50);
insert into customer values(5,'shrushti','karvenagar','scale',40);

-- add primary key to customer id
alter table customer add primary key(custid);
desc customer;

-- display all columns in the table
select * from customer;

-- display sepcific column from a table
select custid,custname,city from customer;

-- display customer with id 3
select * from customer where custid=3;

-- display multiple data
select * from customer where custid=3 or custid=1;

-- create a clone of the table
create table CloneTable as select * from customer;
select * from CloneTable;

-- display column with specific id
select custname,city from customer where custid=1;

-- display data where price is greater than 15
select custname,product,price from customer where price>15;
select custname,product,price from customer where price>20;
select custname,product,price from customer where price>30;

-- display data belongimg to the specific city
select * from customer where city='karvenagar';

-- sorting data using clause
-- sorting data using order by single column

select * from customer order by price;
-- data is sorted in ascending order by default

select * from customer order by price desc;
-- data is sorted in decending order 

-- sort two columns simultaneously by using Order By
-- sort by city name and price

select * from customer order by price, city;
-- the first column mentioned is prioritised and is sorted either alphabetically or in ascending or descening
select * from customer order by city, price;
-- the preference and priority is given to the column mentioned first 

-- sorting both columns in different order
-- sort city in descending and price in ascending
select * from customer order by city desc, price asc;
-- desc descing , asc ascending

/* single row functions
 case conversion fucntions */
 select upper(custname),lower(product)from customer where custid<5; 
 -- uppercase and lowercase functions
select upper(custname),lower(product)from customer;

-- alter table , add last name 
alter table customer add column custlastname varchar(15);
select * from customer;

-- insert values in the new added column, i.e update the table
update customer set custlastname='chavan' where custid=1;
update customer set custlastname='phanase' where custid=2;
update customer set custlastname='hingne' where custid=3;
update customer set custlastname='kolhe' where custid=4;
update customer set custlastname='ghule' where custid=5;
select * from customer;

-- join name and last name , use concate fucntion
-- concat two columns
select concat(custname,' ',custlastname) from customer;
-- ' ' create space between fisrt name and last name

-- when you cancat two columns the column name appears as the query name
-- to change the name of concatenated column
select concat(custname,' ',custlastname) as fullname from customer;
select * from customer;

-- to save these changes into the original database
-- cltr + s

-- use of SUBSTR and INSTR functions
select * from customer;
select substr(custname,1,3) from customer;
select substr(custname,0,1) from customer;
select substr(custname,1,0) from customer;
select substr(custname,1,1) from customer;
select substr(custname,1,5) from customer;
-- specifies the staring range of a string and the ending range and it prints only the data between that

-- to find position of any alphabate in the string
select instr(custname,'a') as position from customer;
select instr(custname,'s') as position from customer;
select instr(custname,'i') as position from customer;
-- gives position of alphabate a in the customer name

-- insert new row in the table where a comes two times in the customer anme column check what it displayes
select instr(custname,'a') as position from customer;
-- it gives position of the first occured alphabet and ignore the alphabet occured later

-- use both substr and instr simultaneously
select substr(custname,1,2),instr(custname,'s')from customer;

select substr(custname,1,2)as SubString,instr(custname,'s')as InString from customer;
-- this gives a different column name for the output

-- display only single person data in substr and instr format
select substr(custname,1,3)as SubString,instr(custname,'s')as InString from customer where custid < 3;








