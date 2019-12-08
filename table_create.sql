create table department(
	dept_no varchar primary key,
	dept_name varchar);
create table employees(
	emp_no varchar primary key,
	birth_date date,
	first_name varchar,
	last_name varchar,
	gender varchar,
	hire_date date);
create table dept_emp(
	emp_no varchar references employees (emp_no),
	dept_no varchar references department (dept_no),
	from_date date,
	to_data date,
	primary key (emp_no,dept_no));
create table Dept_manager(
	dept_no varchar references department (dept_no),
	emp_no varchar references employees (emp_no),
	from_date date,
	to_date date,
	primary key (emp_no,dept_no));
create table salaries(
	emp_no int primary key,
	salary int,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no));
create table titles(
	emp_no int,
	title varchar,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no,title, from_date));
