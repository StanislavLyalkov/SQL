--Создать таблицу employees

create table employees (
	id serial primary key,
	employee_name varchar(50) unique not null
)

select * from employees;

insert into employees (employee_name)
values ('Stas'),
('Nilita'),
('Masha'), 
('Music'),
('Ivanov1'),
('Lyalov1'),
('Kovalko1'),
('Music1'),
('Novemerko');

--Создать таблицу salary

create table salary (
	id serial primary key,
	 monthly_salary int not null
)

select * from salary;

--Наполнить таблицу salary 15 строками:
insert into salary ( monthly_salary)
values (1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);

--Создать таблицу employee_salary
create table employee_salary (
	id serial primary key,
	employee_id int  unique not null,
	salary_id int not null
	);
	
select * from employee_salary;

--Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (23, 7),
	(1, 4),
	(3, 9),
	(2, 13),
	(4, 4),
	(5, 2),
	(9, 10),
	(8, 13),
	(7, 4),
	(6, 1),
	(10, 7),
	(11, 8),
	(15, 11),
	(12, 13),
	(14, 14),
	(13, 15),
	(19, 16),
	(16, 17),
	(18, 18),
	(17, 19),
	(20, 20),
	(21, 21),
	(22, 22);

--Создать таблицу roles
create table roles (
	id serial primary key,
	role_name int unique not null
	);
	
alter table roles modify role_name varchar(30);

ALTER TABLE roles
ALTER COLUMN  role_name type VARCHAR(30);

select * from roles;

--Наполнить таблицу roles 20 строками
insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manage'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

--Создать таблицу roles_employee
create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key(employee_id)
		references employees (id),
	foreign key(role_id)
		references roles (id)
	);
	
select * from roles_employee;

insert into roles_employee (employee_id, role_id)
values (7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(1, 8),
(14, 10),
(15, 6),
(25, 5);