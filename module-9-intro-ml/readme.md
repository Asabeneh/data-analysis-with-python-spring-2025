## **Module 9 – Introduction to Machine Learning**

This module provides a **practical introduction to machine learning (ML)** using Python and scikit‑learn. You will learn core concepts, algorithm families, and implement a complete classification example.

The main references for this module are `module-9-intro-ml/enhanced-ml-guide.md`, `module-9-intro-ml/introduction_ml.md`, and `module-9-intro-ml/introduction_ml.ipynb`.

---

### **Learning goals**

- Understand what machine learning is and where it is used.  
- Distinguish between **supervised**, **unsupervised**, and **reinforcement** learning.  
- Know common algorithms (linear/logistic regression, decision trees, random forests, k‑means).  
- Implement and evaluate a simple ML model end‑to‑end in Python.

---

### **Prerequisites**

- Modules 1–5 (data loading, cleaning, basic statistics, visualisation).  
- Comfort with Python functions, lists, and dictionaries.

---

### **Core concepts**

- Problem framing and data: features vs labels.  
- Types of ML:
  - **Supervised** (regression, classification).  
  - **Unsupervised** (clustering, dimensionality reduction).  
  - **Reinforcement** (learning via rewards).  
- Basic workflow:
  1. Define the problem.  
  2. Collect and clean data.  
  3. Split into train/validation/test sets.  
  4. Choose and train a model.  
  5. Evaluate and iterate.  
  6. Deploy and monitor (conceptually).

---

### **Guided example – Iris flower classification**

We use the classic **Iris** dataset (available via scikit‑learn) to build a classification model.

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix

iris = load_iris()
X = iris.data
y = iris.target

df = pd.DataFrame(X, columns=iris.feature_names)
df["species"] = pd.Categorical.from_codes(y, iris.target_names)

df.head()
```

Split, scale, train, and evaluate:

```python
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.3, random_state=42, stratify=y
)

scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)

model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(X_train_scaled, y_train)

y_pred = model.predict(X_test_scaled)
accuracy = accuracy_score(y_test, y_pred)
print(f"Accuracy: {accuracy:.3f}")
print(classification_report(y_test, y_pred, target_names=iris.target_names))
```

Visualise the confusion matrix and feature importance as in `module-9-intro-ml/enhanced-ml-guide.md`.

---

### **Hands‑on practice**

1. **Baseline models**
   - Replace `RandomForestClassifier` with:  
     - `LogisticRegression` (for linear decision boundaries).  
     - `KNeighborsClassifier`.  
   - Compare accuracy and classification reports.

2. **Train/test splits and metrics**
   - Vary the test size (e.g., 20%, 30%, 40%) and observe changes in accuracy.  
   - Add additional metrics such as confusion matrix heatmaps using Seaborn.

3. **Feature importance and selection**
   - Use the feature importances from the random forest to identify which features matter most.  
   - Try training a model using only the top 2 features and compare performance.

4. **Try another dataset (optional)**
   - Load a tabular dataset from `data/` or a public source (e.g., Kaggle).  
   - Frame a basic classification or regression task.  
   - Follow the same workflow (train/test split, model training, evaluation).

---

### **Next steps**

After this module, proceed to **Module 10 – Tools, Resources, and Capstone Projects** to see recommended tools for analysts and to work on full end‑to‑end projects that combine everything from data collection to modelling and communication.  
Continue using `module-9-intro-ml/enhanced-ml-guide.md` as a rich reference for deeper ML concepts and real‑world considerations.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 8 – SQL and Relational Databases for Analysts](../module-8-sql-relational-databases/readme.md)  
- Next: [Module 10 – Tools, Resources, and Capstone Projects](../module-10-tools-and-capstones/readme.md)

