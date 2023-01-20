

-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary 
from employees join salary 
on employees.id = salary.id;


--Вывести всех работников у которых ЗП меньше 2000
select employee_name, monthly_salary
	from employees inner join salary
	on salary.id = employees.id 
	where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary, employee_name
	from employees right join salary
	on salary.id = employees.id
	where employee_name is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary, employee_name
	from employees right join salary
	on salary.id = employees.id
	where employee_name is null and monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.
select employee_name, monthly_salary
	from employees left join salary
	on salary.id = employees.id
	where monthly_salary is null;

--6. Вывести всех работников с названиями их должности.
select employee_name, role_name
	from roles_employee 
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id;
	
--7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name
	from roles_employee 
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	where role_name like '%Java %';
	
-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name
	from roles_employee 
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	where role_name like '%Python %';

-- 9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, Roles.role_name
from employees join roles
on employees.id = roles.id
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, Roles.role_name
from employees join roles
on employees.id = roles.id
where role_name like '%Manual QA%' ;

--11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, Roles.role_name
from employees join roles
on employees.id = roles.id
where role_name like '%Automation QA%' ;

--12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees join salary roles
on employees.id = salary.id
where role_name like '%Junior%' ;

?????

--13. Вывести имена и зарплаты Middle специалистов
--14. Вывести имена и зарплаты Senior специалистов
--15. Вывести зарплаты Java разработчиков
select salary.monthly_salary, Roles.role_name
from salary join roles
on salary.id = roles.id
where role_name like '%Java developer%';

select salary.monthly_salary, Roles.role_name
from salary join roles
on salary.id = roles.id
where role_name like '%JavaScript%';

select salary.monthly_salary, Roles.role_name
from salary join roles
on salary.id = roles.id
where role_name like '%QA%';

--16. Вывести зарплаты Python разработчиков
select salary.monthly_salary, Roles.role_name
from salary join roles
on salary.id = roles.id
where role_name like '%Python developer%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join salary
on employees.id = salary.id,
join roles on salary.id
where role_name like '%Python developer%';

?????????

--18. Вывести имена и зарплаты Middle JS разработчиков
--19. Вывести имена и зарплаты Senior Java разработчиков
-- 20. Вывести зарплаты Junior QA инженеров
select salary.monthly_salary, Roles.role_name
from salary join roles
on salary.id = roles.id
where role_name like '%Junior%' and role_name like '%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов
--22. Вывести сумму зарплат JS разработчиков
select sum (salary.monthly_salary)  as sum_salary_js
from salary join roles
on salary.id = roles.id
where role_name like '%JavaScript%';

--23. Вывести минимальную ЗП QA инженеров
select min (salary.monthly_salary)  as sum_salary_js
from salary join roles
on salary.id = roles.id
where role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров
select max (salary.monthly_salary)  as sum_salary_js
from salary join roles
on salary.id = roles.id
where role_name like '%QA%';

--25. Вывести количество QA инженеров
select count(role_name) as count_qa
from salary join roles
on salary.id = roles.id
where role_name like '%QA%';

--26.Вывести количество Middle специалистов
select count(role_name) as count_qa
from salary join roles
on salary.id = roles.id
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков
select count(role_name) as count_qa
from salary join roles
on salary.id = roles.id
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
Select employee_name, role_name, monthly_salary
	from roles_employee 
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	inner join salary on salary.id = roles_employee.id
	order by employee_name, role_name, monthly_salary;
????

--30.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary
	from roles_employee
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	full join salary on salary.id = roles_employee.id
	where monthly_salary >= 1700 and monthly_salary < 2300 
	order by monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary
	from roles_employee
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	full join salary on salary.id = roles_employee.id
	where monthly_salary < 2300 
	order by monthly_salary;

--32.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary
	from roles_employee
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	full join salary on salary.id = roles_employee.id
	where monthly_salary in (1100, 1500, 2000)
	order by monthly_salary;
