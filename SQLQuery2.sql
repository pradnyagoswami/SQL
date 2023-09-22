select * from employe11
drop table employe11
create table employe11
(
id int primary key,
name varchar(20)not null,
email varchar(20)unique,
age int check(age>=18),
salary numeric(10,2)

)
insert into employe11 values(201,'rutuja','rutuja@gmail.com',23,26000.10)
insert into employe11 values(202,'rutu','rutu@gmail.com',22,25000.20)
insert into employe11 values(203,'radha','radha@gmail.com',21,27500.10)
insert into employe11 values(204,'kshitj','kshitij@gmail.com',22,25120.12)
insert into employe11 values(205,'pranil','pranil@gmail.com',23,28100.20)

drop table department
create table department
(
did int primary key,
dname varchar(25)
)
insert into department values(10,'hr'),(20,'sales'),(30,'managament'),(40,'development'),(50,'testing'),(60,'admin')
alter table employe11 add did int
alter table employe11 add constraint pk_fk_dept_emp 
foreign key(did) references dept(did)

update employe11 set did=10 where id in(201,202)
update employe11 set did=20 where id in(203,205)
update employe11 set did=30 where id in(204)


select * from department
select * from employe11

select e.*,d.dname
from employe11 e
inner join department d  on d.did=e.did






