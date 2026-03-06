## **Module 8 – SQL and Relational Databases for Analysts**

This module introduces **SQL** (Structured Query Language) and **MySQL** for working with relational databases. You will learn how to create databases and tables, insert data, and query it using joins, aggregates, and conditions.

The main reference for this module is `module-8/introduction.md`, along with the `.sql` files in `module-8/queries/`.

---

### **Learning goals**

- Understand core relational concepts: databases, tables, rows, columns, and data types.  
- Use basic SQL commands for **CRUD** operations (Create, Read, Update, Delete).  
- Filter, sort, and aggregate data with `WHERE`, `ORDER BY`, `GROUP BY`, and aggregate functions.  
- Combine tables with different types of joins.  
- Connect SQL knowledge back to pandas and ETL tasks.

---

### **Prerequisites**

- Modules 1–4 (basic Python and pandas) for later integration with SQL.  
- Access to a MySQL server or any compatible SQL environment.

---

### **Core concepts**

- Databases and tables as containers for structured data.  
- Common SQL data types: integers, decimals, text, dates, booleans.  
- CRUD:
  - `CREATE DATABASE`, `CREATE TABLE`.  
  - `INSERT`, `SELECT`, `UPDATE`, `DELETE`.  
- Filtering and ordering:
  - `WHERE`, comparison operators, logical operators.  
  - `ORDER BY`, `LIMIT`, `OFFSET`.  
- Aggregates and grouping:
  - `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`.  
  - `GROUP BY`, `HAVING`.  
- Joins:
  - `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`.  
- Advanced patterns (as time permits): subqueries, `EXISTS`, `IN`, `BETWEEN`, `LIKE`.

---

### **Guided example – School database**

From `module-8/introduction.md`, you can follow along with the `school` database:

```sql
CREATE DATABASE school;
USE school;
```

Create tables:

```sql
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    grade_level INT,
    gpa DECIMAL(3,2),
    email VARCHAR(100)
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher VARCHAR(50),
    credits INT
);

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
```

Insert sample data, then explore:

```sql
SELECT first_name, last_name, gpa
FROM students
WHERE gpa > 3.5
ORDER BY gpa DESC;
```

Join students and courses:

```sql
SELECT s.first_name, c.course_name, c.teacher
FROM students s
JOIN student_courses sc ON s.id = sc.student_id
JOIN courses c ON sc.course_id = c.course_id;
```

---

### **Hands‑on practice**

Use `module-8/queries/*.sql` as examples and inspiration.

1. **Database and table creation**
   - Create a new database (e.g., `analytics_db`) and a table for events or transactions with appropriate data types.  
   - Insert at least 10 rows of sample data.  
   - Write `SELECT` queries to retrieve:
     - All rows.  
     - Only rows matching a condition (`WHERE`).  
     - Sorted results using `ORDER BY`.

2. **Aggregations and grouping**
   - Using the `school` database, compute:
     - Number of students per grade level.  
     - Average GPA per grade level.  
   - Use `HAVING` to show only grade levels with average GPA greater than a threshold.

3. **Joins**
   - Join `students`, `student_courses`, and `courses` to produce a report of:
     - student name, course name, teacher, credits.  
   - Extend the query to count enrollments per course using `GROUP BY`.

4. **From SQL to pandas (optional)**
   - Use Python and `pandas.read_sql` (or `sqlalchemy`) to run one of your SQL queries from a notebook and load the result into a `DataFrame`.  
   - Perform an additional analysis step in pandas (e.g., visualise course enrollments).

5. **ETL exercise (link to Module 8 exercises)**
   - See `module-8/exercises.md` for a more advanced ETL task:
     - Fetch cat breed data from an API.  
     - Transform it to match a given schema.  
     - Load it into a MySQL database (`cats_db`).  
     - Read it back into pandas for analysis.

---

### **Next steps**

Proceed to **Module 9 – Introduction to Machine Learning** to start building predictive models using scikit‑learn and applying them to datasets similar to those queried via SQL.  
Continue to use `module-8/introduction.md` and the SQL scripts in `module-8/queries/` as a detailed reference and practice set.

