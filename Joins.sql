use studentvalue

select t1.Student_id, t1.Student_name,t1.Student_subject, t2.student_professer from studentdata t1
join studentprof t2 on
t1.student_subject = t2.student_subject
order by student_id asc


