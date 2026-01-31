# PostgreSQL Constraints Demo 🚀

This project demonstrates the practical use of all major SQL constraints in PostgreSQL using a simple Employee–Department schema.

## 📌 Constraints Covered

- Primary Key
- Unique
- Not Null
- Default
- Check
- Foreign Key

---

## 🗂️ Project Structure

```
sql/
├── 01_create_database.sql
├── 02_create_departments_table.sql
├── 03_create_employees_table.sql
├── 04_insert_departments.sql
├── 05_insert_employees.sql
└── 06_invalid_inserts.sql
```

---

## 🧱 Tables

### Departments (Parent Table)

- `dept_id` → Primary Key
- `dept_name` → Unique, Not Null

### Employees (Child Table)

- `emp_id` → Primary Key
- `name` → Not Null
- `email` → Unique
- `salary` → Check (>= 10000)
- `gender` → Default 'Male'
- `dept_id` → Foreign Key referencing departments

---

## ✅ Valid Inserts

Data inserted successfully showing default and foreign key behavior.

## ❌ Invalid Inserts (Constraint Violations)

The file `06_invalid_inserts.sql` intentionally breaks rules to show:

- Duplicate Primary Key error
- Duplicate Unique Key error
- Not Null violation
- Check constraint violation
- Foreign Key violation

These errors prove how constraints protect data integrity.

---

## ▶️ How to Run

Open SQL Shell (psql) and run files in order:

```sql
\i 'path/01_create_database.sql'
\i 'path/02_create_departments_table.sql'
\i 'path/03_create_employees_table.sql'
\i 'path/04_insert_departments.sql'
\i 'path/05_insert_employees.sql'
\i 'path/06_invalid_inserts.sql'
```

---

## 🎯 Learning Outcome

This project shows practical understanding of relational database design and data integrity using PostgreSQL constraints.
