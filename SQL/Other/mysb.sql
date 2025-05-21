-- set sql_safe_updates=0;
create database sample;
use sample;
show databases;
drop database sample;
create table student(id int primary key auto_increment,st_name char(100) , age int );
insert into student(st_name,age) values("sony",30);
select * from student;
select st_name from student;
select st_name from student where age<25;
update student set  st_name="mymoon" where age=20;
set sql_safe_updates=0;

create table course(id int primary key auto_increment,st_id int,course_name char(100));
insert into course(st_id,course_name) values(5,"Java"),(6,"Javascript");
select * from course;
select * from student inner join course on student.id=course.st_id;




select student.id as Student_ID ,course.id as Course_ID,course.course_name from student left join course on student.id=course.st_id;

select student.id as Student_ID ,course.id as Course_ID,course.course_name from student right join course on student.id=course.st_id;






select student.id as Student_ID ,course.id as Course_ID,course.course_name from student full join course on student.id=course.st_id;








select student.id as Student_ID ,course.id as Course_ID,course.course_name from student left join course on course.st_id=student.id
union 
select student.id as Student_ID ,course.id as Course_ID,course.course_name from student right join course on course.st_id=student.id;





delete from student where id=5;

create table ust(id int primary key auto_increment