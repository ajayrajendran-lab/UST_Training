create database UST;
use UST;
create table Employees(emp_id int primary key auto_increment,
first_name varchar(100) not null,
middle_name varchar(100) null,
last_name varchar(100)not null,
designation char(100) not null,
age int not null,
salary decimal(10,2) default 10000.0 not null,
DOB date not null,
Joining_Date datetime default current_timestamp not null,
is_active boolean default true not null);

insert into Employees(first_name,last_name,designation,age,salary,DOB)
values("Ajay","Rajendran","Developer",25,25000,"2000-07-26");
insert into Employees(first_name,middle_name,last_name,designation,age,salary,DOB)
values("Leana","Merin","Issac","Developer",22,25000,"2002-07-26");
insert into Employees(first_name,last_name,designation,age,salary,DOB)
values("Vinu","Mohan","Tester",26,25000,"1999-07-25");
insert into Employees(first_name,last_name,designation,age,salary,DOB)
values("Mymoon","Sulaiha","Data Scientist",22,35000,"2002-09-15");
insert into Employees(first_name,last_name,designation,age,salary,DOB,is_active,Joining_Date)
values("Safa","MT","Production Support Associate",22,21000,"2002-10-15",false,"2020-01-01 12:00:00");

select * from Employees;

select first_name,salary from Employees where designation="Developer";

select first_name,salary from Employees where designation="Developer" or designation="Data Scientist";

select first_name,salary from Employees where first_name like "a%";

select first_name from Employees where middle_name is null;

select first_name from Employees where middle_name is not null;

select max(salary) from employees;

select min(salary) from employees;

select avg(salary) from employees;

select sum(salary) from Employees;

select count(*) from employees;

select distinct(designation) from employees;

select designation,count(designation) as Number_of_Employees from employees group by designation order by designation;

select * from Employees where first_name like "A%";

select first_name,age from Employees where first_name like "%A";

select first_name,age from Employees where first_name like "%A";

select first_name,age from Employees where first_name like "_y_oon";

select * from Employees limit 3;

select emp_id,first_name from Employees order by first_name;

select * from Employees where designation in ("Developer","Tester");

select * from Employees where designation not in ("Developer");


select * from Employees where age between 22 and 25;






select salary as EMPLOYEE_SALARY from Employees;

select EMP.first_name from Employees as EMP;

create table Departments(id int primary key auto_increment,dept_name varchar(100) not null,emp_id int not null);

insert into Departments(dept_name,emp_id) values("Software Testing",5);

select designation,count(designation) from Employees group by designation having count(designation)>1;

select first_name,salary,designation from Employees where exists (select * from Departments where Employees.emp_id=Departments.emp_id);

select * from Employees inner join Departments on Employees.emp_id=Departments.emp_id;

select * from Employees left join Departments on Employees.emp_id=Departments.emp_id;

select * from Employees right join Departments on Employees.emp_id=Departments.emp_id;
