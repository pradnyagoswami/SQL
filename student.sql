Create Table Student
(
rollno int,
name varchar(20),

percentage numeric(6,2),
city varchar(10),
dob date

)
--Modify The date type or size of data type
alter table Student alter column name varchar(25)

--Add column to the Existing table
alter table Student add country varchar(23)

--Remove column from the Existing table
alter table student drop column Country

--Rename column name
exec sp_rename 'Student.name','studentname'
select * from employeee
exec sp_help employeee

