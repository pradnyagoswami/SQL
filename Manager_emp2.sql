drop table emp3
create table emp3
(
eid int,
ename varchar(25),
email varchar(30),
age int,
salary decimal,
city varchar(15)

)
insert into emp3 values(301,'kamal','kamal@123',35,23000.20,'banglore')
insert into emp3 values(302,'salaman','salaman@123',36,23000.20,'pune')
insert into emp3 values(303,'shahrukh','shahrukh@123',39,55000.20,'nashik')
insert into emp3 values(304,'akshay','akshay@123',40,23000.20,'nagpur')
insert into emp3 values(305,'dipika','dipika@123',32,23000.20,'pune')
insert into emp3 values(306,'katrina','katrina@123',46,45000.20,'nashik')
insert into emp3 values(307,'ranbir','ranbir@123',44,23000.20,'nagpur')
insert into emp3 values(308,'ameer','ameer@123',30,27300.20,'banglore')
insert into emp3 values(309,'sidharth','sidharth@123',26,26400.20,'pune')
insert into emp3 values(310,'varun','varun@123',27,350000.20,'banglore')
select * from emp3

alter table  emp3 add managerid int

update emp3 set managerid =306 where eid in(304,305)

select e1.ename 'employee',e2.ename as 'manager'
from emp3 e1,emp3 e2
where e1.managerid=e2.eid