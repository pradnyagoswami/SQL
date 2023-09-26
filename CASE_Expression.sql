select * from product
-------------case Expression-------------------------------
select name,company,price,
case
 when price>5000 then 'expensive'
 when price<5000 then 'not expensive'
 else 'average'
 end as 'Remark'
 from product
 ---------------------------------------------------------------------
 select * from employe1
 select name,email,salary,
 case
 when salary between 40000 and 90000 then 'high salary'
 when salary between 25000 and 40000 then 'Average'
else 'low salary'
 end as 'remark'
 from employe1

