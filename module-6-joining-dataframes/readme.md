## **Module 6 – Joining DataFrames with pandas**

This module focuses on **joining and merging DataFrames** with pandas. You will use realistic student, course, enrollment, and grade data to practice inner, left, right, and outer joins.

---

### **Learning goals**

- Understand the difference between **inner**, **left**, **right**, and **outer** joins.  
- Use `pd.merge` effectively with single and multiple keys.  
- Diagnose and reason about row counts after joins.  
- Answer realistic reporting questions by combining multiple tables.

---

### **Prerequisites**

- Module 4 (pandas basics: loading, filtering, grouping).  
- Comfort working with multiple related CSV files.

---

### **Core concepts**

- Relationship types: one‑to‑one, one‑to‑many, many‑to‑many.  
- Join keys and naming: `student_id`, `course_id`, `enrollment_id`.  
- Join types in pandas:
  - `how="inner"` – only matching rows in both tables.  
  - `how="left"` – all rows from the left, matches from the right.  
  - `how="right"` – all rows from the right, matches from the left.  
  - `how="outer"` – all rows from both sides, with `NaN` where missing.

Use the CSV files in the `data/` folder:

- `students.csv`  
- `instructors.csv`  
- `courses.csv`  
- `enrollments.csv`  
- `grades.csv`

---

### **Guided example – Simple enrollment join**

```python
import pandas as pd

students = pd.read_csv("data/students.csv")
courses = pd.read_csv("data/courses.csv")
enrollments = pd.read_csv("data/enrollments.csv")
grades = pd.read_csv("data/grades.csv")

# Combine enrollments with students and courses
enr_students = enrollments.merge(students, on="student_id", how="left")
enr_full = enr_students.merge(courses, on="course_id", how="left")

enr_full.head()
```

Then bring in grades:

```python
enr_full = enr_full.merge(grades, on="enrollment_id", how="left")
enr_full[["student_id", "student_name", "course_name", "grade"]].head()
```

Discuss:

- What happens to **row count** when you move from one join to two or three?  
- Which join type should you use when you **must not lose any students** vs when you want **only enrolled students**?

---

### **Hands‑on exercises (from Module 6 resources)**

These tasks mirror the questions in `module-6/exercise.md`.

1. **Enrollment report**
   - **Task**: Create a report showing all students who are enrolled in at least one course, including their names, course names, and grades.  
   - **Hints**:
     - Use an **inner** merge linking students, enrollments, courses, and grades.  
     - Select only the relevant columns: student name, course name, grade.  
     - Count:
       - total rows (enrollments), and  
       - unique students.

2. **Student enrollment status**
   - **Task**: Generate a list of all students and the courses they’re enrolled in (if any). Identify how many students are **not enrolled** in any course and list their names.  
   - **Hints**:
     - Start from `students` and `LEFT`‑join enrollments and courses.  
     - Missing (`NaN`) in `course_name` means “no enrollments”.  
     - Use `isna()` to detect non‑enrolled students.

3. **Course enrollment overview**
   - **Task**: Create a DataFrame showing all courses and the students enrolled in them (if any). Which courses have no students enrolled, and how many students are enrolled in a specific course (e.g., "Math")?  
   - **Hints**:
     - Start from `courses` and join enrollments and students.  
     - Use a **right** or **left** join depending on your perspective, but make sure all courses appear.  
     - Filter where student columns are `NaN` to find courses with no enrollments.

4. **Complete enrollment picture**
   - **Task**: Combine students and courses through enrollments to show **all students and all courses**, including those with no matches on the other side.  
   - **Hints**:
     - Use `how="outer"` in your merge.  
     - Interpret the resulting row count and explain what unmatched rows represent.

5. **Instructor workload**
   - **Task**: Generate a report showing all instructors and the courses they teach, including the number of students enrolled in each course. Which instructors (if any) have no courses assigned?  
   - **Hints**:
     - Start from `instructors` and `LEFT`‑join to courses, then to enrollments.  
     - Group by instructor and course name to count unique students.

6. **Ungraded courses**
   - **Task**: Find all courses with students enrolled but no grades assigned yet, including the instructor’s name. How many such enrollments exist?  
   - **Hints**:
     - Join enrollments with grades using a **left** join.  
     - Filter where `grade` is `NaN`.  
     - Join to `courses` and `instructors` to show names.

7. **Cross‑department enrollments**
   - **Task**: Identify students enrolled in courses outside their major’s department, showing their names, majors, course names, and departments.  
   - **Hints**:
     - Merge students to courses through enrollments.  
     - Filter rows where `major` != `department`.  
     - Count such enrollments.

---

### **Next steps**

After mastering joins, move on to **Module 7 – Time Series and Advanced Data Analysis** to learn how to work with time‑based data and apply your pandas skills in temporal contexts.  
You can also use the notebook `module-7/join_with_simple_dataframes.ipynb` to experiment with simplified join examples.

