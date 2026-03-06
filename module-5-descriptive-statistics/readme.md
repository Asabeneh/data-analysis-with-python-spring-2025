## **Module 5 – Descriptive Statistics**

This module teaches you how to use **descriptive statistics** to summarise and interpret numerical data, and how to compute these statistics using pandas.

---

### **Learning goals**

- Compute measures of central tendency (mean, median, mode).  
- Compute measures of spread (variance, standard deviation, IQR).  
- Recognise distribution shapes (symmetry, skewness, outliers).  
- Use group‑wise summaries to compare sub‑populations.

---

### **Prerequisites**

- Module 2 (basic numeric understanding) and Module 4 (pandas basics).  
- Comfort with reading simple tables and plots.

---

### **Topics**

- Central tendency: mean, median, mode.  
- Spread: variance, standard deviation, interquartile range (IQR).  
- Distribution shape: skewness, kurtosis (conceptually).  
- Describing data overall vs. by groups.  
- Basic correlation between two numeric variables.

---

### **Guided example – Health dataset**

We will use `data/500_Person_Gender_Height_Weight_Index.csv` to compute basic summaries.

```python
import pandas as pd

df = pd.read_csv("data/500_Person_Gender_Height_Weight_Index.csv")

df["Height"].describe()
df["Weight"].describe()

df.groupby("Gender")[["Height", "Weight"]].agg(["mean", "std", "min", "max"])
```

Optionally, compute correlation between height and weight:

```python
df[["Height", "Weight"]].corr()
```

Questions:

- How different are average heights and weights between genders?  
- Does the correlation matrix support the idea that taller people tend to be heavier?

---

### **Hands‑on practice**

1. **Summaries by group**
   - Reuse the BMI logic from Module 2 to compute BMI for each person.  
   - Add BMI as a new column in `df`.  
   - For each gender, compute mean, median, and standard deviation of BMI.  
   - Interpret the differences in a short paragraph.

2. **Outlier exploration**
   - Use the IQR rule to flag very tall or very heavy individuals:

     ```python
     Q1 = df["Height"].quantile(0.25)
     Q3 = df["Height"].quantile(0.75)
     IQR = Q3 - Q1

     is_outlier_height = (df["Height"] < Q1 - 1.5 * IQR) | (df["Height"] > Q3 + 1.5 * IQR)
     outliers_height = df[is_outlier_height]
     ```

   - What percentage of the dataset do these outliers represent?  
   - Repeat for `Weight` and compare.

3. **Correlation and scatter**
   - Create a scatter plot of height vs. weight, colour‑coded by the health index column (if present) or by gender:

     ```python
     import matplotlib.pyplot as plt
     import seaborn as sns

     plt.figure(figsize=(6, 6))
     sns.scatterplot(data=df, x="Height", y="Weight", hue="Gender")
     plt.title("Height vs. Weight")
     plt.show()
     ```

   - Compute the correlation coefficient and compare it to the visual impression from the scatter plot.

---

### **Recommended datasets for further practice**

- **Kaggle – 500 Person Gender Height Weight Dataset**  
  Contains height, weight, gender, and BMI index; perfect for computing descriptive statistics, exploring group differences, and identifying outliers.  
  - [500 Person Gender Height Weight Dataset](https://www.kaggle.com/datasets/yersever/500-person-gender-height-weight-bodymassindex)

- **Kaggle – Medical Cost Personal Datasets**  
  Insurance charges with demographic and health‑related variables (age, BMI, smoking, etc.); excellent for exploring distributions, relationships, and simple correlations.  
  - [Medical Cost Personal Dataset](https://www.kaggle.com/datasets/mirichoi0218/insurance)

Use these datasets to deepen your practice with `.describe()`, group‑wise summaries, outlier rules, and correlation analyses.

---

### **Next steps**

After completing this module, you are ready to tackle the **Mini‑projects / Capstone exercises** in Module 6, where you will apply your skills end‑to‑end on larger datasets.  
You can also explore the `module-5-descriptive-statistics` notebooks and exercises in this repository for additional practice with descriptive statistics.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 4 – Pandas for Data Manipulation](../module-4-pandas-manipulation/readme.md)  
- Next: [Module 6 – Joining DataFrames with pandas](../module-6-joining-dataframes/readme.md)

