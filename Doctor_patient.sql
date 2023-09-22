create database Doctor_patients
drop table Province_names
create table Province_names
(
province_id char(2) primary key,
province_name varchar(30)

)
select * from Province_names
insert into Province_names values('MH','maharashra')
insert into Province_names values('AP','AndraPradesh')
insert into Province_names values ('UP','UtterPradesh')
insert into Province_names values ('MP','MadhyaPradesh')
insert into Province_names values ('DL','Delhi')


drop table Doctor
create table Doctor
(
Doctor_id int primary key,
first_name varchar(25),
last_name varchar(25),
speciality varchar(40)
)
select * from Doctor
insert into Doctor values(101,'DR.Mohit','Pawar','Dermitologist')
insert into Doctor values(102,'DR.Sneha','Wagh','Cardiologist')
insert into Doctor values(103,'DR.Harsh','Singh','Surgery')
insert into Doctor values(104,'DR.Shree','Mohite','Plastic_surgery')
insert into Doctor values(105,'DR.Sai','Ahuja','PrimaryCare')

drop table Patients
create table Patients
(
patient_id int primary key,
first_name varchar(20),
last_name varchar(20),
gender varchar(10),
Birthdate date,
city varchar(15),
province_id char(2),
allergies varchar(40),
height decimal,
weight decimal
constraint fk_province_id foreign key(province_id) references Province_names(province_id)
)
select * from Patients
insert into Patients values(501,'ram','Raje','Male','2002/06/30','mumbai','MH','SkinAllergy',180.60,85)
insert into Patients values(502,'sham','Patil','Male','2006/12/14','Vijayawada','AP','Rhinits',175.10,76)
insert into Patients values(503,'pooja','Bhoite','Female','2004/11/06','Bhopal','MP','Morphine',145.10,65)
insert into Patients values(504,'sukhada','Kulkarni','female','2000/04/16','Prayagraj','UP','NULL',135.66,55)
insert into Patients values(505,'Nandini','Deshmukh','female','2021/02/15','Firozabad','DL','NULL',150.60,63)

drop table Admissions
create table Admissions
(
admission_date date,
discharge_date date,
diagnosis varchar(35),
Doctor_id int,
constraint fk_Doctor_id foreign key(Doctor_id) references Doctor(Doctor_id),
patient_id int,
constraint fk_patient_id foreign key(patient_id) references Patients(patient_id)

)
select * from Admissions
insert into Admissions values('2023/02/19','2023/03/13','HeartDiesease',102,503)
insert into Admissions values('2022/08/15','2022/11/18','HandFracture',103,501)
insert into Admissions values('2021/01/14','2021/03/21','Cough',105,502)
insert into Admissions values('2023/05/10','2023/07/11','ChestPain',104,503)
--1.Show the first name, last name and gender of patients who’s gender is ‘M’
select p.First_name,p.Last_name from Patients p where gender='male'

--2.Show the first name & last name of patients who does not have any allergies
select p.First_name,p.Last_name from Patients p where allergies='null'

--3.Show the patients details that start with letter ‘n’
select CONCAT(first_name, ' ',Last_name)  as 'FullName' from Patients 
select * from Patients where First_name like 'N%'

--4.Show the patients details that height range 100 to 200
select * from Patients where height between 100 and 150

--5.Update the patient table for the allergies column. Replace ‘NKA’ where allergies is null
update Patients set allergies = 'NKA' where allergies ='null'

--6.Show how many patients have birth year is 2020
select p.* from Patients p 
where year(Birthdate)=2002

--7.Show the patients details who have greatest height
select top 1 * from Patients order by height desc

--8.Show the total amount of male patients and the total amount of female patients in the patients table.
select p.* from Patients p 
select p.patient_id, count(Patient_id) as 'femalecount' from Patients p where gender='female' 
group by patient_id 

--9.Show first and last name, allergies from patients which have allergies to either 'SkinAllergy' or 'Morphine'. Show results ordered ascending 
--by allergies then by first_name then by last_name.
select p.first_name,p.Last_name from Patients p where allergies ='SkinAllergy' or allergies ='Morphine' 
order by first_name,last_name
--10.Show first_name, last_name, and the total number of admissions attended for each doctor.
--Every admission has been attended by a doctor.
--11.For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
select CONCAT(first_name, ' ',Last_name)  as 'FullName' from Patients


select * into pat copy from patients