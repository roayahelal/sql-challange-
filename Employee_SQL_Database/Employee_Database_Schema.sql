-- DROP TABLE dept_manager; DROP TABLE dept_emp; DROP TABLE titles; DROP TABLE salaries; DROP TABLE departments; DROP TABLE employees

CREATE TABLE departments (
dept_no VARCHAR(50) NOT NULL PRIMARY KEY,
dept_name VARCHAR(50));

CREATE TABLE employees (
emp_no VARCHAR(50) NOT NULL PRIMARY KEY,
birth_date DATE,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(20),
hire_date DATE);

CREATE TABLE dept_manager (
dept_no VARCHAR(50) REFERENCES departments(dept_no),
emp_no VARCHAR(50) REFERENCES employees(emp_no),
from_date DATE,
to_date DATE);

CREATE TABLE dept_emp (
emp_no VARCHAR(50) REFERENCES employees(emp_no),
dept_no VARCHAR(50) REFERENCES departments(dept_no) ,
from_date DATE,
to_date DATE);


CREATE TABLE titles (
emp_no VARCHAR(50) REFERENCES employees(emp_no),
title VARCHAR(50),
from_date DATE,
to_date DATE);

CREATE TABLE salaries (
emp_no VARCHAR(50) REFERENCES employees(emp_no),
SALARY FLOAT,
from_date DATE,
to_date DATE);
