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

### **Concepts in more depth**

#### Why NumPy instead of plain Python lists?

Python lists are flexible, but they are **not optimised for numerical computing**:

- A list like `[1, 2, 3]` stores references to Python integer objects; operations like `sum()` loop in Python space.  
- A NumPy array stores numbers in a **contiguous block of memory** with a fixed data type (e.g. 64‑bit floats).  
- Vectorised operations (e.g. `a + b`, `a * 2`) are computed in optimised C code, often using CPU vector instructions.

Benefits:

- **Speed** – operations on large arrays are much faster than pure‑Python loops.  
- **Expressiveness** – formulas look like maths (`bmi = weight / height**2`) instead of nested loops.  
- **Interoperability** – many libraries (pandas, SciPy, scikit‑learn) expect or return NumPy arrays.

#### Array shapes and ranks

Every NumPy array has:

- A **shape** – a tuple showing its dimensions, e.g. `(5,)`, `(3, 4)`, `(10, 3, 32, 32)`.  
- A **rank** – the number of dimensions (1D, 2D, 3D, …).

Examples:

- Heights of 5 people: shape `(5,)` – a 1D array.  
- A 3×4 matrix: shape `(3, 4)` – 2D array (rows × columns).  
- A batch of 10 RGB images 32×32: shape `(10, 3, 32, 32)` – 4D array.

Understanding shapes is crucial for:

- Debugging broadcasting issues.  
- Making sure aggregations happen along the intended axis (`axis=0` vs `axis=1`).  
- Preparing data for ML models (e.g. `(n_samples, n_features)`).

#### Broadcasting explained

Broadcasting is NumPy’s set of rules for combining arrays of **different but compatible shapes**.

Examples:

- Add a scalar to an array:  
  - `a` has shape `(3,)`, `b` is a scalar → result shape `(3,)`.  
- Add a 1D array to each row of a 2D array:  
  - `A` has shape `(4, 3)`, `b` has shape `(3,)` → `b` is “stretched” to `(1, 3)` then `(4, 3)`.

Two dimensions are compatible when:

- They are equal, or  
- One of them is 1.

If you get a `ValueError: operands could not be broadcast together`, inspect `.shape` for each array and check against these rules.

#### Boolean masks and advanced indexing

Boolean arrays are a powerful way to **filter** data without loops:

```python
heights = np.array([160, 172, 181, 155])
mask = heights > 170          # array([False, True, True, False])
tall = heights[mask]          # array([172, 181])
```

You can combine masks with logical operations:

- `(heights > 170) & (heights < 180)`  
- `(bmi >= 25) & (gender == "Male")`

This style of indexing is essential for writing **readable and efficient** data analysis code.

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

### **Recommended datasets for further practice**

- **Kaggle – 500 Person Gender Height Weight Dataset**  
  The same dataset used here, available directly from Kaggle if you want to experiment independently.  
  - [500 Person Gender Height Weight Dataset](https://www.kaggle.com/datasets/yersever/500-person-gender-height-weight-bodymassindex)

- **UCI – Wine Quality dataset**  
  Numeric measurements for red and white wines; ideal for practising vectorised operations, aggregations, and simple simulations.  
  - [Wine Quality dataset](https://archive.ics.uci.edu/ml/datasets/wine+quality)

Download and place these CSVs under `data/` (or a similar folder) and try re‑implementing summaries and simulations using pure NumPy arrays.

---

### **Next steps**

Proceed to **Module 3 – Data Visualisation with Matplotlib & Seaborn** to learn how to turn your numeric results into clear, informative plots.  
You can also explore the notebook `module-2-numpy-fundamentals/NumPy.ipynb` alongside this module for more examples.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 1 – Introduction to Data Analysis & Practicalities](../module-1-intro-data-analysis/readme.md)  
- Next: [Module 3 – Data Visualisation with Matplotlib & Seaborn](../module-3-data-visualisation/readme.md)

