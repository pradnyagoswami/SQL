create table student1
(
sid int,
sname varchar(20),
courcename varchar(25),
fees decimal

)
select * from student1
insert into student1 values(11,'pradnya','c#',7800.30)
insert into student1 values(12,'neha','java',6300.30)
insert into student1 values(13,'mrunali','c++',9560.30)
insert into student1 values(14,'pooja','c',3560.30)
insert into student1 values(15,'rutuja','dotnet',6390.30)
insert into student1 values(16,'raj','c#',7800.30)
insert into student1 values(17,'virat','c',3560.30)
insert into student1 values(18,'vijay','c',3560.30)





--1>disply count of student in each cource
select sid,count(sid) from student1
group by courcename



--2>display count of student for c# cource
select courcename,count(sid) from student1 where courcename='c#'
group by courcename



--3>display cource and count student but count of student>10
select courcename, count(sid ) from student1
group by courcename
having count(sid)>10

--4>display sum of fees of each cource
select  courcename ,sum (fees) from student1 
group by courcename 

--5>display count of student in each cource, student count less than 15 and display in desc order
select courcename ,count(sid) from student1 
group by courcename 
having count(sid)<15  order by count(sid) desc

