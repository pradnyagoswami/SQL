create table employee
(
eid int,
ename varchar(25) not null,
salary decimal,
dept_name varchar(25),
gender varchar(10),
location varchar(30),
age int 
constraint pk_eid primary key (eid)

)
select * from employee
insert into employee(eid,ename,dept_name,gender,location,age)values(10,'pradnya','manager','female','pune',22),(20,'neha','hr','female','dubai',23)
insert into employee values(30,'mrunali',45000.30,'hr','female','nagpur',24)
insert into employee values(40,'anuj',77000.30,'manager','male','mumbai',24)
insert into employee values(50,'vaibhav',89000.30,'ceo','male','nashi',25)
insert into employee values(60,'rohan',98000.30,'ceo','male','pune',25)
insert into employee values(70,'aditya',65000.30,'jr_engineer','male','Aurangabad',30)
insert into employee values(80,'shubham',15000.30,'employee','male','banglore',38)
insert into employee values(90,'nitesh',27000.30,'employee','male','surat',28)
insert into employee values(100,'aman',75000.30,'sr_engineer','male','delhi',45)

--1>write query to find out the all employee whose salary is more than 25000 and less than50000
select * from employee  where salary between 25000 and 50000

--2>write the query to find out whose name start with N
select * from employee where ename like 'n%'

--3>find out the number of employee from each department
select dept_name ,count (*) from employee group by dept_name

--4>find out the maximum salary from employee
select * from employee order by salary desc
offset 0 row
fetch next 1 rows only

--5>find out the genderwise employee count
select gender ,count(*) from employee group by gender

--6>write query to find out the employee whose is working in mumbai location and salary is more than 40000
select * from employee where  location in('mumbai') and salary >40000

--7write query to calculate the pf amount for each employee
select eid,ename,salary, salary+(salary*0.12) as pf from employee

--8>write query to update the designation of employee as manager whose salary more than 50000
update employee set dept_name='manager' where salary >50000

--9>write query to remove employee whose age is more than 35 and salary more than 40000
delete from employee where age>35 and salary>40000

--10>write query find out the record where employee name contains e
select * from employee where ename like '%e%'

select * from employee



