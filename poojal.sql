create database db_onlinefooddelivery
use db_onlinefooddelivery
create table tbl_cust
(
cust_id int not null primary key,
cust_name char(50),
cust_email varchar(50),
cust_ph bigint,
cust_add varchar(50)
)
create table tbl_food
(
food_id int primary key,
food_name char(50),
food_price int,
food_type char(50)
)
create table tbl_orders
(
o_id int primary key,
o_date varchar(20),
o_qty int,
o_amt_rs int,
cust_id int foreign key references tbl_cust(cust_id),
food_id int foreign key references tbl_food(food_id),
)
create table tbl_delivery
(
d_id int primary key,
d_arr varchar(50),
d_dep varchar(50),
o_id int foreign key references tbl_orders(o_id)
)
create table tbl_payment
(
p_id int,
p_mode char(50),
p_paid int,
o_id int foreign key references tbl_orders(o_id)
)
create table tbl_track
(
track_id int,
d_id int foreign key references tbl_delivery(d_id)
)
create table tbl_review
(
r_id int,
cust_id int foreign key references tbl_cust(cust_id),
rating int
)
insert into tbl_cust values (1,'Zubiii', 'zuber@gmail.com',9874561230,'sherpur khurd' ),
(2,'TT', 'tanmay@gmail.com',8974102642,'jodhewal basti' ),
(3,'Rakshu', 'rakshit@gmail.com',9812478546,'daba road' ),
(4,'Rohi', 'rohit@gmail.com',8743661230,'ramnagar' ),
(5,'Poojal', 'poojal@gmail.com',7347657337,'janta nagar' )
insert into tbl_food values (1,'Pizza',400,'Italian'),
(2,'Burger',220,'Mexican'),
(3,'Drinks',100,'Indian'),
(4,'Rajma Rice',250,'Indian'),
(5,'Fish',400,'Sea food')
insert into tbl_orders values(1,'12-04-2022',4,1600,2,4),
(2,'15-04-2022',2,440,1,3),
(3,'20-04-2022',1,100,3,1),
(4,'24-04-2022',3,750,5,2),
(5,'27-04-2022',2,800,4,5)
insert into tbl_delivery values(1,'17:45','17:10',3),
(2,'18:50','18:20',1),
(3,'19:00','18:40',4),
(4,'20:20','20:00',5),
(5,'14:40','14:20',2)
insert into tbl_payment values(1,'COD',1600,1),
(2,'Gpay',800,5),
(3,'COD',100,3),
(4,'Netbanking',750,4),
(5,'PayTm',440,2)
insert into tbl_track values(1,3),
(2,1),
(3,2),
(4,4),
(5,5)
insert into tbl_review values(1,1,5),
(2,4,4),
(3,2,3),
(4,5,4),
(5,3,5)
select * from tbl_cust
select * from tbl_food
select * from tbl_orders
select * from tbl_delivery
select * from tbl_payment
select * from tbl_track
select * from tbl_review