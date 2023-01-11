create database labsheet_4;
create table VaccinationDetails (VID varchar(50),
								Parent_Name varchar(50),
								Child_Name varchar(50),
								C_Age_Months int,
								Vacc_Name varchar(50),
								Amount int);
select * from VaccinationDetails;
select * from ImmunizationDetails;
drop table VaccinationDetails;
Alter table VaccinationDetails Add column FirstORBooster varchar(50);
Alter table VaccinationDetails Add primary key (VID);
copy VaccinationDetails from 'C:\CSE coding\VaccinationDetails.csv' csv header;

Select Parent_Name , C_Age_months from VaccinationDetails;
select max(C_Age_Months) from VaccinationDetails where Vacc_Name = 'Rotavirus 3' and FirstORBooster = 'First';
select distinct Vacc_Name from VaccinationDetails;
select sum(amount) from VaccinationDetails where Parent_Name = 'Damodaran P';
select Count (*) from VaccinationDetails where Child_Name = 'Ajith A' and FirstORBooster = 'BOOSTER';
select avg(amount) from VaccinationDetails where FirstORBooster = 'BOOSTER' and Vacc_Name = 'Rotavirus 3';
select count (*) from VaccinationDetails where C_Age_Months > 7
select distinct Vacc_Name from VaccinationDetails;
select Child_Name , C_Age_Months , Vacc_Name from VaccinationDetails order by C_Age_Months ASC;
select distinct Vacc_Name from VaccinationDetails where C_Age_Months = 6;
select Vacc_Name from VaccinationDetails where Child_Name = 'Ajith A' and Parent_Name = 'Achuthan C V' order by C_Age_Months ASC; 
select distinct Vacc_Name,amount from VaccinationDetails order by amount DESC;
select Vacc_Name from VaccinationDetails where Child_Name = 'Neethu D' and FirstORBooster = 'First'

insert into VaccinationDetails values ('13', 'Francis', 'Feby', 3, 'Rotavirus 1', 1000, 'First'),
                                      ('14', 'Damodaran P', 'Neethu D', 2, 'OPV 1', 500, ''),
									  ('15', 'Francis', 'Freedy', 18, 'DPT', 1500, 'Booster');

update VaccinationDetails set FirstORBooster = 'Booster' where Vacc_Name = 'Hib 1';
select * from VaccinationDetails where Child_Name = 'Neethu D' and Vacc_Name = 'OPV 1' and FirstORBooster = 'First';
update VaccinationDetails set amount = 450 where Vacc_Name = 'Hib 1';delete from VaccinationDetails where column name = 'FirstORBooster';
alter Table VaccinationDetails drop column FirstORBooster; 
alter table VaccinationDetails Rename to ImmunizationDetails; 

delete from ImmunizationDetails where Child_Name = 'Ajith A' and Parent_Name = 'Bhaskaran H';
alter table ImmunizationDetails add column FirstORBooster varchar(50);
delete from ImmunizationDetails where C_Age_Months < 5 and Vacc_Name = 'Rotavirus 1'and FirstORBooster = 'First';
delete from ImmunizationDetails where C_Age_Months > 10 and Vacc_Name = 'DTP' and FirstORBooster = 'First';

copy ImmunizationDetails to 'C:\CSE coding\Immunization.csv' csv header;