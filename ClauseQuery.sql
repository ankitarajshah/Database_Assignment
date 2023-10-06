use table1
create table tblEmployee(
	id int primary key not null,
	name varchar(100) not null,
	gender varchar(50) not null,
	salary int,
	city varchar(50)
);

select * from tblEmployee;

select city,gender,sum(salary) as totsal
from tblEmployee
group by city,gender
order by city;

select count(id) from tblEmployee;

select gender,city, sum(salary) as totsal,COUNT(id) as totemp
from tblEmployee
where gender='male'
group by gender,city;

select gender,city, sum(salary) as totsal,COUNT(id) as totemp
from tblEmployee
group by gender,city
having gender='male'


