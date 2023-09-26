create table dept
(
did int ,
dname varchar(25),
locatin varchar(20)

constraint pk_did primary key (did)
)
insert into dept values(41,'hr','pune')
insert into dept values(42,'admin','mumbai')
insert into dept values(43,'sales','nagpur')
insert into dept values(44,'management','nashik')
insert into dept values(45,'hr','pune')
insert into dept values(46,'sales','banglore')

alter table dept alter column dname varchar(15)
create table emp
(
eid int,
ename varchar(25),
salary decimal,
did int ,
constraint fk_dept_eid foreign key(did) references dept(did)

)

insert into emp values(51,'amit',45000.20,41)
insert into emp values(52,'neha',5000.20,42)
insert into emp (eid,ename,salary) values(53,'amar',63000.99)
insert into emp values(55,'dipti',36000.66,43)
insert into emp values(54,'pooja',34000.62,42)
insert into emp values(56,'raj',55000.6,41)

select * from dept
select * from emp
-----------------------------------------------------------------------------------------------------------------------------------------------

--inner join
--first way
select * from emp inner join dept on emp.did=dept.did
--second way
select * from emp e inner join dept d on e.did=d.did
--third way
select * from emp e,dept d where e.did=d.did


--Left join
select * from emp e left join dept d on e.did=d.did
--right join
select * from emp e right join dept d on e.did=d.did

--1>find the deptname for the employee 'pooja'
select dname from dept where did=(select did from emp where ename='pooja')

select d.dname,e.ename,e.salary from emp e join dept d on e.did=d.did where e.ename='dipti'
-----------------------------------------------------------------------------------------------------------------------------------------------


--2>find the employee who is working in hr department
select e.ename,d.dname from emp e,dept d  where e.did=d.did and d.dname='hr'
-----------------------------------------------------------------------------------------------------------------------------------------------


--3>find the ename whose location is pune
select d.dname,e.ename,d.locatin from emp e join dept d on e.did=d.did where d.locatin='pune'
-----------------------------------------------------------------------------------------------------------------------------------------------


--4>find the ename whose salary is less than 25000
select ename,salary from emp where salary >25000
-----------------------------------------------------------------------------------------------------------------------------------------------

--5>find employee with max salary
select top 3 * from emp order by salary desc
-----------------------------------------------------------------------------------------------------------------------------------------------

--6>find salary for emp who is working in admin department
select ename,salary from emp e join dept d on e.did=d.did where dname='admin'
-----------------------------------------------------------------------------------------------------------------------------------------------

--7>find the no of emp from each dept
select dname, count(eid) as totalcount from emp e join dept d on e.did = d.did group by dname
-----------------------------------------------------------------------------------------------------------------------------------------------

--8>find salary of emp whose eid =52
select ename from emp where eid=52
-----------------------------------------------------------------------------------------------------------------------------------------------

--9>find ename from who is working in pune and dept hr
select ename from emp e join dept d on e.did=d.did where locatin='pune' and dname ='hr'
-----------------------------------------------------------------------------------------------------------------------------------------------

--10>find ename ,ssalary who is working in dept hr 
select ename,salary from emp e,dept d where e.did=d.did and dname<>'hr'
-----------------------------------------------------------------------------------------------------------------------------------------------

--11>find the emp who has not assign dept
select e.ename from emp e left join dept d on e.did=d.did where d.dname is null
-----------------------------------------------------------------------------------------------------------------------------------------------

--To see all databases
select name from sys.databases

select name from sys.tables