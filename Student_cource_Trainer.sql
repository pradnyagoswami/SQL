drop table Trainer
create table Trainer
(
Trainerid int primary key,
TrainerName varchar(25),
JoinDate Date,
email varchar(30),
Experience int
)
select * from Trainer
insert into Trainer values(501,'Pooja','2018/09/25','pojja@gmail.com',6)
insert into Trainer values(502,'Raj','2015/11/03','Raj@gmail.com',9)
insert into Trainer values(503,'Seema','2019/05/15','Seema@gmail.com',5)
insert into Trainer values(504,'Sachin','2016/03/12','Sachin@gmail.com',8)
insert into Trainer values(505,'Ram','2013/10/20','Ram@gmail.com',13)

drop table cource
create table Cource
(
courceid int primary key,
courceName varchar(30),
Duration varchar(30),
totalfees decimal,
Trainerid int,
constraint fk_Trainerid foreign key(Trainerid) references Trainer(Trainerid)
)
select * from Cource
insert into Cource values(601,'java','6-months',15500,502)
insert into Cource values(602,'C','2-months',2500,505)
insert into Cource values(603,'C++','3-months',3600,501)
insert into Cource values(604,'python','5-months',25500,503)
insert into Cource values(605,'C#','1-months',93500,504)
drop table students
create table Students
(
rollno int,
sname varchar(30),
degree varchar(30),
birthdate date,
batchid int,
feesPaid int,
Remark varchar(20),
isPalced varchar(15),
courceid int,
constraint fk_courceids foreign key(courceid) references Cource(courceid)

)
select * from Students
insert into students values(1,'sita','B-Tech','2001/02/25',100,1000,'Eligible','placed',602)
insert into students values(2,'gita','BE','2001/06/16',200,1500,'Eligible','placed',605)
insert into students values(3,'siya','BCA','2000/07/03',300,1800,'NOT-Eligible','NOT-placed',601)
insert into students values(4,'piya','MCA','1999/04/13',400,1900,'NOT-Eligible','NOT-placed',603)
insert into students values(5,'diya','B-Tech','1996/10/19',500,1100,'Eligible','placed',604)

--1. Show list of students. List contains roll no , student name , course name , trainer name in 
--order of course name and student name.
select s.Sname,c.CourceName from Students s
inner join Cource c
on s.courceid = c.courceid
inner join Trainer t
on t.TrainerId = c.TrainerId
order by s.Sname,c.courceName

--2. Show list of students who have pending fees more than 1000rs . List should have student 
----name , course name , balance fees . Show this list in descending order of balance fees. 

select s.Sname,c.Courcename,c.TotalFees,s.FeesPaid,(c.TotalFees-s.FeesPaid) as 'Pending fees' from Students s
inner join Cource c
on s.Courceid = c.Courceid
where(c.TotalFees - s.FeesPaid)>1000
order by s.FeesPaid

--3. Append letter ‘_spl’ to all batch ids of trainer ‘Deepa’.

--4. Update table student. Update ‘remark’ field. Remark should be ‘Eligible for exam’ if fees paid by student is more than 60%.
update Students set Remark = 'Eligible for Exam' where FeesPaid > any 
(select TotalFees * 0.60 as '60% of fees' from Cource)

--5. Create a index to make retrieval faster based on course name.
--6. List name of course for which more than 20 students are enrolled.
select c.Courcename from Cource c
join Students s
on c.Courceid = s.Courceid
having count(s.Courceid)>=2

--7. List name of course for which maximum revenue was generated. ( max fee collection)
select c.Courcename , sum (s.FeesPaid) as 'Total' from Cource c
inner join Students s on s.Courceid = c.Courceid
group by c.Courcename
order by Total desc
--8. Select name of student who are in same batch as ‘Atul’.
--9. Delete all students who are in course which is less than 2 months duration.
--10. Delete all students for whom is placed is ‘yes’ and who have paid all the fees of their course