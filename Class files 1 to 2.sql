show databases;
#create a database
create database test;
show tables from sakila;

#How to create Table
CREATE TABLE `Nitin`.`Office`(
`id` int not null,
`Associates` varchar(45) not null,
`Designation` varchar(45) not null,
`Employee ID` Int (8) not null,
`Mobile` Int (12) not null,
primary key (`id`)) ;

#How to add value under table name Office
INSERT INTO `nitin`.`office` (`id`, `Associates`, `Designation`, `Employee ID`, `Mobile`) VALUES ('1', 'Nitin', 'AM', '254666252', '8107996215');
INSERT INTO `nitin`.`office` (`id`, `Associates`, `Designation`, `Employee ID`, `Mobile`) VALUES ('2', 'Ravi', 'TL', '254654987', '9859923555');
INSERT INTO `nitin`.`office` (`id`, `Associates`, `Designation`, `Employee ID`, `Mobile`) VALUES ('3', 'Kunal', 'TM', '25789999', '9874563210');
INSERT INTO `nitin`.`office` (`id`, `Associates`, `Designation`, `Employee ID`, `Mobile`) VALUES ('4', 'Sandeep', 'VP', '25836914', '9856543217');


#Update Command
SELECT * FROM test.car_dekho;
update test.car_dekho
set model_name='Tiago EV'
where id in(2,8,16,27,34,40,48,59,66,72,80,91,98,104,112,123,130,136,144);

SELECT * FROM test.car_dekho;
update test.car_dekho
Set model_name = 'Honda city'
where id in (6,15,25,38,47,57,70,79,89,102,111,121,134,143);

#Alter Command
alter table test.owner
add email varchar (200) ;

SELECT * FROM test.owner;
alter table test.owner
add alternate_Phone_number varchar(15) ;

SELECT * FROM test.owner;

alter table test.owner
drop column email;

#To Modify column owner_name
Alter table test.owner
modify column alternate_Phone_number int(45);

#Drop & Truncate command
Create Database test.waste;
drop database waste;
truncate table test.car_dekho;

#Create Ride Table

CREATE TABLE `ride_db`.`ride` (
  `id` INT NOT NULL,
  `ride_id` INT(20) NOT NULL,
  `region_id` INT(20) NOT NULL,
  `route_id` INT(20) NOT NULL,
  `driver_id` INT(20) NOT NULL,
  `veh_id` INT(20) NOT NULL,
  `ride_date` DATE NOT NULL,
  `ride_time` TIME NOT NULL,
  `fare` INT(20) NOT NULL,
  `discount` INT(20) NOT NULL,
  `discount_type` VARCHAR(45) NOT NULL,
  `ride_type` VARCHAR(45) NOT NULL,
  `ride_status` VARCHAR(45) NOT NULL,
  `coupan_name` VARCHAR(45) NOT NULL,
  `Year` INT(20) NOT NULL,
  `Access_Fee` INT(20) NOT NULL,
  PRIMARY KEY (`id`)) ;
  
  #Insert all value under ride sheet

select  r.discount_type,d.discount_name
from ride_db.ride  as r
left join ride_db.discount as d
on r.discount_type=d.discount_name 
;

#to check all data from ride table
select * from ride_db.ride;
#to pull count from ride table
select count(*) from ride_db.ride;

#to check particular colomn
select id,region_id,fare from ride_db.ride;

# to find out distinct values
select distinct route_id from ride_db.ride;

#ride = status complete
select * from ride_db.ride
where ride_status='complete' ;

# Group by forumula
select region_id,count(id) as 'Rides'
from ride_db.ride
where ride_status='complete'
group by region_id;
