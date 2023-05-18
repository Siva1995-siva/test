alter table studentname add primary key (Student_id,student_name)
desc studentname

create table studentproftmp
(select * from studentprof)

alter table studentdata drop primary key (student_name)

alter table studentdata
modify column student_id int

alter table studentdata add primary key (student_name)
select * from student

use studentvalue
select * from student

	create table if not exists studentprof(
	Student_Subject Varchar(200), 
	Student_professer Varchar(200));

select * from student
order by student_id desc

create view student as
select s1.Student_id,s1.Student_Name, s1.Student_subject, s2.student_professer from studentdata s1
join studentprof s2 on 
s1.Student_Subject = s2.Student_Subject 
order by s1.student_id desc

select * from studentname

create table studentproftmp
(select * from studentprof)

desc studentnametmp
select * from  studentdatatemp
desc studentproftmp

delete from studentdata
where student_id = 9

alter table studentdata drop primarykey

create table Studentname(
Student_Id Varchar(20) primary key,
Student_Name Varchar(200));

desc studentname
select * from studentprof
order by student_id

alter table studentprof add primary key (student_subject)
alter table studentdata add constraint  ui_student_subject unique (student_id)

alter table studentname add constraint  fk_student_name
foreign key (Student_name) references studentdata (student_name)


delete from studentdata
where student_id in (
select student_id from (
select *, row_number() over(partition by student_id) as rn from studentdata) sub
where sub.rn > 1)

alter table studentname
modify column Student_ID int(20)	

alter table studentbio rename column student_Name to Student_branch

alter table studentprof add constraint uk_student_subject unique (student_subject)
