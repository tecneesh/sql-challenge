-- Employee Datebase 

CREATE TABLE employees (
	emp_no VARCHAR NOT NULL PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE 
);

CREATE TABLE departments (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE dept_manager (
	emp_no VARCHAR REFERENCES employees, 
	dept_no VARCHAR REFERENCES departments,
	from_date DATE,
	to_date DATE
	
);

CREATE TABLE dept_emp (
	emp_no VARCHAR REFERENCES employees, 
	dept_no VARCHAR REFERENCES departments,
	from_date DATE,
	to_date DATE
	
);

CREATE TABLE titles (
	emp_no VARCHAR REFERENCES employees, 
	title VARCHAR,
	from_date DATE,
	to_date DATE
);
	
CREATE TABLE salaries (
	emp_no VARCHAR REFERENCES employees, 
	salary INT,
	from_date DATE,
	to_data DATE
);