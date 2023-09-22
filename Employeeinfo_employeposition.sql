create database employeinformation
drop table employeeinfo
create table employeeinfo
(
empid int primary key,
empFname varchar(25),
empLname varchar(25),
department varchar(15),
project varchar(25),
addres varchar(30),
DOB date,
gender varchar(30)

)

insert into employeeinfo values(1,'Rohit','Gupta','Admin','P1','Delhi','1979/12/02','Male')
insert into employeeinfo values(2,'Rahul','Mahajan','Admin','P2','Mumbai','1986/10/10','Male')
insert into employeeinfo values(3,'Rahul','Banrjee','HR','P3','Pune','1983/06/05','Male')
insert into employeeinfo values(4,'Ankita','Kapoor','HR','P4','Chennai','1983/11/28','Female')
insert into employeeinfo values(5,'Swati','Garg','HR','P5','Delhi','1991/04/06','Female')

drop table Employeposition
create table Employeposition
(
empid int,
empposition varchar(20),
dataOfjoining date,
salary int,
constraint fk_empid foreign key(empid) references employeeinfo(empid)


)
insert into Employeposition values(1,'Executive','2020/4/1',75000)
insert into Employeposition values(2,'Manager','2020/4/3',50000)
insert into Employeposition values(3,'Manager','2020/4/2',150000)
insert into EmployePosition values(2,'Officer','2020/4/2',90000)
insert into Employeposition values(1,'Manager','2020/4/3',300000)

select * from employeeinfo
select * from Employeposition

--1. Create a query to generate the first records from the EmployeeInfo table.
select top 1 * from employeeinfo

--2. Create a query to generate the last records from the EmployeeInfo table.
select top 1 * from employeeinfo order by empid desc
--3. Create a query to fetch the third-highest salary from the EmpPosition table.
select * from Employeposition order by salary desc 
offset 2 rows
fetch next 1 rows only
--4. Write a query to find duplicate records from a table.
--5. Create an SQL query to fetch EmpPostion and the total salary paid for each employee position.
--6. find the employee who has max salary
select  max(salary) as 'Max salary' from Employeposition
--7 find the employee who has max salary from HR department
select e.empFname,e.empLname, max(salary) as 'maxSalary' from  employeeinfo e inner join Employeposition em
on em.empid=e.empid 
where department='Admin'

--8 find the age of each employee
--9 display only female employee details
select * from employeeinfo where gender='female'
--10 display employee whos position is executive
select e.empFname,e.empLname from employeeinfo e inner join Employeposition e1  on e.empid=e1.empid where empposition ='executive'
--11 display count of employee in each city
select addres,count(empid) as 'count' from employeeinfo 
group by addres