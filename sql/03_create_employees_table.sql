\c company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary INT CHECK (salary >= 10000),
    gender VARCHAR(10) DEFAULT 'Male',
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
