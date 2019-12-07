--1.List the following details of each employee: employee number, last name, first name, gender, and salary.
select employees.emp_no, employees.last_name,employees.first_name,employees.gender, salaries.salary from employees
join salaries
on salaries.emp_no=employees.emp_no
--2.List employees who were hired in 1986.
select * from employees
where hire_date between '1986-01-01' and '1986-12-31';
--3.List the manager of each department with the following information: department number, department name, the manager's employee number,last name, first name, and start and end employment dates.
select dept_manager.dept_no, dept_manager.emp_no,department.dept_name, employees.last_name, employees.first_name, dept_manager.from_date as "employment start date", dept_manager.to_date as "employment end date" from dept_manager
join department on department.dept_no=dept_manager.dept_no
join employees on employees.emp_no=dept_manager.emp_no
--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no,employees.last_name,employees.first_name, department.dept_name
from employees,department,dept_emp
where employees.emp_no=dept_emp.emp_no
and dept_emp.dept_no=department.dept_no
select * from employees
--5.List all employees whose first name is "Hercules" and last names begin with "B"
select * from employees 
where first_name='Hercules' 
and last_name like 'B%'
--6.List all employees in the Sales department, including their employee number, last name, first name, and department name
select * from department
select employees.emp_no,employees.last_name, employees.first_name, department.dept_name
from dept_emp
join employees on employees.emp_no=dept_emp.emp_no
join department on department.dept_no=dept_emp.dept_no
where dept_name='Sales'
--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no,employees.last_name, employees.first_name, department.dept_name
from dept_emp
join employees on employees.emp_no=dept_emp.emp_no
join department on department.dept_no=dept_emp.dept_no
where dept_name in ('Sales','Development')
--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) from employees
group by last_name
order by count(last_name) desc;
