create table phones_samsung(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
)

insert into phones_samsung(model, ram, front_camera, price)
values ('A50', 6, 10, 300),
    ('A50', 8, 10, 400),
    ('A52', 8, 16, 500),
    ('S20', 8, 24, 1500),
    ('S21', 8, 12, 1000),
    ('S22', 6, 12, 1200),
    ('A71', 6, 12, 1200),
    ('A91', 4, 12, 1900),
    ('A57', 8, 8, 900),
    ('A32', 8, 4, 800),
    ('A33', 8, 5, 750),
    ('A43', 8, 5, 850)
 ;
 
insert into phones_samsung(model, ram, front_camera, price)
values ('A65', 6, 10, 350),
    ('A75', 8, 10, 450),
    ('A85', 4, 16, 550),
    ('A95', 12, 10, 650),
    ('A105', 8, 12, 760),
    ('A115', 6, 10, 820)
 ;
 
create table samsung_orders(
 id serial primary key,
 phone_id int
)

create table apple_orders(
 id serial primary key,
 phone_id int
)



insert into apple_orders(phone_id)
values (3),
    (9),
    (5),
    (1),
    (4);
   
insert into samsung_orders(phone_id)
values (2),
    (1),
    (5);
    
   select * from phones_apple
   where ;