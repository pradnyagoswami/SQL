create database Book
drop table author
create table author
(
author_id int primary key,
author_name varchar(20) ,
city varchar(15) 
)
insert into author values(11,'vijay_Tendulkar','mumbai')
insert into author values(12,'Ravindranath_tagor','nashik')
insert into author values(13,'bal_gangadhar_tilak','nagpur')
insert into author values(14,'william_s','usa')


create table Award_master
(
award_type_id int primary key ,
award_name varchar(25),
award_price decimal

)
insert into Award_master values(21,'National_bookaward',55000)
insert into Award_master values(22,'InterNational_bookaward',65000)
insert into Award_master values(23,'Nobalbookaward',75000)
insert into Award_master values(24,'stateAWard',45000)



drop table book1
create table Book1
(
Book_id int primary key ,
Book_name varchar(20) unique,
price decimal,
author_id int
constraint fk_author_Book foreign key(author_id) references author(author_id)

)
insert into book1 values(31,'ghasiram_kotwal',5230,11)
insert into book1 values(32,'gitanjali',6330,12)
insert into book1 values(33,'gitaraksh',9620,13)
insert into book1 values(34,'hamlet',8530,14)



drop table Award
create table Award
(
award_id int primary key,
Book_id int ,
constraint fk_Book_id  foreign key(Book_id) references Book1(Book_id),
award_type_id int,
constraint fk_award_type_id foreign key(award_type_id) references award_master(award_type_id),
author_id int,
constraint fk_author_id foreign key(author_id) references author(author_id)

)
alter table award add award_year int

insert into award values (41,31,21,11,2012)
insert into award values (42,32,22,12,2015)
insert into award values (43,33,23,13,2013)
insert into award values (44,34,24,14,2006)
insert into award values (45,34,24,14,2006)
insert into award values (46,32,22,12,2009)

select * from Award




--1>find the book which is written by williams_s 
select book_name,author_name from Book1 b inner join author a on b.author_id=a.author_id where author_name='william_s'

--2>find author name for book gitanjali
select Book_name, author_name from author a inner join book1 b on a.author_id=b.author_id where Book_name='gitanjali'


--3>find author name who got award in 2012
select a.author_name from author a join award aw on a.author_id=aw.author_id where aw.award_year=2012

--4>find the book got an awards
select book_name from book1 b join award a on a.Book_id=b.Book_id 

--5>find out the author wise book count 
select author_name,count(*) as count from author a inner join book1 b on a.author_id=b.author_id 
group by a.author_name

--6>find the author name who got only one award
select author_name  ,count(aw.award_id) as cnt from author a inner join award aw on a.author_id=aw.author_id
group by a.author_name
having count(aw.author_id)=1

--7>find the authorname who got InterNational_bookaward
select author_name from author a inner join award aw on a.author_id=aw.author_id  inner join Award_master am on am.award_type_id=aw.award_type_id
where award_name='InterNational_bookaward'

--8>find the author who got award price more than 50,000
select a.author_name
from author a inner join Award aw 
on a.author_id=aw.author_id
inner join Award_master am 
on aw.award_type_id=am.award_type_id
where am.award_price>50000


--9>find author who got maximum awards
select  top 1  a.author_name,count(*) as counts from author a inner join award aw on a.author_id=aw.author_id 
group by a.author_name
order by count(*) desc
+



select * from author
select * from award_master
select * from Book1
select * from award