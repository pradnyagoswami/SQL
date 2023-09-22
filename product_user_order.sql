drop table users
create table users
(
id int,
username varchar(25),
email varchar(25)
constraint pk_uid primary key (id)

)
select * from users
insert into users values(11,'pradnya','pradnya@123')
insert into users values(12,'neha','neha@123')
insert into users values(13,'mrunali','mrunali@123')

drop table products
create table products
(
pid int,
pname varchar(25),
price decimal
constraint pk_pid primary key (pid)
)
select * from products
insert into products values(71,'tv',66000.20)
insert into products values(72,'AC',85000.11)
insert into products values(73,'laptop',73000.99)
insert into products values(74,'fridge',49300.20)
insert into products values(75,'phone',95000.20)
drop table orders
create table orders
(
oid int primary key,
qty int,
id int,
constraint fk_user_order_id foreign key (id)references users(id),
pid int,
constraint fk_product_order_pid foreign key (pid)references products(pid)
)

insert into orders values(51,3,11,72)
insert into orders values(52,65,13,71)
insert into orders values(53,45,12,73)
insert into orders values(54,36,12,74)
insert into orders(oid,qty) values(55,85)
select * from users
select * from products
select * from orders

select o.oid,o.pid,p.pname,p.price,u.username
from Orders o
inner join products p on p.pid=o.pid
inner join Users u on u.id=o.id

select o.oid,o.pid,p.pname,p.price,u.username
from Orders o
left join products p on p.pid=o.pid
left join Users u on u.id=o.id

select o.oid,o.pid,p.pname,p.price,u.username
from Orders o
right join products p on p.pid=o.pid
right join Users u on u.id=o.id


select o.oid,o.pid,p.pname,p.price,u.username
from Orders o
full join products p on p.pid=o.pid
full join Users u on u.id=o.id
 

 --display number of order placed by each customer
 select id,count(oid) from orders
 group by id

 
 






