{\rtf1\ansi\ansicpg1252\cocoartf2636
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Creating tables for PH-EmployeeDB\
CREATE TABLE departments (\
     dept_no VARCHAR(4) NOT NULL,\
     dept_name VARCHAR(40) NOT NULL,\
     PRIMARY KEY (dept_no),\
     UNIQUE (dept_name)\
);\
\
CREATE TABLE employees (\
	emp_no int NOT NULL,\
	birth_date date NOT NULL,\
	first_name varchar NOT NULL,\
	last_name varchar NOT NULL,\
	gender varchar NOT NULL,\
	hire_date date NOT NULL,\
	PRIMARY KEY (emp_no)\
);\
\
CREATE TABLE dept_manager (\
  dept_no VARCHAR(4) NOT NULL,\
  emp_no INT NOT NULL,\
  from_date DATE NOT NULL,\
  to_date DATE NOT NULL,\
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),\
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),\
    PRIMARY KEY (emp_no, dept_no)\
);\
\
CREATE TABLE salaries (\
  emp_no INT NOT NULL,\
  salary INT NOT NULL,\
  from_date DATE NOT NULL,\
  to_date DATE NOT NULL,\
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),\
  PRIMARY KEY (emp_no)\
);\
\
CREATE TABLE dept_emp (\
   emp_no INT NOT NULL,\
   dept_no varchar NOT NULL,\
   from_date DATE NOT NULL,\
   to_date DATE NOT NULL,\
   FOREIGN KEY (emp_no) REFERENCES employees (emp_no),\
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no),\
   PRIMARY KEY (emp_no, dept_no)\
);\
\
CREATE TABLE titles (\
	emp_no int NOT NULL,\
	title varchar NOT NULL,\
	from_date date NOT NULL,\
	to_date date NOT NULL,\
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),\
	PRIMARY KEY (emp_no, title, from_date)   \
);\
\
SELECT * FROM employees;\
\
SELECT first_name, last_name\
FROM employees\
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';\
\
SELECT first_name, last_name\
FROM employees\
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';\
\
-- Retirement eligibility\
SELECT first_name, last_name\
FROM employees\
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')\
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');\
\
-- Number of employees retiring\
SELECT COUNT(first_name)\
FROM employees\
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')\
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');\
\
SELECT first_name, last_name\
INTO retirement_info\
FROM employees\
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')\
\
SELECT * FROM retirement_info;\
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');}