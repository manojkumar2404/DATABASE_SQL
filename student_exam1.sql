create database college
use college

create table student
(
	Rollno varchar(20) primary key,
    Name varchar(50),
    Branch varchar(20)
)
insert into student (Rollno,Name,Branch)
values(1,"Jay","Computer Science"),
(2,"Suhani","Electronic and com"),
(3,"Kirti","Electronic and com")

select * from student

create table Exam 
(
	Rollno varchar(20),
    S_code varchar(20),
    Marks int,
    P_code varchar(20),
    foreign key Exam(Rollno) references student(Rollno)
);

insert into Exam (Rollno,S_code,Marks,P_code)
values
(1,"CS11",50,"CS"),
(1,"CS12",60,"CS"),
(2,"EC101",66,"EC"),
(2,"EC102",70,"EC"),
(3,"EC101",45,"EC"),
(3,"EC102",50,"EC")

select * from student;
select * from Exam;

select * from student inner join Exam
on student.Rollno=Exam.Rollno;

select * from student left join Exam
on student.Rollno=Exam.Rollno;

select * from student right join Exam
on student.Rollno=Exam.Rollno;



