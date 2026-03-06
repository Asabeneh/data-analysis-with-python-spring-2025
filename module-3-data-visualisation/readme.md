## **Module 3 – Data Visualisation with Matplotlib & Seaborn**

This module teaches you how to create clear, publication‑quality plots using **Matplotlib** and **Seaborn**, so you can communicate your findings effectively.

---

### **Learning goals**

- Create basic plots (line, bar, histogram, scatter).  
- Customise plots with titles, labels, legends, and colours.  
- Use Seaborn for higher‑level statistical visualisations.  
- Interpret plots and connect them back to data questions.

---

### **Prerequisites**

- Module 1 (loading and inspecting datasets with pandas).  
- Module 2 (basic understanding of numeric arrays is helpful but not mandatory).

---

### **Topics**

- Matplotlib figure and axes concepts.  
- Plot types:
  - Histograms for distributions.
  - Scatter plots for relationships.  
  - Bar charts for categorical comparisons.  
- Customisation:
  - Titles, axis labels, legends.  
  - Figure size and style.  
- Seaborn:
  - Histogram / density plots with `histplot`.  
  - Boxplots and violin plots.  
  - Simple multi‑panel (subplot) layouts.

---

### **Guided example – Visualising grades**

We will use `data/grades.csv` to explore exam score distributions.

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv("data/grades.csv")

plt.figure(figsize=(8, 4))
sns.histplot(df["exam_score"], bins=20, kde=True)
plt.title("Distribution of Exam Scores")
plt.xlabel("Score")
plt.ylabel("Count")
plt.show()
```

Next, compare scores by group:

```python
plt.figure(figsize=(6, 4))
sns.boxplot(data=df, x="group", y="exam_score")
plt.title("Exam Scores by Group")
plt.show()
```

Discuss:

- Are there groups with noticeably higher or lower scores?  
- Are there many outliers (points far from the box in the boxplot)?  
- Is the score distribution symmetric or skewed?

---

### **Hands‑on practice**

1. **Histogram practice**
   - Using `data/500_Person_Gender_Height_Weight_Index.csv`, plot a histogram of heights:

     ```python
     import pandas as pd
     import matplotlib.pyplot as plt
     import seaborn as sns

     df = pd.read_csv("data/500_Person_Gender_Height_Weight_Index.csv")

     plt.figure(figsize=(8, 4))
     sns.histplot(df["Height"], bins=20, kde=True)
     plt.title("Height distribution")
     plt.xlabel("Height (cm)")
     plt.ylabel("Count")
     plt.show()
     ```

   - Add vertical lines for mean and median height and comment on any differences.

2. **Scatter plot**
   - With the same dataset, create a scatter plot of height vs. weight:

     ```python
     plt.figure(figsize=(6, 6))
     sns.scatterplot(data=df, x="Height", y="Weight", hue="Gender")
     plt.title("Height vs. Weight by Gender")
     plt.show()
     ```

   - In a markdown cell, describe any patterns you see (e.g., linear relationship, clusters by gender).

3. **Subplots**
   - Create a 1×2 subplot:

     ```python
     fig, axes = plt.subplots(1, 2, figsize=(10, 4), sharey=True)

     sns.histplot(df[df["Gender"] == "Male"]["Weight"], bins=15, ax=axes[0], color="steelblue")
     axes[0].set_title("Male weight distribution")

     sns.histplot(df[df["Gender"] == "Female"]["Weight"], bins=15, ax=axes[1], color="salmon")
     axes[1].set_title("Female weight distribution")

     plt.tight_layout()
     plt.show()
     ```

   - Compare the two distributions visually and write a short comment on differences.

---

### **Next steps**

Proceed to **Module 4 – Pandas for Data Manipulation** to learn how to clean and transform datasets before visualising them.  
You can also explore the notebooks `module-3/pandas.ipynb`, `module-3/exercises.ipynb`, and any other visualisation‑related notebooks under `module-3/` for additional plotting practice.

