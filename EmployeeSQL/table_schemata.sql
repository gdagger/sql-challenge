CREATE TABLE titles (
	title_id CHAR(5) PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id CHAR(5) REFERENCES titles(title_id),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex CHAR(1),
	hire_date VARCHAR(30) NOT NULL
);

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY REFERENCES employees(emp_no),
	salary INT
);

CREATE TABLE departments (
	dept_no CHAR(5) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INTEGER PRIMARY KEY,
	dept_no CHAR(5) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no CHAR(5) REFERENCES departments(dept_no),
	emp_no INT REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no, emp_no)
);

DROP TABLE titles, employees, salaries, departments, dept_emp, dept_manager