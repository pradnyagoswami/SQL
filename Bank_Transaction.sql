create database Banks
create table Bank
(
bankid int primary key,
bname varchar(15),
adress varchar(20),
city varchar(20),
states varchar(30)

)
select * from Bank
insert into bank values(1001,'bank of india','shivajinagar','pune','maharashtra')
insert into bank values(1002,'kotak bank','kalyan','mumbai','maharashtra')
insert into bank values(1003,'Axis bank','sd road','nashik','maharashtra')
insert into bank values(1004,'hdfc','jk road','nagpur','maharashtra')
insert into bank values(1005,'icici','jm road','kolhapur','maharashtra')
drop table Customer_Masters
create table Customer_Masters
(
custid int  primary key,
cname varchar(20),
contact varchar(20),
age int,
Pan_no varchar(20),
)
select * from Customer_Masters
insert into Customer_Masters values(2001,'pradnya','+917448059484',22,'ABC14785')
insert into Customer_Masters values(2002,'sneha','+91859659484',23,'XYZ69874')
insert into Customer_Masters values(2003,'divya','+918896059484',24,'PQR63025')
insert into Customer_Masters values(2004,'raj','+919236059484',24,'GDHS25785')
insert into Customer_Masters values(2005,'harsh','+919963059484',25,'ERFG169785')

drop table Customers
create table Customers
(
custid int,
constraint fk_Customers_custid foreign key(custid) references Customer_masters(custid),
bankid int,
constraint fk_bankid foreign key(bankid) references Bank(bankid)
)
select * from Customers
insert into Customers values(2001,1001)
insert into Customers values(2002,1002)
insert into Customers values(2003,1003)
insert into Customers values(2004,1004)
insert into Customers values(2005,1005)
drop table Account_Type
create table Account_Type
(
acctype_id int primary key,
acctype varchar(25)
)
select * from Account_Type
insert into Account_Type values(3001,'saving')
insert into Account_Type values(3002,'cuurent')
insert into Account_Type values(3003,'fixed')
insert into Account_Type values(3004,'saving')
insert into Account_Type values(3005,'current')
drop table Accounts
create table Accounts
(
Acc_no int primary key,
custid int,
constraint fk_Accounts_custid foreign key(custid) references Customer_masters(custid),
acctype_id int,
constraint fk_AcctypeId foreign key (acctype_id) references Account_Type(acctype_id),
balance decimal
)
select * from Accounts
insert into Accounts values(1122,2001,3001,23000.20)
insert into Accounts values(1133,2002,3002,33500.30)
insert into Accounts values(1144,2003,3003,63100.50)
insert into Accounts values(1155,2004,3004,52900.90)
insert into Accounts values(1166,2005,3005,64200.70)

drop table Transactions 
create table Transactions
(
transaction_id int primary key,
Acc_no int,
constraint fk_Transaction_Acc_no foreign key (Acc_no) references Accounts(Acc_no),
amount decimal,
Transaction_type varchar(25),
dates date 
)
select * from Transactions
insert into Transactions values(1,1122,2500,'debit','2023/09/30')
insert into Transactions values(2,1133,6500,'credit','2023/08/3')
insert into Transactions values(3,1144,1900,'debit','2023/02/16')
insert into Transactions values(4,1155,2200,'debit','2022/11/06')
insert into Transactions values(5,1122,7500,'credit','2021/12/13')


--1.Find the no of accounts in saving account
select count(acctype_id) from Account_Type where acctype='saving'

--2.Display all bank name, cname , city from all  bank in ascending order of bankname  and desceding order of city name----not execute
select b.bname,cm.cname,b.city from bank b inner join Customers c on b.bankid=c.bankid 
inner join Customer_Masters cm on cm.custid=c.custid 
order by city desc

--3.Find the customer who has perform maximum number of transaction
select max(transaction_id) from Transactions



--4.find the customers whose  balance is greater than avg balance of saving accounts.
select c.* from Customers c inner join Accounts a on c.custid=a.custid
 where balance>(select avg(balance) from Accounts where acctype_id =
(select acctype_id from Account_Type where acctype='saving'))



--5 find the amount , name of customer whose acc_no is 1133
select 





--6.	display the customer name ,contact of customers whose account type is ‘saving’ order by descending order of cname .


select * from Account_Type
select * from Customer_Masters





--7.	display bank name , total balance of all customers in that bank of all banks in descending order of balance.
select b.bname from Bank b where 
(select sum(balance) from Accounts)


