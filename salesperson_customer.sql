create database sales
use sales

create table SALSEPERSON
(
	SNo int primary key,
    SNAME varchar(20) not null,
    CITY varchar(15),
    COMM float
)

insert into SALSEPERSON values
(1001,"Peel","London",.12),
(1002,"Serres","San Jose",.13),
(1004,"Motika","London",.11),
(1007,"Rafkin","Barcelona",.15),
(1003,"Axelrod","New York",.1)

select * from SALSEPERSON;

create table CUSTOMER
(
	CNM int primary key,
    CNAME varchar(20),
    CITY varchar(20),
    RATING int,
    SNo int ,
    foreign key(SNo) references SALSEPERSON(Sno)
)

insert into CUSTOMER values
(201,"Hoffman","London",100,1001),
(202,"Giovanne","Roe",200,1003),
(203,"Liu","San Jose",300,1002),
(204,"Grass","Barcelona",100,1002),
(206,"Clemens","London",300,1007),
(207,"Pereira","Roe",100,1004)

select * from CUSTOMER;

select * from SALSEPERSON right join CUSTOMER
on SALSEPERSON.SNo = CUSTOMER.Sno;

select SNAME,CITY,COMM from SALSEPERSON
where CITY = "London";

select * from CUSTOMER 
where CITY = "London" or CITY = "Barcelona";

