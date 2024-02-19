CREATE TABLE department (
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(25) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE title (
	title_id VARCHAR(20) NOT NULL,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE employee (
	emp_no VARCHAR(10) NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date VARCHAR(10) NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES title (title_id)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(10) NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no)
);

CREATE TABLE salary (
	emp_no VARCHAR(10) NOT NULL,
	salary DEC NOT NULL,
	PRIMARY KEY (emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
);