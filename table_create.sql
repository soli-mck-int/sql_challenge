create table department(
	dept_no varchar primary key,
	dept_name varchar not null
	);
create table employees(
	emp_no int primary key,
	birth_date date,
	first_name varchar,
	last_name varchar,
	gender varchar,
	hire_date date);
create table dept_emp(
	emp_no int,
	dept_no varchar,
	from_date date,
	to_data date,
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES department (dept_no),
	primary key (emp_no,dept_no));
create table Dept_manager(
	dept_no varchar,
	emp_no int,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES department (dept_no),
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
