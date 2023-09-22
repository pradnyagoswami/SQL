select * from employe1

--Stored Procedure(SP) in SQL

--create sp--
create proc sp_employe1_select
as begin
select * from employe1
return
end
--call the SP
exec sp_employe1_select 

--with Parameter
create proc sp_employe1_age(@age int) 
as begin
select * from employe1 where age=@age
return 
end

exec sp_employe1_age
@age=29

--DML
create proc sp_Insert_employe1
(
@id int,
@name varchar(15),
@email varchar(20),
@age int,
@salary decimal
)
as begin
insert into employe1 values(@id,@name,@email,@age,@salary)
return
end

--TO call
exec sp_Insert_employe1 
@id=208,
@name='Archana',
@email='Arcahana@gmail.com',
@age=36,
@salary=635200.60

--For Update
create proc Sp_UPdate_employe1
@id int,
@name varchar(30),
@email varchar(25),
@age int,
@salary decimal
as begin
update employe1 set name=@name,email=@email,age=@age,salary=@salary where id=@id
return
end


exec Sp_UPdate_employe1
@id=202,
@name='raviraj',
@email='raviraj@gmail.com',
@age=32,
@salary=335600.95


--sp Delete
create proc sp_delete_employe1
(@id int)
as begin
delete from employe1 where id=@id
return
end

exec sp_delete_employe1
@id=203

