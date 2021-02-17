-- DATA ENGINEERING
-- DROP TABLE employees;
-- DROP TABLE departments;
-- DROP TABLE dept_emp;
-- DROP TABLE dept_manager;
-- DROP TABLE salaries;
-- DROP TABLE titles;

-- Creating Tables
CREATE TABLE employees (
  	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY(dept_no)
);


CREATE TABLE dept_emp (
  	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
  	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
  	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  	salary INT NOT NULL
);

CREATE TABLE titles (
  	emp_title_id VARCHAR NOT NULL,
  	title VARCHAR NOT NULL
);