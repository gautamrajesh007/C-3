create table events(
	event_id int primary key,
	event_name varchar(18),
	event_type varchar(12),
	allowed_participants int,
	venue varchar(10)
);

create table registration(
	chess_no varchar(4) primary key,
	event_id int,
	student_dept varchar(4),
	score int
);

insert into events values
	(1, 'Group song', 'Group', 10, 'Stage1'),
	(2, 'Group dance', 'Group', 10, 'Stage2'),
	(3, 'Elocution', 'Individual', 25, 'Stage1'),
	(4, 'Classical Dance', 'Individual', 20, 'Stage3'),
	(5, 'Mime', 'Group', 10, 'Stage2'),
	(6, 'Fancy Dress', 'Indivitual', 50, 'Stage1');

drop table registration;

insert into registration values
	('GS1', 1, 'CSE', 10),
	('GS2', 1, 'ECE', 8),
	('GS3', 1, 'CSE', 7),
	('GD1', 2, 'EEE', 9),
	('GD2', 2, 'CSE', 8),
	('E1', 3, 'ME', 10),
	('E2', 3, 'EEE', 8),
	('CD1', 4, 'CSE', 10),
	('CD2', 4, 'EEE', 8),
	('CD3', 4, 'CSE', 8),
	('M1', 5, 'CSE', 9),
	('M2', 5, 'ME', 7),
	('M3', 5, 'ECE', 8),
	('FD1', 6, 'ME', 9),
	('FD2', 6, 'CSE', 8),
	('FD3', 6, 'EEE', 7),
	('FD4', 6, 'CSE', 8);
	
	
	
select sum(score) from registration where student_dept = 'CSE';
select avg(score) from registration where student_dept = 'CSE' and event_id = 6;
-- select count(event_id) from events where event_id = 6;
select max(score) from registration where student_dept = 'CSE';
select * from events where venue = 'Stage1';

update events set allowed_participants = 30 where event_name = 'Fancy Dress';
update events set venue = 'Stage1' where event_name = 'Classical Dance';
update registration set score = 5 where chess_no = 'GS3' and event_id = 1;
update registration set score = 9 where event_id = 6 and student_dept = 'CSE';
update events set venue = 'Stage3' where venue = 'Stage2';

delete from events 
	where event_type = 'Indivitual' 
	and venue = 'Stage1' 
	and allowed_participants < 26;



