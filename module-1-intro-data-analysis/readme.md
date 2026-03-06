## **Module 1 – Introduction to Data Analysis & Practicalities**

This module sets up your environment and introduces the full data analysis lifecycle using simple, real‑world datasets.

---

### **Learning goals**

- Understand what data analysis is and where it is used.  
- Set up Python and the core tools for this course.  
- Load your first dataset and perform a basic exploration.  
- Get familiar with different dataset formats and ethical considerations.

---

### **Prerequisites**

- Basic Python (variables, lists, simple loops).  
- Ability to install packages with `pip` or `conda`.

---

### **Topics**

- What is data analysis? (descriptive, diagnostic, predictive).  
- Installing Python libraries (`pip`, `conda`).  
- Data types: structured, semi‑structured, unstructured.  
- Common dataset formats: `.txt`, `.csv`, `.tsv`, `.json`, `.xml`, `.xlsx`.  
- Ethics in data handling (privacy, anonymisation, bias).  
- The data workflow: **collect → clean → explore → model → communicate**.

---

### **Guided example – First look at a dataset**

We will use `data/weight-height.csv`, a simple dataset with people’s heights and weights.

```python
import pandas as pd

df = pd.read_csv("data/weight-height.csv")

# First rows
df.head()

# Basic info about columns and types
df.info()

# Quick numeric summary
df.describe()
```

Reflect on the output:

- **What columns do we have?**  
- **Are there missing values?**  
- **What are reasonable minimum and maximum values for height/weight?**

---

### **Hands‑on practice**

1. **Load another dataset**
   - Open `data/students.csv`.  
   - Inspect the first 10 rows, column names, and data types.  
   - Identify which columns are numeric and which are categorical.

2. **Simple filtering**
   - Using `data/weight-height.csv`, compute the average height.  
   - Filter all rows where height is above this average.  
   - Count how many such rows there are.

3. **Short reflection**
   - In a markdown cell (in a notebook of your choice), describe in 3–5 sentences what “data analysis” means in your own words, using the examples from this module.

---

### **Next steps**

Continue to **Module 2 – NumPy Fundamentals** to learn how to perform fast numerical computations on arrays, which you will reuse in later modules.  
You can also explore the notebook `module-1/data_analysis_libs.ipynb` alongside this module.

