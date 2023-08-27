-- create tables
create table customer ( 
cust_id numeric, 
cust_name varchar(40), 
cust_no numeric, 
cust_email varchar(40)
);


create table book ( 
book_id numeric, 
book_name varchar(40), 
publicaton_year numeric, 
book_price numeric 
);

create table librarian ( 
lib_id numeric, 
lib_name varchar(40), 
lib_no numeric, 
lib_email varchar(40)
);

create table genre (
id numeric,
book_name varchar(40),
genre varchar(40)
);

-- insert values in customer table
insert into customer values (1,'aneesh',9934773850,'aneesh@gmail.com');
insert into customer values (2,'aryan',9975633726,'aryan@gmail.com');
insert into customer values (3,'girija',8888468394,'girija@gmail.com');

-- insert values in book table
insert into book values (10,'Biology Encyclopedia',2019,750);
insert into book values (11,'Percy Jackson',2005,250);
insert into book values (12,'Harry Potter',1997,300);
insert into book values (13,'The Lost City',2020,500);
insert into book values (14,'Playing it my Way- Sachin Tendulkar',2014,500);

-- insert values in librarian table
insert into librarian values (100,'Rashmi',8847562909,'rahmi@gmail.com');
insert into librarian values (101,'Ashish',7783925482,'ashish@gmail.com');
insert into librarian values (102,'Rajesh',7783925499,'rajesh@gmail.com');

-- insert values in genre table
insert into genre values (1,'Biology Encyclopedia','general knowledge');
insert into genre values (2,'Percy Jackson','adventure');
insert into genre values (3,'Harry Potter','adventure');
insert into genre values (4,'The Lost City','history');
insert into genre values (5,'Playing it my Way- Sachin Tendulkar','biography');


-- print output(queries)
-- 1)display books based on their publicaton_year
select book_id,book_name,publicaton_year from book;


-- 2)add column cust_city into customer table with data type integer
alter table customer 
add cust_city varchar(15);


-- 3)insert values into cust_city column
update customer set cust_city='delhi' where cust_id=1;
update customer set cust_city='mumbai' where cust_id=2;
update customer set cust_city='indore' where cust_id=3;
select * from customer;


-- 4)delete row in book table whose publication year was 2014
delete from book where publicaton_year=2014;


-- 5)display count of books genre wise
select count(id), genre 
from genre
group by genre;


-- 6)display the name of book whose genre is adventure or released before year 2010 using join method
select book.book_name, book.publicaton_year, genre.genre
from book,genre
where book.publicaton_year<2010 or genre.genre='adventure';

select book.book_name, book.publicaton_year, genre.genre
from book,genre
where book.publicaton_year<2010 and genre.genre='adventure';


-- 7)update name of the customer whose phone no is 9934773850
update customer set cust_name='vishal' where cust_no=9934773850;
alter table customer 
rename column cust_id to id;


-- 8)display names of librarians starting from letter 'R' or phone no starting with 778
select * from librarian where lib_name like 'R%' or lib_no like '778%';


-- 9)arrange book names in ascending and descending order
select book_name 
from book
order by book_name
asc; -- ascending order

select book_name from book order by book_name desc; -- descending order




