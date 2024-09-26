--Question 1
--Author: Mercedes Milby
select country_name
from countries 
where country_name ilike '%in%';



--Question 2
--Author: Mercedes Milby
select region_id, COUNT(*) as country_count
from countries
group by region_id;



--Question 3
--Author:Mercedes Milby
select first_name, last_name
from employees
where manager_id is not null;



--Question 4
--Author:Mercedes Milby
select e.first_name, e.last_name
from employees e
join employees m on e.manager_id = m.employee_id
where m.first_name = 'Nancy' and m.last_name = 'Greenberg';



--Question 5
--Author:Mercedes Milby
select first_name, last_name
from employees
where salary > 
(
	select salary 
	from employees
	where first_name = 'Luis' 
	and last_name = 'Popp'
)
and salary <
(
	select salary 
	from employees
	where first_name = 'Alexander' 
	and last_name = 'Hunold'
);


--Question 6
--Author:Mercedes Milby
select avg(e.salary) as average_salary
from employees e
join countries c on e.country_id = c.country_id
where c.country_name = 'Germany';



--Question 7
--Author:Mercedes Milby
select d.department_id, avg(e.salary) as average_salary
from employees e
join departments d on e.department_id = d.department_id
group by d.department_id
having count(e.employee_id) >= 8;


--Question 8
--Author:Mercedes Milby
select min(e.salary) as minimum_salary,
max(e.salary) as maximum_salary
from employees e
join jobs j on e.job_id = j.job_id
where j.job_title ilike '%programmer%';