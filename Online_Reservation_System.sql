create database online_reservation_system;
use online_reservation_system;

Create table user(id int primary key auto_increment, login_id varchar(20), password varchar(20));
select * from user;

Create table reservation(PNR int primary key auto_increment, name varchar(20), contact varchar(10), email varchar(20), train_no varchar(5), train_name varchar(40),
class_type varchar(20), date date, from_loc varchar(20), to_loc varchar(20));

ALTER TABLE reservation AUTO_INCREMENT=101;

select * from reservation;
desc reservation;

