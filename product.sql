drop table product
create table product3
(
id int primary key,
name varchar(20) not null,
price decimal ,
company varchar(30)


)

insert into product values(101,'watch',6000.30,'samsumng')
insert into product values(102,'laptop',25000.20,'dell')
insert into product values(103,'tv',60000.2,'lg')
insert into product values(104,'pendrive',4000.62,'sanddisk')
insert into product values (105,'mouse',1500.0,'hp')
insert into product values(106,'laptop',35000.36,'asus')
insert into product values(107,'charger',3500.64,'samsung')
insert into product values(108,'fridge',66000.20,'lg')
insert into product values (109,'mobile',55000.30,'mi')
insert into product values (110,'adapter',4500.34,'dell')

--1>disply all record
select * from product

---2>disply product whose price <2000
select * from product where price<2000

--3>disply product whose company name is LG
select * from product where company='lg'

--4>Display products whose price is between 2000 to 5000
select * from product where price between 2000 and 5000


--5>Display unique company name 
select distinct company from product

--6>Display products whose company is dell & hp
select * from product where company in ('dell','hp')


create table customer3
(
cid int,
cname varchar(20),
id int,
constraint fk_product_id foreign key(id) references product(id)




)






