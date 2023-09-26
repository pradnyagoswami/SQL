create table EMployeeTrack
(
id int identity(1,1) primary key,
description varchar(260)
)
----------------insert---------------------------------------------------------
create trigger tr_Employee
on employe1 after insert
as begin
declare @id int
declare @name varchar(20)
declare @email varchar(25)
select @id=id,@name=name,@email=email from inserted
insert into EMployeeTrack values('new record with details'+cast(@id as varchar) +'name'+@name+
'email'+@email+'date'+cast( GETDATE() as varchar(20))+' added')
end

insert into employe1 values(209,'riyanshi','riyanshi@gmail.com',33,22600.99)
---------------------------------delete--------------------------------------
create trigger tr_Employee_deleted
on employe1 after delete
as begin
declare @id int
declare @name varchar(20)
declare @email varchar(25)
select @id=id,@name=name,@email=email from deleted
insert into EMployeeTrack values('record with details'+cast(@id as varchar) +'name'+@name+
'email'+@email+'date'+cast( GETDATE() as varchar(20))+' removed')
end

delete from employe1 where id=207

select * from employe1
select * from EMployeeTrack
 