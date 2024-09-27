/* Problem 9 Solution */
/* Author: Joe */
SELECT Sum(e.salary) FROM public.employees e, public.departments d WHERE e.department_id = d.department_id AND d.department_name = 'Finance';

/* Problem 10 Solution */
/* Author: Joe */
SELECT Count(e) FROM public.employees e, public.departments d, public.employees m, public.departments s
WHERE e.department_id = d.department_id AND d.department_name = 'IT' AND m.department_id = s.department_id AND s.department_name = 'Shipping' AND m.manager_id IS NULL AND e.salary > m.salary;

/* Problem 11 Solution */
/* Author: Joe */
select e.first_name, e.last_name, e.employee_id from public.employees e, public.employees m where e.manager_id != m.job_id and m.manager_id is NULL and m.first_name = 'Nancy' and m.last_name = 'Greenberg';

/* Problem 12 Solution */
/* Author: Joe */
select e.employee_id, e.last_name from public.employees e, public.departments d, public.locations l, public.countries c
where e.salary > 9000 or (e.department_id = d.department_id and d.location_id = l.location_id and l.country_id = c.country_id and c.country_name = 'Germany');

/* Problem 13 Solution */
/* Author: Joe */
select * from public.countries c where c.region_id = 4 and c.country_name like 'Z%';
