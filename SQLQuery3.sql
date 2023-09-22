create table Employee
(
id int,
name varchar(21),
salary decimal,
c_name varchar(20),
dob date,
Bloddgrp char(5)

)
--Modify The date type or size of data type
alter table Employee alter column c_name varchar(15)

----Add column to the Existing table
alter table Employee add Department varchar(25)

--Remove column from the Existing table
alter table Employee drop column Bloddgrp

----Rename column name
exec sp_rename 'Employee.id','Empid'
