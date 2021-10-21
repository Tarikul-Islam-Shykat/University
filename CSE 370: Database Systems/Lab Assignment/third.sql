select first_name, last_name, email, phone_number, hire_date, department_id from employees where (department_id,hire_date) in (select depatrment_id, max(hire_date) from employees group by depatrment_id);

select first_name, last_name, email, phone_number, hire_date, department_id from employees where (department_id,hire_date) in (select department_id, min(hire_date)from employees group by department_id);

select first_name, last_name, employee_id, phone_number, salary, department_id frome mployees where (department_id,salary) in (select department_id, min(salary) fromemployees group by department_id);

select first_name, last_name, employee_id, commission_pct, department_id from employees where department_id=7 and commission_pct<all (select commission_pctfrom employees where department_id=5);

select department_id, count(*) from employees group by department_id;

select first_name, last_name, employee_id, email, salary, department_id from employees where hire_date<'2020-01-01';

select first_name, last_name, employee_id, email, salary, department_id from employee where salary in (select max (salary) from employee where manager_id =' abcd998773 ');

select department_id from employees where salary <=30000 group by department_id;

select department_id, job_id, commission_pct from employees where commission_pct = any (select min(commission_pct) from employees group by department_id);

select first_name, last_name, employee_id, email, salary, department_id, commission_pct from employees where commission_pct = any (select min(commission_pct) from employees group by manager_id );

select department_id, job_id, salary from employees where salary = any (select min(salary) from employees group by job_id);

select distinct manager_id from employees where manager_id = any (select manager_id  from employees where salary > 1500 group by manager_id);

select distinct manager_id from employees where manager_id = any (select manager_id  from employees where commission_pct < 15.25 group by manager_id);

select distinct manager_id from employees where not exists (select manager_id from employees group by manager_id having salary < 3500);.

