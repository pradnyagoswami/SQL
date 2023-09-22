----Addition of 2 numbers using SQL functions----
---scalar functions---
create function addition(@ int,@ int)
returns int
as begin
declare @c int
set @c=@a+@b
return @c
end


--database object
select dbo.addition(10,20) as 'sum'

----scalar function
create function GetEmpName(@id int)
returns varchar(20)
as begin
return( select name from employe1 where id=@id)
end
select dbo.GetEmpName(202) as 'Emp name'

-- multi value function begin & end keyword not need to write
create function GetEmpByDept(@did int)
returns table
as
return (select * from employe1 where id=@did)
select * from dbo.GetEmpByDept(103)

select * from employe1