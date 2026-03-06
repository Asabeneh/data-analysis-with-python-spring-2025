## **Module 4 – Pandas for Data Manipulation**

This module focuses on **pandas**, the essential library for working with tabular data in Python. You will learn to clean, join, filter, and summarise datasets.

---

### **Learning goals**

- Understand `Series` and `DataFrame` objects.  
- Load, inspect, and clean tabular data.  
- Filter, sort, and aggregate data using `groupby`.  
- Join multiple datasets together with `merge`.

---

### **Prerequisites**

- Module 1 (basic data loading and exploration).  
- Some familiarity with visualisation (Module 3) is helpful but not required.

---

### **Topics**

- `Series` vs `DataFrame`.  
- Indexing and selection:
  - `.loc` (label‑based) vs `.iloc` (position‑based).  
  - Boolean filtering.  
- Handling missing data:
  - Detecting missing values.  
  - `dropna()` vs `fillna()`.  
- Grouping and aggregation with `groupby`.  
- Joining and merging:
  - `merge`, `join`, `concat`.

---

### **Guided example – Students and courses**

We will use `data/students.csv` and `data/enrollments.csv` to combine student information with course enrolments.

```python
import pandas as pd

students = pd.read_csv("data/students.csv")
enrollments = pd.read_csv("data/enrollments.csv")

students.head()
enrollments.head()

df = enrollments.merge(students, on="student_id", how="left")
df.head()
```

Group by course to compute simple statistics:

```python
course_stats = (
    df.groupby("course_id")
      .agg(
          n_students=("student_id", "nunique"),
          avg_score=("score", "mean")
      )
      .reset_index()
)

course_stats
```

Questions to consider:

- Which course has the most students?  
- Are there courses with particularly high or low average scores?  
- Are there any missing values after the merge?

---

### **Hands‑on practice**

1. **Filtering and sorting**
   - From the merged students–enrolments `DataFrame` (`df` above), select students with a score below 60.  
   - Sort them by score ascending and show the 15 lowest scores.  
   - Identify if certain courses appear frequently among the low scores.

2. **Missing data**
   - Create a copy of the `score` column and intentionally introduce some `NaN` values (e.g., by setting 10 random positions to `NaN`).  
   - Compare:

     ```python
     df_copy = df.copy()
     df_copy["score_with_nans"] = df_copy["score"]
     # ... introduce NaNs ...

     df_copy["score_with_nans"].dropna().describe()
     df_copy["score_with_nans"].fillna(df_copy["score_with_nans"].mean()).describe()
     ```

   - Observe how dropping vs. filling missing values affects the summary statistics.

3. **Join with course information**
   - Use `data/courses.csv` to add course names and categories to the enrolments table:

     ```python
     courses = pd.read_csv("data/courses.csv")
     df_full = df.merge(courses, on="course_id", how="left")
     df_full.head()
     ```

   - Compute the average score per course category and sort the categories by average score descending.

---

### **Recommended datasets for further practice**

- **Chinook sample database (SQLite)**  
  A small music store database with tables for customers, invoices, tracks, albums, etc. – ideal for exporting tables to CSV and practising merges, groupbys, and joins in pandas.  
  - [Chinook database download](https://github.com/lerocha/chinook-database)

- **Kaggle – Student Performance in Exams**  
  Single‑table dataset that works well for filtering, grouping, and aggregations.  
  - [Students Performance in Exams](https://www.kaggle.com/datasets/spscientist/students-performance-in-exams)

Try exporting or downloading these datasets, then reproduce the filtering, grouping, and joining patterns from this module using real‑world data.

---

### **Next steps**

Proceed to **Module 5 – Descriptive Statistics** to deepen your understanding of numeric summaries and distribution properties.  
You can also explore the notebooks `module-3-data-visualisation/pandas.ipynb`, `module-3-data-visualisation/exercises.ipynb`, and `module-4-pandas-manipulation/pandas-revision.ipynb` for further practice.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 3 – Data Visualisation with Matplotlib & Seaborn](../module-3-data-visualisation/readme.md)  
- Next: [Module 5 – Descriptive Statistics](../module-5-descriptive-statistics/readme.md)

