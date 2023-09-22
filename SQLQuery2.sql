create table employeee
(
id int primary key,
name varchar(20) not null,
email varchar(25) unique,
age int check(age>=18),
salary numeric(12,2)

)

select * from employeee

insert into employeee values(101,'pradnya','pradnya@12gmail.com',22,35000.60)
insert into employeee values(102,'neha','neha@gmail.com',22,35000.80)
insert into employeee values(103,'mrunali','mrunali@gmail.com',23,30000.18)
insert into employeee values(104,'sneha','sneha12@gmail.com',23,35250.13)
insert into employeee values(105,'sukanya','suknya@gmail.com',22,36249.75)
insert into employeee values(106,'pooja','pooja@gmail.com',24,32249.85)
insert into employeee values(107,'shruti','suknya@gmail.com',22,36249.62)
insert into employeee values(108,'aditya','aditya12@gmail.com',25,33349.46)
insert into employeee values(109,'rohan','rohan33@gmail.com',24,39249.55)
insert into employeee values(110,'harsh','harsh03@gmail.com',24,45249.10)
insert into employeee values(111,'anuj','anuj@gmail.com',23,66249.45)
insert into employeee values(112,'vaibhav','vaibhav56@gmail.com',24,53249.20)
insert into employeee values(113,'jitendra','jitendra66@gmail.com',25,48249.63)
insert into employeee values(114,'shweta','shweta77@gmail.com',25,26919.45)
insert into employeee values(115,'harshwardhan','harshwardhan07@gmail.com',24,70349.96)

--

