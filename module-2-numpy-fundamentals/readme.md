## **Module 2 – NumPy Fundamentals**

This module teaches you how to use **NumPy**, the core library for fast numerical computing in Python. You will learn to create and manipulate arrays and to perform vectorised computations on real datasets.

---

### **Learning goals**

- Create 1D, 2D, and 3D NumPy arrays.  
- Index, slice, reshape, and broadcast arrays.  
- Use NumPy for vectorised mathematical operations.  
- Apply NumPy operations to a real health dataset.

---

### **Prerequisites**

- Module 1 (basic familiarity with loading CSVs using pandas).  
- Comfortable with basic Python syntax and lists.

---

### **Topics**

- Creating arrays: `np.array`, `np.arange`, `np.linspace`, `np.zeros`, `np.ones`.  
- Indexing and slicing (`a[0]`, `a[1:5]`, `a[:, 0]`, etc.).  
- Array shapes and reshaping with `.shape` and `.reshape`.  
- Broadcasting rules for operations between arrays of different shapes.  
- Aggregations: `mean`, `sum`, `min`, `max`, `std`.  
- Random sampling: `np.random.normal`, `np.random.uniform`.

---

### **Guided example – BMI with NumPy**

We will use `data/500_Person_Gender_Height_Weight_Index.csv` to compute **Body Mass Index (BMI)**.

```python
import numpy as np
import pandas as pd

df = pd.read_csv("data/500_Person_Gender_Height_Weight_Index.csv")

heights_m = df["Height"] / 100  # cm → m
weights_kg = df["Weight"]       # already in kg

heights = heights_m.to_numpy()
weights = weights_kg.to_numpy()

bmi = weights / (heights ** 2)

print("Average BMI:", bmi.mean())
print("Min BMI:", bmi.min(), "Max BMI:", bmi.max())
```

Key ideas:

- We convert pandas `Series` into NumPy arrays using `.to_numpy()`.  
- We perform the BMI formula on the entire array at once (no explicit `for` loops).  
- Aggregations like `.mean()` and `.min()` are available directly on NumPy arrays.

---

### **Hands‑on practice**

1. **Array creation and indexing**
   - Create a 2D NumPy array of shape \(5 \times 4\) with values from 0 to 19:

     ```python
     import numpy as np

     a = np.arange(20).reshape(5, 4)
     print(a)
     ```

   - Extract:
     - The third row.  
     - The second column.  
     - The sub‑array containing rows 2–4 and columns 1–3.

2. **Random data simulation**
   - Generate 1,000 random heights from a normal distribution with mean 170 and standard deviation 10:

     ```python
     heights = np.random.normal(loc=170, scale=10, size=1000)
     print(heights.mean(), heights.std())
     ```

   - Compare the empirical mean and standard deviation with the parameters you used.  
   - Plot a histogram of these heights (you may use Matplotlib already if you like).

3. **Vectorised operations**
   - Using the BMI array from the guided example:

     ```python
     overweight_mask = bmi >= 25
     n_overweight = overweight_mask.sum()
     proportion_overweight = n_overweight / bmi.size
     print(n_overweight, proportion_overweight)
     ```

   - Compute how many individuals have BMI \(\ge 25\) and what proportion of the dataset they represent.  
   - Do this **without** any explicit Python `for` loops (only boolean masks and aggregations).

---

### **Next steps**

Proceed to **Module 3 – Data Visualisation with Matplotlib & Seaborn** to learn how to turn your numeric results into clear, informative plots.  
You can also explore the notebook `module-2-numpy-fundamentals/NumPy.ipynb` alongside this module for more examples.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 1 – Introduction to Data Analysis & Practicalities](../module-1-intro-data-analysis/readme.md)  
- Next: [Module 3 – Data Visualisation with Matplotlib & Seaborn](../module-3-data-visualisation/readme.md)

