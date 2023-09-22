create table country1
(
cid int primary key,
cname varchar(20),

)

select * from country1
insert into country1 values(31,'india')
insert into country1 values(32,'canada')
insert into country1 values(33,'china')
insert into country1 values(34,'japan')
insert into country1 values(35,'austria')





create table states
(
stid int primary key,
sname  varchar(20),
cid int,
constraint fk_coutry_cid foreign key(cid) references country1(cid)


)
select * from states
insert into states values(41,'maharastra',31)
insert into states values(42,'ottava',32)
insert into states values(43,'beijin',33)
insert into states values(44,'tokyo',34)
insert into states values(45,'vienna',35)
create table city
(
citiid int,
cityname varchar(25),
stid int,
constraint fk_states_stid foreign key (stid) references states(stid)

)
select * from city
insert into city values(51,'pune',41)
insert into city values(52,'toronto',42)
insert into city values(53,'shanghai',43)
insert into city values(54,'yokohama',44)
insert into city values(55,'german_wien',45)

--1>find country whose state is maharastra
select cname from country1 c join states s on c.cid=s.cid where sname='maharastra'

--2>find country id,country name whose state is maharastra and city is pune
select * from states
select * from city
select * from country1
select c.cid ,c.cname from country1 c inner join states s on c.cid=s.cid inner join  city ct on ct.stid=s.stid where s.sname='maharstra' or ct.cityname ='pune' 

--3>find the state for country japan
select s.sname from states s inner join country1 c on s.cid=c.cid where c.cname ='japan' 

--4> find city name from country India
select cityname from city c inner join states s on c.stid=s.stid  inner join  country1  co on co.cid=s.cid where co.cname='india' 

--5>find state name whose city name pune
select sname from states s inner join city c on c.stid=s.stid where cityname='pune'

--6> find state name whose state id =43
select sname from states where stid=43

--7>find state name whose stid is 35 and city name toronto
select sname,stid from states where stid=(select stid from city where cityname='toronto')

