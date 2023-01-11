create table Student(s_id varchar(20) primary key,
					 s_name varchar(20),
					 sex char, dob varchar(20),
					 dep_no varchar(10));
create table Department(dep_no varchar(10) primary key,
					   dep_name varchar(10));
create table faculty(f_id varchar(20) primary key,
					f_name varchar(20),
					designation varchar(10),
					salary varchar(7),
					dep_no varchar(15));
create table Course(c_id varchar(10) primary key,
				   c_name varchar(20),
				   credits int,
				   dept_no varchar(10));
create table Register(s_id varchar(10) primary key,
					 c_id varchar(10),
					 sem varchar(10));
create table Teaching(f_id varchar(10) primary key,
					 c_id varchar(10),
					 sem varchar(10));
create table Hostel(h_id varchar(10) primary key,
				   h_name varchar(10),
				   no_rooms varchar(10));



insert into Student values('CSE101','Anand','M','20/10/2004','1');
select * from Student;
insert into Student values('ECE101','Viji','F','02/03/2005','2');
insert into Department values('1','CSE');
insert into Department values('2','ECE');
select * from Department;
create table Faculty(f_id varchar(20) primary key,
					f_name varchar(20),
					designation varchar(20),
					salary varchar(7),
					dep_no varchar(15));
insert into Faculty values('F131','Arun','Assistant Professor','200000','3'),
                   ('F254','Devi','Lecture','300000','2');
select * from Faculty;
insert into Course values('E001','Digital Electronics',3,'2'),
                         ('C321','DBMS',4,'1');
select * from Register;

insert into Register values('CSE101','C321','4'),
('ECE133','E001','3');
insert into Teaching values('F131','C321','4'),
('F254','E001','3');

insert into Hostel values('H01','Ganga','100'),
('H02','Yamuna','200');
select * from Hostel;

insert into Student values('ARE109','Abhishek','M','13/05/2000','3'),
('MEE181','Harry','M','29/06/1985','4'),
('EAC234','Megan','F','04/12/1934','5');

insert into Department values('3','ARE'),
('4','MEE'),
('5','EAC');

insert into Faculty values('F345','Greeshma','Professor','564279','5'),
('F567','Rejeenth','Lecturer','123456','9'),
('F834','Gopu','Lab Assistant','876543','8');

insert into Course values('A564','AUMS',1,'9'),
('S102','Thermodynamics',5,'3'),
('T555','Fluids',4,'5')

select * from Course;

insert into Register values('ARE123','A453','2'),
('EAC276','B789','8'),
('MEE089','M512','1');

insert into Teaching values('F768','A123','2'),
('F343','M245','5'),
('F629','B033','9');

select * from Teaching;

insert into Hostel values('H03','Kaveri','300'),
('H04','Godaveri','400'),
('H05','Krishna','500');