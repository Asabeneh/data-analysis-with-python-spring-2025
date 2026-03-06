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

### **Concepts in more depth**

#### Framing the problem

Before touching code, be explicit about:

- **Target** (label) – what are you trying to predict? (e.g. churn, price, default).  
- **Inputs** (features) – what information is available at prediction time?  
- **Granularity** – what is one row? (customer, transaction, session).  
- **Objective** – accuracy, profit, recall on a particular class, etc.

Good framing helps you choose between:

- **Regression** – predicting continuous values (price, demand, time).  
- **Classification** – predicting discrete labels (spam vs ham, churn vs not, class A/B/C).

#### Train/validation/test and overfitting

Models can **memorise** training data instead of learning patterns that generalise.  
To detect and control overfitting:

- Split data into **train** and **test** (and often a separate **validation** set or use cross‑validation).  
- Train on the train set, tune hyperparameters on validation, report performance on test **only once**.

Tell‑tale symptoms:

- Very high training accuracy, much lower test accuracy → overfitting.  
- Both low → underfitting (model too simple or features not informative).

#### Bias–variance trade‑off (intuitively)

- **High bias** – model is too simple, misses important patterns (underfitting).  
- **High variance** – model is too complex, captures noise as if it were signal (overfitting).

Simple models (like linear/logistic regression) have higher bias but lower variance.  
Flexible models (like deep trees, large neural nets) have lower bias but higher variance.

Regularisation, careful feature selection, and more data are standard tools to manage this trade‑off.

#### Evaluation metrics beyond accuracy

Accuracy alone can be misleading, especially with **imbalanced classes** (e.g. 99% non‑fraud, 1% fraud):

- **Precision** – of the items predicted positive, how many were actually positive?  
- **Recall** – of the actual positives, how many did we catch?  
- **F1 score** – harmonic mean of precision and recall; balances both.  
- **ROC AUC** – probability the model ranks a random positive higher than a random negative.

In practice:

- Use **confusion matrices** to understand errors by type.  
- Choose metrics that align with business costs (false positives vs false negatives).

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

### **Recommended datasets for further practice**

- **Kaggle – Titanic: Machine Learning from Disaster**  
  Very popular binary classification problem (survived vs not survived); perfect for trying multiple algorithms and practising evaluation metrics.  
  - [Titanic competition](https://www.kaggle.com/c/titanic)

- **UCI – Wine Quality and Breast Cancer datasets**  
  Classic tabular datasets for regression (wine quality) and binary classification (breast cancer); useful for comparing algorithms and feature importance.  
  - [Wine Quality](https://archive.ics.uci.edu/ml/datasets/wine+quality)  
  - [Breast Cancer Wisconsin](https://archive.ics.uci.edu/ml/datasets/breast+cancer+wisconsin+(diagnostic))

These datasets pair well with the train/test split, model training, and evaluation pipeline demonstrated in this module.

---

### **Next steps**

After this module, proceed to **Module 10 – Tools, Resources, and Capstone Projects** to see recommended tools for analysts and to work on full end‑to‑end projects that combine everything from data collection to modelling and communication.  
Continue using `module-9-intro-ml/enhanced-ml-guide.md` as a rich reference for deeper ML concepts and real‑world considerations.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 8 – SQL and Relational Databases for Analysts](../module-8-sql-relational-databases/readme.md)  
- Next: [Module 10 – Tools, Resources, and Capstone Projects](../module-10-tools-and-capstones/readme.md)

