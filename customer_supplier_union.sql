create table customer
(
CUt_name varchar(30),
city varchar(20),
state varchar(35)
)
select * from customer
insert into customer values('pragya','udaipur','Rajastan')
insert into customer values('Abhishek','jablpur','MP')
insert into customer values('nisha','chandigarh','punjab')
insert into customer values('vrindha','noida','delhi')
insert into customer values('supriya','mumbai','MH')
create table supplier
(
SUP_name varchar(30),
city varchar(20),
state varchar(35)
)
select * from supplier
insert into supplier values('Adira','bangluru','karnataka')
insert into supplier values('Adira','Lucknow','UP')
insert into supplier values('Adira','dispur','Assam')
insert into supplier values('Adira','gandhinagar','Gujrat')
insert into supplier values('Adira','patna','bihar')

select cut_name,city,state from customer
union
select sup_name,city,state from supplier
----------------------------------------------------------------------------
select cut_name,city,state from customer
union all
select sup_name,city,state from supplier




