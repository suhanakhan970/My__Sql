create table student(
Roll_no int,
Name text,
Age int,
City text);
insert into student(
Roll_no,Name,Age,City)
values (1,"Anu",18,"Delhi"),
(2,"priti",19,"Ambala"),
(3,"vanshika",20,"Shimla");
select * from student;
update student set City = 'Manali' where ROll_no = 2;
delete from student where Roll_no = 2;
alter table student rename column Roll_no to ID;
alter table student drop column City;

