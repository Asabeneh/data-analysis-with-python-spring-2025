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

### **Setting up your environment**

If you do not already have a Python data analysis environment, follow these steps (Windows / macOS / Linux):

1. **Install Python 3.9+**  
   - Download from `https://www.python.org/downloads/`.  
   - On Windows, during installation, check **“Add Python to PATH”**.

2. **Install a code editor or notebook environment**  
   - Recommended options:  
     - **VS Code** – general‑purpose editor with Python and Jupyter support.  
     - **JupyterLab** / **Anaconda** – notebook‑first workflows.  
     - **Google Colab** – runs in the browser, no local install needed.

3. **Create a virtual environment (recommended for local work)**  
   From a terminal in the project root:

   ```bash
   python -m venv .venv
   # Activate (Windows PowerShell)
   .venv\Scripts\Activate.ps1
   # or (bash on macOS/Linux)
   source .venv/bin/activate
   ```

4. **Install core libraries**  
   Inside the activated environment:

   ```bash
   pip install numpy pandas matplotlib seaborn jupyter
   ```

5. **Open the project in your tool of choice**  
   - In VS Code, open this folder and use the **Jupyter** extension to run notebooks.  
   - In JupyterLab, run `jupyter lab` from the terminal in this folder.

Once this is set up, you can open `module-1-intro-data-analysis/data_analysis_libs.ipynb` (or any other notebook) and run the cells alongside this `readme.md`.

---

### **Topics**

- What is data analysis? (descriptive, diagnostic, predictive).  
- Installing Python libraries (`pip`, `conda`).  
- Data types: structured, semi‑structured, unstructured.  
- Common dataset formats: `.txt`, `.csv`, `.tsv`, `.json`, `.xml`, `.xlsx`.  
- Ethics in data handling (privacy, anonymisation, bias).  
- The data workflow: **collect → clean → explore → model → communicate**.

---

### **Concepts in more depth**

#### What is data analysis, really?

At a high level, data analysis is about **answering questions with evidence**.  
You typically move through three flavours of questions:

- **Descriptive** – What is happening?  
  - Examples: What is the average order value? How many users visited last week?  
- **Diagnostic** – Why is it happening?  
  - Examples: Why did revenue drop last month? Which segments churn more?  
- **Predictive** – What is likely to happen next?  
  - Examples: Will this customer churn? How many sales will we have next quarter?

A good analyst is explicit about **which type of question** they are answering, and chooses tools accordingly (summary tables, visualisations, or predictive models).

#### Data types and file formats

When you work on real problems, you will encounter three broad categories of data:

- **Structured data** – Fits nicely into tables with rows and columns.  
  - Examples: CSV exports from a CRM, SQL tables, Excel sheets.  
- **Semi‑structured data** – Has a consistent structure but not fixed columns.  
  - Examples: JSON from web APIs, log files, event streams.  
- **Unstructured data** – Free‑form content.  
  - Examples: raw text, PDFs, images, audio.

Your job as an analyst is often to **turn semi‑structured and unstructured data into structured form** so that tools like pandas and SQL can work with it.

Common file formats you will see:

- `.csv`, `.tsv` – Plain text tables, excellent for most analytics tasks.  
- `.xlsx` – Excel workbooks; convenient for business users but less ideal for version control.  
- `.json`, `.xml` – Hierarchical or key–value structures, common for APIs and logs.  
- `.parquet`, `.feather` – Columnar formats optimised for big‑data tooling (Spark, cloud warehouses).

#### The data analysis workflow

Most real projects follow a loop like this:

1. **Collect** – Identify data sources (databases, APIs, files, logs) and extract data.  
2. **Clean** – Fix types, handle missing values, remove duplicates, correct obvious errors.  
3. **Explore** – Use summary statistics and visualisations to understand distributions and relationships.  
4. **Model** – (Optional) Build statistical or ML models to make predictions or quantify effects.  
5. **Communicate** – Turn findings into slides, reports, dashboards, or notebooks that answer the original questions.

The tools in this course (NumPy, pandas, Matplotlib, SQL, ML libraries) fit into different parts of this workflow. In this first module we focus on **Collect + initial Clean + basic Explore**.

#### Ethics and responsible analysis

Even small classroom projects are good opportunities to practice **responsible data handling**:

- **Privacy** – Avoid sharing raw personal identifiers (names, emails, phone numbers). Prefer anonymised or synthetic data when teaching or demoing.  
- **Consent & purpose** – Understand why the data was collected and whether your use is aligned with that purpose.  
- **Bias** – Ask whether the dataset systematically over‑ or under‑represents groups (by gender, geography, income, etc.). Be cautious when drawing general conclusions from biased data.  
- **Transparency** – Document your assumptions, cleaning steps, and limitations so others can review or reproduce your work.

As you move into later modules (statistics and ML), these principles become even more important.

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

### **Mini‑project – Explore a new dataset end‑to‑end**

Pick a small, publicly available dataset (for example one of the recommended ones below, or any CSV from `data/`), and work through the full mini‑workflow:

1. **Question**  
   - Write down 2–3 questions you want to answer with the data (e.g. “Which students are at risk of failing?”, “How do heights differ by gender?”).

2. **Load and inspect**  
   - Load the CSV into a pandas `DataFrame`.  
   - Inspect shape, column names, and a few rows.  
   - Check data types and obvious missing values.

3. **Simple cleaning**  
   - Fix any obviously wrong types (e.g. numeric columns stored as strings).  
   - Decide how to handle missing values for this simple exploration (drop vs fill with a reasonable default).

4. **Basic exploration**  
   - Compute summary statistics for key numeric columns.  
   - Do at least one simple filter (e.g. “rows where score < 50”).  
   - Create at least one simple chart (histogram or bar plot) to visualise an interesting variable.

5. **Short write‑up**  
   - In markdown cells, answer your initial questions in 5–8 sentences.  
   - Note any limitations of the data or analysis (e.g. small sample size, missing context).

This mini‑project prepares you for the deeper tools introduced in later modules by reinforcing the idea that analysis is a **full loop from question to communication**, even when you only use very simple techniques.

---

### **Recommended datasets for further practice**

- **Kaggle – Titanic: Machine Learning from Disaster**  
  A classic tabular dataset with passenger information (age, sex, class, fare, etc.) and survival labels – great for exploration and basic cleaning.  
  - [Titanic dataset on Kaggle](https://www.kaggle.com/c/titanic)

- **UCI Machine Learning Repository – Iris dataset**  
  Small, clean dataset with flower measurements; ideal for simple exploration and plotting.  
  - [Iris dataset description](https://archive.ics.uci.edu/ml/datasets/iris)

You can download any of these as CSV, place them in the `data/` folder, and repeat the loading and basic exploration steps from this module.

---

### **Next steps**

Continue to **Module 2 – NumPy Fundamentals** to learn how to perform fast numerical computations on arrays, which you will reuse in later modules.  
You can also explore the notebook `module-1-intro-data-analysis/data_analysis_libs.ipynb` alongside this module.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Next: [Module 2 – NumPy Fundamentals](../module-2-numpy-fundamentals/readme.md)

