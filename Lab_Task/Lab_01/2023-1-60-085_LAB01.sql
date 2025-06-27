create table instructor_2023160085
(
	id char(5) not null,
	name varchar2(20) not null,
	dept_name varchar2(50) not null,
	salary number not null
);

create table course_2023160085
(
	course_id char(7) not null,
	title varchar2(30) not null,
	dept_name varchar2(50) not null,
	credits number not null
);

insert into instructor_2023160085 values ('10101', 'Srinivasan', 'Comp.Sci.', 65000);
insert into instructor_2023160085 values ('12121', 'Wu', 'Finance', 90000);
insert into instructor_2023160085 values ('15151', 'Mozart', 'Music', 40000);
insert into instructor_2023160085 values ('22222', 'Einstein', 'Physics', 95000);
insert into instructor_2023160085 values ('32343', 'El Said', 'History', 60000);
insert into instructor_2023160085 values ('33456', 'Gold', 'Physics', 87000);
insert into instructor_2023160085 values ('45565', 'Katz', 'Comp.Sci,', 75000);
insert into instructor_2023160085 values ('58583', 'Califieri', 'History', 62000);
insert into instructor_2023160085 values ('76543', 'Singh', 'Finance', 80000);
insert into instructor_2023160085 values ('76766', 'Crick', 'Biology', 72000);
insert into instructor_2023160085 values ('83821', 'Brandt', 'Comp.Sci', 92000);
insert into instructor_2023160085 values ('98345', 'Kim', 'Elec. Eng.', 80000);

insert into course_2023160085 values('BIO-101', 'Intro. to Biology', 'Biology', 4);
insert into course_2023160085 values('BIO-301', 'Genetics', 'Biology', 4);
insert into course_2023160085 values('BIO-399', 'Computational Biology', 'Biology', 3);
insert into course_2023160085 values('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4);
insert into course_2023160085 values('CS-190', 'Game Design', 'Comp. Sci.', 4);
insert into course_2023160085 values('CS-315', 'Robotics', 'Comp. Sci.', 3);
insert into course_2023160085 values('CS-319', 'Image Processing', 'Comp. Sci.', 3);
insert into course_2023160085 values('CS-347', 'Database System Concepts', 'Comp. Sci.', 3);
insert into course_2023160085 values('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 3);
insert into course_2023160085 values('FIN-201', 'Investment Banking', 'Finance', 3 );
insert into course_2023160085 values('HIS-351', 'World History', 'History', 3);
insert into course_2023160085 values('MU-199', 'Music Video Production', 'Music', 3);
insert into course_2023160085 values('PHY-101', 'Physical Principles', 'Physics', 4);

select name 
from instructor_2023160085;

select course_id,title 
from course_2023160085;

select name, dept_name 
from instructor_2023160085 
where id = 22222;

select title, credits 
from course_2023160085 
where dept_name = 'Comp. Sci.';

select name, dept_name 
from instructor_2023160085 
where salary > 70000;

select title 
from course_2023160085 
where not(credits < 4);

select name, dept_name 
from instructor_2023160085 
where salary between 80000 and 100000;

select title, credits 
from course_2023160085 
where not (dept_name = 'Comp. Sci.');

select * 
from instructor_2023160085;

select * 
from course_2023160085 
where dept_name = 'Biology' and not(credits = 4);




