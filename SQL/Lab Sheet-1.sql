create table Customer(c_id varchar(20),
					  c_name varchar(20),
					  loc varchar(20),
					  sex char(20),
					  dob varchar(20));
create table Bank(branch varchar(20),
				 b_code varchar(20),
				 b_loc varchar(20),
				 b_state varchar(20));
create table Deposit(d_ac_no varchar(20),
					d_type varchar(20),
					d_date varchar(20),
					d_amt varchar(20));
create table Loan(l_ac_no varchar(20),
					l_type varchar(20),
					l_date varchar(20),
					l_amt varchar(20));
create table Accounts_in(b_code varchar(20),
						c_id varchar(20));
create table Depositor(c_id varchar(20),
					  d_ac_no varchar(20));
create table Borrower(c_id varchar(20),
					 l_ac_no varchar(20));
insert into Customer values('A234','Gautam','Kottayam','M','20/06/2000'),
('S876','Fatose','Otta','M','13/02/1978'),
('T034','Savita','Hauz Khas','F','02/04/1999'),
('U932','Devi','Raita','F','27/11/1995'),
('I128','Yami','Waterloo','F','11/12/1967');
select * from Customer;

insert into Bank values('HDFC','HDFC345','Kochi','Kerala'),
('SBI','SBI683','Trivandrum','Kerala'),
('AXIS','AX980','Kozhikode','Kerala'),
('BoB','BoB123','Pathanamthitta','Kerala'),
('ICIC','ICIC619','Idukki','Kerala');
select * from Bank;

insert into Deposit values('235','Savings','02/05/2003','234567'),
('823','Current','16/02/2014','123478'),
('543','Salary','28/07/2000','8888888'),
('784','Commercial','17/04/2011','23456789'),
('435','Fixed Deposits','01/01/1000','4567760');

select * from Deposit;

insert into Loan values('276','Personal','02/05/2003','876371'),
('305','Car','17/04/2011','8334780'),
('703','Education','01/01/1000','1982823'),
('391','Health','28/07/2000','765434567'),
('821','Home','16/02/2014','847692743');

select * from Loan;

insert into Accounts_in values('B234','ABC'),
('J301','PQR'),
('U160','WBR'),
('O219','GHQ'),
('E934','POI');

select * from Accounts_in;

insert into Depositor values('S456','749'),
('H098','358'),
('O291','927'),
('U092','981'),
('J034','670');

select * from Depositor;

insert into Borrower values('Y129','982'),
('P172','980'),
('A683','387'),
('G802','275'),
('K690','892');

select * from Borrower;