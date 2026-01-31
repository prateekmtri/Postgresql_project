\c company_db;

-- ❌ Duplicate PRIMARY KEY (emp_id = 1 already exists)
INSERT INTO employees VALUES (1, 'Ravi', 'ravi@gmail.com', 20000, 'Male', 10);

-- ❌ Duplicate UNIQUE email (ram@gmail.com already exists)
INSERT INTO employees VALUES (4, 'Ravi', 'ram@gmail.com', 20000, 'Male', 10);

-- ❌ NULL in NOT NULL column (name)
INSERT INTO employees (emp_id, email, salary, dept_id)
VALUES (5, 'test@gmail.com', 20000, 10);

-- ❌ CHECK constraint fail (salary < 10000)
INSERT INTO employees VALUES (6, 'Amit', 'amit@gmail.com', 5000, 'Male', 10);

-- ❌ FOREIGN KEY fail (dept_id 99 does not exist)
INSERT INTO employees VALUES (7, 'Neha', 'neha@gmail.com', 20000, 'Female', 99);
