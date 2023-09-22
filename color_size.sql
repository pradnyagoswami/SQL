create table color
(
cid int primary key,
cname varchar(25)
)
select * from color
insert into color values(11,'black')
insert into color values(12,'pink')
insert into color values(13,'blue')
insert into color values(14,'green')

create table size
(
sid int,
sname varchar(15)

)
select * from size
insert into size values(21,'s')
insert into size values(22,'M')
insert into size values(23,'L')
insert into size values(24,'xl')
insert into size values(25,'xxl')

select * from color cross join size