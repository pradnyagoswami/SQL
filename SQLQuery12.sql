select * from employe1

----------------------views in SQL---------------------------

-----adding new view

create view view_show_salary as
select * from employe1 where age=22

----fetch the view / display the view
select * from view_show_salary

------ modify the view