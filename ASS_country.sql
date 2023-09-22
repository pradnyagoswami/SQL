drop table customer
create table customer
(
customer_id int ,
customer_name varchar(25),
city varchar(20),
country varchar(20),
postalcode int,
constraint pk_customer_id primary key (customer_id)

)

insert into customer values(10,'klause','oslo','norway',1234)
insert into customer values(20,'demon','paris','uk',1124)
insert into customer values(30,'stephan','anglet','france',5123)
insert into customer values(40,'ellijha','rome','itly',5236)
insert into customer values(50,'caroine','miami','usa',6066)
insert into customer values(60,'elena','london','uk',7896)
insert into customer values(70,'rock','germany','berline',0230)
insert into customer values(80,'enzo','sydney','Austrilia',2364)
insert into customer values(90,'bonnie','seoul','korea',7822)
insert into customer values(100,'katharin','tokohashi','japan',1003)
insert into customer values(110,'jermy','india','pune',1530)
insert into customer values (111,'kol','bhusan','korea',null)
insert into customer(customer_id,customer_name,city,country) values(22,'tyler','india','mumbai')

select * from customer

--1.	Write a statement that will select the City column from the Customers table
select city from customer 

--2.	Select all the different values from the Country column in the Customers table.
select country from customer

--3.	Select all records where the City column has the value "London
select * from customer where city='london'

--4.	Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customer where  country not in('berline')

--5.	Select all records where the CustomerID column has the value 20.
select * from customer where customer_id =20

--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 5236.
select * from customer where country='berline' or postalcode=5236

--7.	Select all records where the City column has the value 'Berlin' or 'London'.
select * from customer where country='berline' or city='london'

--8.	Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customer order by city

--9.Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customer order by city desc

--10.Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from customer order by country,city 

--11.	Select all records from the Customers where the PostalCode column is empty.
select * from customer where postalcode is null

--12.	Select all records from the Customers where the PostalCode column is NOT empty.
select * from customer where postalcode is not null

--14.	Delete all the records from the Customers table where the Country value is 'Norway'.
delete from customer where country='norway'

--20.	Select all records where the value of the City column starts with the letter "a".
select * from customer where city like 'a%'

--21.	Select all records where the value of the City column ends with the letter "a".
select * from customer where city like '%a'

--22.	Select all records where the value of the City column contains the letter "a".
select * from customer where city like '%a%'

--23.	Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from customer where city like 'a%%b'

--24.	Select all records where the value of the City column does NOT start with the letter "a".
select * from customer where city not like 'a%'

--25.	Select all records where the second letter of the City is an "a".
select * from customer where city  like '_a%'

--26.	Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from customer where city like '[acs]%'

--27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from customer where city like '[a-f]%'

--28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from customer where city not like '[acf]%'

--29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from customer where country ='uk' or country ='france'

--30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from customer where country not in('uk','france')

----34.	When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select ' postalcode as' pno

--35.	When displaying the Customers table, refer to the table as Consumers instead of Customers.

--36.	List the number of customers in each country.
select  count(customer_name) from customer

--


select * from customer

drop table product
create table product
(
product_id int,
product_name varchar(25) not null,
product_price decimal,
customer_id int,
constraint fk_cutomer_product foreign key (customer_id )references customer(customer_id)
)
insert into product(product_id,product_name,product_price)values(501,'tv',354000.60)
insert into product(product_id,product_name,product_price) values(502,'fridge',45900.55),(503,'laptop',65000.30),(504,'mouse',1500.69),(505,'charger',2000.65)
insert into product(product_id,product_name,product_price) values(506,'handphone',66000.45)
insert into product(product_id,product_name,product_price) values(507,'ac',78000.55),(508,'table',263000.60),(509,'chair',1900.19),(510,'sofa',250000.65)


----15.Use the MIN function to select the record with the smallest value of the Price column.
select min(product_price) as 'min price' from product

--16.	Use an SQL function to select the record with the highest value of the Price column.
select max(product_price) as 'max price' from product

--17.	Use the correct function to return the number of records that have the Price value set to 20
select * from product where product_price =2001

--18.	Use an SQL function to calculate the average price of all products.
select avg(product_price) as 'avg price' from product

--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(product_price) as 'sum price' from product

--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from product where product_price between 25000.00 and 95000.30

--32.	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from product where product_price not between 55000.60 and 60000.60

--33.	Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from product where product_name between 'geitost' and 'pavlova'




select * from product