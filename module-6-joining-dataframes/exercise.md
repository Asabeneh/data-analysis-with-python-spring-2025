# Joining Dataframes

## Practical Questions for Joining Pandas DataFrames

Below are the practical questions for joining pandas DataFrames. The "Students", "Instructors", "Courses", "Enrollments", and "Grades" CSV file can be found on the data folder.

You can start by reading this blog: https://www.analyticsvidhya.com/blog/2020/02/joins-in-pandas-master-the-different-types-of-joins-in-python/

---

### Question 1: Enrollment Report

**Task**: Create a report showing all students who are enrolled in at least one course, including their names, course names, and grades. How many students are enrolled in at least one course?  
**Evaluation Tips**:  

- Check for INNER merge on `StudentID`, `CourseID`, and `EnrollmentID`.  
- Verify columns selected: `StudentName`, `CourseName`, `Grade`.  
- Confirm row count (60) and unique student count (45).

### Question 2: Student Enrollment Status

**Task**: Generate a list of all students, showing their names and the courses they’re enrolled in (if any). Identify how many students are not enrolled in any courses and list their names.  
**Evaluation Tips**:  

- Ensure LEFT merge with `students_df` as the left DataFrame.  
- Check for NaN detection in `CourseName` to identify non-enrolled students.  
- Validate total rows (67) and not-enrolled count (7).

### Question 3: Course Enrollment Overview

**Task**: Create a DataFrame showing all courses and the students enrolled in them (if any). Which courses have no students enrolled, and how many students are enrolled in "Math"?  
**Evaluation Tips**:  

- Confirm RIGHT merge with `courses_df` as the right DataFrame.  
- Verify identification of "Statistics" as having no students (NaN in `StudentName`).  
- Check "Math" student count (8) using unique names.

### Question 4: Complete Enrollment Picture

**Task**: Combine "Students" and "Courses" through "Enrollments" to show all students and all courses, including those with no matches. How many rows are in the result, and what does this tell you about the data?  
**Evaluation Tips**:  

- Look for OUTER merge on `StudentID` and `CourseID`.  
- Confirm row count (68) and explanation (60 enrollments + 7 unmatched students + 1 unmatched course).  
- Ensure both unmatched students (e.g., Liam) and courses (e.g., Statistics) are included.

### Question 5: Instructor Workload

**Task**: Generate a report showing all instructors and the courses they teach, including the number of students enrolled in each course. Which instructors have no courses assigned?  
**Evaluation Tips**:  

- Check LEFT merge from `instructors_df` to include all instructors.  
- Verify grouping by `InstructorName` and `CourseName` with unique student counts.  
- Confirm no instructors lack courses (all 10 assigned in this data).

### Question 6: Ungraded Courses

**Task**: Find all courses with students enrolled but no grades assigned yet, including the instructor’s name. How many such enrollments exist?  
**Evaluation Tips**:  

- Ensure INNER merges for enrolled students, followed by LEFT merge with `instructors_df`.  
- Check filter for NaN in `Grade` column.  
- Validate row count (15 ungraded enrollments).

### Question 7: Cross-Department Enrollments

**Task**: Identify students enrolled in courses outside their major’s department, showing their names, majors, course names, and departments. How many such enrollments exist?  
**Evaluation Tips**:  

- Confirm INNER merge to link students to courses.  
- Verify filter where `Major` != `Department`.  
- Check row count.

---
