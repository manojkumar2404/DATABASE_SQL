create database product
use product

create table item
(
	PRO_ID int unique not null,
    PRO_NAME varchar(20) not null,
    PRO_PRICE int,
    PRO_COM int
);

insert into item(PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM)
values
(101,"Mother Board",3200,15),
(102,"Key Board",450,16),
(103,"ZIP drive",250,14),
(104,"Speaker",550,16),
(105,"Monitor",5000,11),
(106,"DVD drive",900,12),
(107,"CD drive",800,12),
(108,"Printer",2600,13),
(109,"Refill cartridge",350,13),
(110,"Mouse",250,12)

select * from item;

select * from item
where PRO_PRICE between 200 And 600;


-- procedure 
delimiter $$
create procedure display_data()
begin
	select * from item;
end $$

call display_data();    

select avg(PRO_PRICE) from item
where PRO_COM = 16;

select PRO_NAME as "item name" , PRO_PRICE as "price in RS."
from item;

select PRO_NAME, PRO_PRICE from item
where PRO_PRICE >= 250
order by PRO_PRICE DESC , PRO_NAME;

select avg(PRO_PRICE), PRO_COM from item
group by PRO_COM; 





