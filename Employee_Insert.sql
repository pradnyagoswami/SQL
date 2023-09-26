
drop table employe12
create table employe12
(
id int primary key,
name varchar(20)not null,
email varchar(20)unique,
age int check(age>=18),
salary numeric(10,2)

)

insert into employe12 values(201,'rutuja','rutuja@gmail.com',23,26000.10)
insert into employe12 values(202,'rutu','rutu@gmail.com',22,25000.20)
insert into employe12 values(203,'radha','radha@gmail.com',21,27500.10)
insert into employe12 values(204,'kshitj','kshitij@gmail.com',22,25120.12)
insert into employe12 values(205,'pranil','pranil@gmail.com',23,28100.20)
insert into employe12 values(206,'sumeet','sumeet@gmail.com',23,29000.11)
insert into employe12 values(207,'siya','siya@gmail.com',26,35000.10)
insert into employe12 values(208,'radh','radhaa@gmail.com',24,35500.60)
insert into employe12 values(209,'nandini','nandini@gmail.com',22,48600.10)
insert into employe12 values(210,'vijay','vijay@gmail.com',27,35700.10)
insert into employe12 (id,name,email,salary,city ) values(211,'raj','raj@123',36000.52,'nashik')

alter table Employe12 add city varchar

--insert for
insert into employe12(id,name,email,age,salary) values(211,'ram','ram@gmail.com',30,63200.56)
-----------------------------------------------------------------------------------------------------------------------------------------------


--update -> To modify the data
update employe12 set salary=35000.22 where id=204
update employe12 set email ='rutja11@gmail.com' where id=201

update employe12 set city='pune' where id in(201,203,206,209,204)
update employe12 set city='mumbai' where id in(202,205,210)
update employe12 set city='nagpur' where id =207
-----------------------------------------------------------------------------------------------------------------------------------------------


--delete
delete from employe12 where id=208
-----------------------------------------------------------------------------------------------------------------------------------------------


--DQL
--alias to the column and to the table
select name as'Employee name',email as 'Email id' from employe12
-----------------------------------------------------------------------------------------------------------------------------------------------

--select 
select emp.name, emp.email, emp.salary from
employe12 emp
--or

select emp.name as 'Emp name',emp.email,emp.salary from employe12 emp

select emp.* from employe12 emp
-----------------------------------------------------------------------------------------------------------------------------------------------


--select with where clause
select * from employe12 where id=202
select * from employe12 where age>22
select * from employe12 where age<23
select * from employe12 where age <> 30
select * from employe12 where age <> 23 and age <> 26
select * from employe12 where city='nagpur'
-----------------------------------------------------------------------------------------------------------------------------------------------


--Distinct -> it is used to get unique record
select distinct city from employe12 
select distinct age from employe12
-----------------------------------------------------------------------------------------------------------------------------------------------


--and->all the conditions should be true
select * from employe12 where salary >25000 and city ='mumbai' and age>23

-----------------------------------------------------------------------------------------------------------------------------------------------

--OR->either one is true
select * from employe12 where city='pune' or id=500
-----------------------------------------------------------------------------------------------------------------------------------------------

--Between and ->range - when you want to fetch records between range

select * from employe12 where salary between 25000 and 29000
select * from employe12 where age between 25 and 30
-----------------------------------------------------------------------------------------------------------------------------------------------

--in clause-> match the multiple selection

select * from employe12 where id in(203,206,209)
select * from employe12 where age in (22,30,40)
-----------------------------------------------------------------------------------------------------------------------------------------------

--not in clause
select * from employe12 where city not in ('pune','delhi')

-----------------------------------------------------------------------------------------------------------------------------------------------

---- is null
select * from employe12 where age is null
-----------------------------------------------------------------------------------------------------------------------------------------------

-- is not null 
select * from employe12 where age is not null
-----------------------------------------------------------------------------------------------------------------------------------------------

--like caluse in sql
--start with s end with any letters
select * from employe12 where name like 's%'
-----------------------------------------------------------------------------------------------------------------------------------------------

-- start with any letters end with i
select * from employe12 where name like '%i'
-----------------------------------------------------------------------------------------------------------------------------------------------
--start and end with any letter, name contains a
select * from employe12 where name like '%a%'
-----------------------------------------------------------------------------------------------------------------------------------------------

-- match with multiple letters i.e.in or 
-- name end with i or n or l 
select * from employe12 where name like '[sa]%'

select * from employe12 where name like '%[ujy]'
-----------------------------------------------------------------------------------------------------------------------------------------------

--range
select * from employe12 where name like '[a-m%]%'
select * from employe12 where name like '%[j-q]'
-----------------------------------------------------------------------------------------------------------------------------------------------

--underscore
select * from employe12 where name like 'r____'
select * from employe12 where name like '_____l'
select * from employe12 where name like '__y_'
-----------------------------------------------------------------------------------------------------------------------------------------------


--------Not like
select * from employe12 where city not like null

-----------------------------------------------------------------------------------------------------------------------------------------------

select * from employe12 where name not like '%r'
select * from employe12 where name not like 'r%'
-----------------------------------------------------------------------------------------------------------------------------------------------


---order by->to sort the data based on column specified
select * from employe12 order by city 
select * from employe12 order by name
select * from employe12 order by salary
select * from employe12 order by name,email
-----------------------------------------------------------------------------------------------------------------------------------------------

--descending
select * from employe12 order by salary desc
select * from employe12 order by age desc
-----------------------------------------------------------------------------------------------------------------------------------------------

--top
--first 5 records
select top 5 * from employe12 order by salary
--last 5 record
select top 5 * from employe12 order by salary desc
-----------------------------------------------------------------------------------------------------------------------------------------------
--percent
select top 10 percent * from employe12
select top 50 percent * from employe12
-----------------------------------------------------------------------------------------------------------------------------------------------

--ties
select top 3 with ties * from employe12 order by salary
-----------------------------------------------------------------------------------------------------------------------------------------------

--offset and fetch
--Q>disply emp who have 3rd highest salary in the table
select * from employe12 order by salary desc
offset 2 rows
fetch next 1 rows only
-----------------------------------------------------------------------------------------------------------------------------------------------

--Q>--display emp who have 3rd, 4th highest salary in he table 
select * from employe12 order by salary desc
offset 2 rows
fetch next 2 rows only
-----------------------------------------------------------------------------------------------------------------------------------------------

--Q>--display emp who have 4rd, 5th lowest salary in he table 
select * from employe12 order by salary
offset 3 rows 
fetch next 2 rows only
-----------------------------------------------------------------------------------------------------------------------------------------------
--Q>--display 3rd lowest salary emp
select * from employe12 order by salary
offset 2 rows
fetch next 1 rows only
-----------------------------------------------------------------------------------------------------------------------------------------------

select * from employe12