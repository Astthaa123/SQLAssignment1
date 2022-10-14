create table customer2
(
id int primary key,
FirstName nvarchar(40)not null,
LastName nvarchar(40),
city nvarchar(40),
country nvarchar(40),
phone nvarchar(20),
)
insert into customer2 values(1,'ram','pawar','cuttack','india',123456789)
insert into customer2 values(2,'sham','nath','jagatnagar','albania',987654321)
insert into customer2 values(3,'sita','naini','udarpur','armenia',189640923)

create table Orde1
(
id int primary key,
OrderDate datetime not null,
OrderNumber nvarchar(10),
Customerid int references customer2(id),
TotalNumber decimal(12,2),
)
insert into orde1 values(897,13/10/2022,25,1,8.23)
insert into orde1 values(789,14/09/2022,20,2,12.20)
insert into orde1 values(876,15/08/2022,13,3,5.73)

create table product
(
id int primary key,
productname nvarchar(50),
unitprice decimal(12,2),
package nvarchar(30),
)
insert into product values(11,'milk',8.24,'jersey')
insert into product values(12,'apple',12.34,'simla')
insert into product values(13,'rose',9.21,'flower')

create table orderitem1
(
id int primary key,
order1id int references orde1(id),
productid int references product(id),
unitprice decimal(12,2),
quantity int
)
insert into orderitem1 values(126,897,11,27.7,5)
insert into orderitem1 values(127,789,12,45.5,4)
insert into orderitem1 values(128,876,13,58.5,3)

select * from customer2
select * from customer2 where country like 'I%' ;
select * from customer2 where LastName like '__i%' ;
Alter table customer2 Add FaxNumber int;
update customer2 set FaxNumber = 567 where id=1;
update customer2 set FaxNumber = 789 where id=3;
update customer2 set FaxNumber =798 wh7ere id=2;