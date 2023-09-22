2create table department1
(
did int,
dname varchar(25),
salary decimal

constraint pkdid primary key(did)



)
select * from department1
insert into department1 values(501,'hr',65000.30)
insert into department1 values(502,'sales',34200.60)
insert into department1 values(503,'admin',55600.99)
insert into department1 values(504,'management',46900.33)
insert into department1 values(505,'hr',25600.12)
insert into department1 values(506,'employee',69300.20)
insert into department1  (did,dname) values(507,'testing')

create table emp1
(
eid int,
ename varchar(30),
did int
constraint fkdept_emp_did foreign key (did) references department1

)
select * from emp1
insert into emp1 values(601,'pradnya',502)
insert into emp1 values(602,'neha',501)
insert into emp1 values(603,'mrunali',503)
insert into emp1 values(604,'raj',501)
insert into emp1 values(605,'anuj',504)
insert into emp1 values(606,'sakshi',505)
insert into emp1(eid,ename) values(607,'pooja')
insert into emp1(eid,ename) values(608,'rohan')



select * from department1
select * from emp1

select d.did,e.ename,d.dname
from department1 d
inner join emp1 e on d.did=e.did

select d.did,e.ename,d.dname
from department1 d
left join emp1 e on d.did=e.did

select d.did,e.ename,d.dname
from department1 d
right join emp1 e on d.did=e.did

select d.did,e.ename,d.dname
from department1 d
full join emp1 e on d.did=e.did

---- display count of emp in each dept
select did from emp1 
select did,count(did) as'count' from emp 
group by did

--display deptwise sum salary
select did, sum(salary) from department1 group by did

--display avg of salary 
select did, avg(salary) from department1 group by did

--display count of emp in each city

--Subquery
--1>Display the emp1 details who has salary in department1 table
select * from department1 where salary=(select max(salary)from department1) 

--2>Display emp details who work in hr department
select * from emp1 where did=(select did from department1 where dname='admin')

--3>Disply emp details who has less salary than raj
select * from department1 where salary < (select salary from emp1 where ename='pooja' )--not execute

--4>Display the emp details who has less salary than avg salary of all emps
select * from department1 where salary <
(select avg(salary) from department1)

--5>Disply the emp from testing department who has less salary than the avg salary of admin department
select * from department1 where salary<
(
select avg(salary) from department1 where did=(select did from department1 where dname='admin')
)
and did=(select did from department1 where dname='sales')

--6>disply the emp details who has 2nd highest salary
select * from department1 where salary=
(
select max(salary) from department1 where salary<>
(
select max(salary) from department1
)
)
--7>update the salary by 2000rs for emp who work in hr dept
update department1 set salary=salary+2000 where did in
(
select did from department1 where dname='HR'
)


select* from emp1
select* from department1