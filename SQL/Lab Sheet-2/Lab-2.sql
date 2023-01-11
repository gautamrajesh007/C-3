create table StudentDetails(RollNo varchar(40) primary key,
						   Name varchar(40),
						   Gender varchar(40),
						   Branch varchar(40),
						   District varchar(40),
						   State varchar(40),
						   HorD varchar(40),
						   AdmissionYear int,
						   CGPA float,
						   Batch char);

copy StudentDetails from 'C:\Users\gauta\Downloads\studentdata (3).csv' csv header;

select * from StudentDetails;
select RollNo from StudentDetails where RollNo = 'A14062';
select count(District) from StudentDetails where District = 'Trivandrum';
select count(State) from StudentDetails where State = 'ANDHRA PRADESH';
select count (*) from StudentDetails where AdmissionYear = 2014 and Branch = 'ME';
select count (*) from StudentDetails where Branch = 'CSE' and Batch = 'A' and AdmissionYear = 2014;
select avg(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014 and Gender='Female';
select avg(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014 and Gender='Female';
select avg(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014 and Gender='Female';
select avg(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014 and Gender='Female';

select avg(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014 and Gender='Male';
select avg(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014 and Gender='Male';
select avg(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014 and Gender='Male';
select avg(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014 and Gender='Male';

select avg(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014 and HorD='Hostelite';
select avg(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014 and HorD='Hostelite';
select avg(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014 and HorD='Hostelite';
select avg(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014 and HorD='Hostelite';

select avg(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014 and HorD='Dayscholar';
select avg(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014 and HorD='Dayscholar';
select avg(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014 and HorD='Dayscholar';
select avg(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014 and HorD='Dayscholar';

select max(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014;
select max(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014;
select max(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014;
select max(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014;

select min(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014;
select min(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014;
select min(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014;
select min(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014;

select max(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014 and HorD='Hostelite' and Gender='Male';
select max(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014 and HorD='Hostelite' and Gender='Male';
select max(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014 and HorD='Hostelite' and Gender='Male';
select max(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014 and HorD='Hostelite' and Gender='Male';

select min(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014 and HorD='Dayscholar' and District='Kollam' and Gender='Male';
select min(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014 and HorD='Dayscholar' and District='Kollam' and Gender='Male';
select min(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014 and HorD='Dayscholar' and District='Kollam' and Gender='Male';
select min(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014 and HorD='Dayscholar' and District='Kollam' and Gender='Male';

select max(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014 and HorD='Hostelite' and Gender='Female';
select max(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014 and HorD='Hostelite' and Gender='Female';
select max(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014 and HorD='Hostelite' and Gender='Female';
select max(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014 and HorD='Hostelite' and Gender='Female';

select max(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014 and HorD='Hostelite' and State='BIHAR';
select max(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014 and HorD='Hostelite' and State='BIHAR';
select max(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014 and HorD='Hostelite' and State='BIHAR';
select max(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014 and HorD='Hostelite' and State='BIHAR';

select min(CGPA) from StudentDetails where Branch='CSE' and AdmissionYear=2014 and District='Trivandrum';
select min(CGPA) from StudentDetails where Branch='ME' and AdmissionYear=2014 and District='Trivandrum';
select min(CGPA) from StudentDetails where Branch='EEE' and AdmissionYear=2014 and District='Trivandrum';
select min(CGPA) from StudentDetails where Branch='ECE' and AdmissionYear=2014 and District='Trivandrum';