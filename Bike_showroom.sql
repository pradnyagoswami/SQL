create database Bike_showrrom
create table customer1
(
customerid int primary key,
first_name varchar(25),
last_name varchar(25),
mobile_no varchar(20),
gender varchar(10),
email varchar(25)

)
select * from customer1
insert into customer1 values(101,'pradnya','goswami','7448059484','female','pradnya12@gmail.com')
insert into customer1 values(102,'mrunali','shrawnkar','9063059484','female','mrunali2@gmail.com')
insert into customer1 values(103,'neha','potghan','9645841202','female','neha@gmail.com')
insert into customer1 values(104,'sanyukta','pathak','931256843','female','sanyukta02@gmail.com')
insert into customer1 values(105,'sukanya','rakshe','9373265814','female','sukanya@gmail.com')




create table model
(
modelid int primary key,
model_name varchar(25),
cost decimal

)
select * from model
insert into model values(201,'Royal Enfield classic 350',190000.30)
insert into model values(202,'Apache RTR 310',242000.63)
insert into model values(203,'KTM 390 duke',310000.50)
insert into model values(204,'Avenger',116000.60)
insert into model values(205,'Yamaha R15 v4',181000.55)
create table payment_mode
(
paymentid int primary key,
paymenttype varchar(20)

)
select * from payment_mode
delete from payment_mode where paymentid=301
insert into payment_mode values(11,'online')
insert into payment_mode values (22,'cash')
insert into payment_mode values(33,'cheque')

create table feedback_rating
(
ratingid int primary key,
rating varchar(25)

)
select * from feedback_rating
insert into feedback_rating values(5,'excellent')
insert into feedback_rating values(4,'good')
insert into feedback_rating values(3,'average')
insert into feedback_rating values(2,'bad')
insert into feedback_rating values(1,'comppliant')


create table purchase
(
purchaseid int,
purchaseDate date,
booking_amt decimal,
customerid int,
modelid int,
paymentid int ,
ratingid int,

constraint fk_customerid foreign key(customerid) references customer1(customerid),
constraint fk_modelid foreign key (modelid) references model(modelid),
constraint fk_paymentid foreign key (paymentid) references payment_mode(paymentid),
constraint fk_ratingid foreign key (ratingid) references feedback_rating(ratingid)
)
select * from purchase

insert into purchase values(501,'2023/02/15',50000.26,101,201,11,5)
insert into purchase values(502,'2022/06/06',35000.22,102,202,22,3)
insert into purchase values(503,'2021/07/23',49000.34,103,203,33,4)
insert into purchase values(504,'2020/11/20',36000.99,104,204,11,1)
insert into purchase values(505,'2022/08/03',55000.63,105,205,22,2)

--1.WAQ to get the balance amount for customers who made cash payment 
select first_name, last_name ,(m.cost-p.booking_amt) as balance_amt from model m join purchase p on m.modelid=p.modelid join customer1 c 
on c.customerid=p.customerid join payment_mode pm on pm.paymentid=pm.paymentid where pm.paymenttype='cash'
--OR
select first_name, last_name ,(m.cost-p.booking_amt) as balance_amt from model m,purchase p,customer1 c,payment_mode pm
where m.modelid=p.modelid and p.customerid=c.customerid and pm.paymentid=p.paymentid and pm.paymenttype='cash'

--2.	Delete all the records of customer who have paid complete amount as that of bike cost.
--3.	Create an index to have faster retrival of data on the basis of booking_amount.
--4.WAQ to change payment mode to cash for ‘Yamaha R15 v4’ purchased by customer with id 11.



--5.	Map where key is modelName and value is arraylist of ids of customers who purchased that model.
--6.	Create a stored procedure to get the full name of customer whose cust_id is provided as input.
--7.	WAQ to get the number of complaints registered for model activa 5G.
--8.	WAQ to get all customer names who haven’t given ratings yet. 
--9.	Delete all complaint records from purchase. 
--10.	Update ratings given by Mr Vaibhav from good to excellent.
--11.	Reduce cost of all bikes for which rating is bad by 10%. 
--12.	Write a to display highest selling model along with name and count 

