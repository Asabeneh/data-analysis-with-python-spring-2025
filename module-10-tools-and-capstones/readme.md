## **Module 10 – Tools, Resources, and Capstone Projects**

This module introduces essential **tools and resources** for data analysts and provides **capstone projects** that tie together everything from Modules 1–9.

It combines content from `module-10/tools_and_resources_for_data_analyst.md` and the larger projects previously described in this repository.

---

### **Part A – Essential tools and resources**

Adapted from `module-10/tools_and_resources_for_data_analyst.md`.

#### **Collaboration tools**

- Jira – Project tracking and issue management.  
- GitHub – Version control and collaborative development.  
- Trello – Visual project management with boards and cards.  
- Slack – Real‑time team messaging and communication.

#### **Code editors & platforms**

- Anaconda – Python/R distribution with many data science packages.  
- Google Colab – Cloud‑based Jupyter notebooks.  
- NotebookLM – AI‑powered note‑taking/coding assistant.  
- Visual Studio Code – Lightweight, powerful source code editor.

#### **Data analysis & visualisation tools**

- Microsoft Excel – Spreadsheet analysis.  
- Tableau – Interactive dashboards.  
- Power BI – Business analytics and reporting.  
- Orange – Visual data mining and machine learning.

#### **Core technologies & libraries**

- Python – General‑purpose language for data analysis.  
- NumPy – Numerical computing for arrays.  
- Pandas – Data manipulation and analysis.  
- Matplotlib & Seaborn – Visualisation.  
- SQL – Querying and managing relational databases.  
- R – Statistical computing and graphics.

#### **Big data & cloud platforms**

- Apache Spark – Distributed data processing.  
- AWS / GCP / Azure – Cloud platforms for scalable storage and analytics.

#### **Generative AI tools**

- DeepSeek, Grok, Claude, Gemini, Llama – Modern AI assistants that can help with code, analysis, and documentation.

#### **Learning resources**

- Kaggle – Datasets, competitions, and mini‑courses.  
- freeCodeCamp – Free coding tutorials and certifications.  
- Coursera, edX – University‑level courses in data science and analytics.

---

### **Part B – Capstone projects**

These capstones integrate skills from modules on pandas, visualisation, statistics, SQL, and machine learning.

#### **Project 1: Employee dataset analysis**

- **Objective**: Use Python and pandas to analyse the Kaggle [Employee Dataset](https://www.kaggle.com/datasets/tawfikelmetwally/employee-dataset) and derive actionable HR insights.  
- **Prerequisites**: Modules 1–5 (data analysis) and optionally 9 (ML) if you extend to predictive modelling.

**Requirements**

1. **Data preparation**
   - Load the CSV into pandas.  
   - Clean the dataset (handle missing values, duplicates, incorrect data types).  
   - Validate columns like `salary`, `age`, and `management` for consistency.

2. **Exploratory analysis**
   - Generate summary statistics (mean, median, distributions) for key numeric columns.  
   - Explore relationships between variables (e.g., `salary` vs. `education`, `management` vs. `environment` satisfaction).

3. **Visualisation**
   - Create at least three plots, such as:  
     - Boxplots for salary distribution by education level.  
     - Histograms for age or years‑at‑company.  
     - A heatmap for correlation across numeric columns.

4. **Key questions to answer**
   - Does higher education correlate with salary or job retention?  
   - Are there gender disparities in salary or promotion?  
   - What workplace factors (e.g., `environment`, `colleagues`) most impact employee satisfaction?

5. **Deliverable**
   - A Jupyter notebook with:
     - Clean, well‑organised code.  
     - Plots with titles and captions.  
     - A short written summary (5–10 bullet points) of your findings and recommendations.

---

#### **Project 2: Cat breed API to CSV and database**

- **Objective**: Fetch data from [The Cat API](https://api.thecatapi.com/v1/breeds), transform it, and store it both as a CSV and in a relational database, then analyse it.  
- **Prerequisites**: Modules 2–4 (NumPy, pandas), 3 (visualisation), and 8 (SQL / MySQL).

**Requirements**

1. **API data extraction**
   - Use `requests` to fetch breed data from `https://api.thecatapi.com/v1/breeds`.  
   - Convert the JSON response into a pandas `DataFrame`.

2. **Data transformation**
   - Map API fields to CSV headers:

     ```csv
     ID, Name, Origin, Description, Temperament, Life Span (years), Weight (kg), Image URL
     ```  

   - **Special cases**:  
     - Combine `temperament` into a comma‑separated string.  
     - Convert `weight` from imperial to metric if necessary.  
     - Extract the first image URL from the `image` object.

3. **Validation and storage**
   - Handle missing fields (e.g., default `Description` to `"N/A"`).  
   - Ensure numeric columns (`Life Span`, `Weight`) are stored as numbers.  
   - Save the transformed data as `cats.csv`.  
   - Create a `cats_db` database and a `cats` table in MySQL, then load the data into it.

4. **Analysis and visualisation**
   - Use pandas (and optionally SQL queries) to answer questions such as:  
     - Which origins have the most breeds?  
     - What is the average weight by origin?  
   - Create at least one or two plots (e.g., bar chart of breeds by origin, average weight by origin).

---

### **Recommended datasets for additional capstones**

- **Kaggle – NYC Taxi Trips or similar time‑series/tabular datasets**  
  Rich, real‑world data suitable for combining skills from time series, joins, and basic ML.  
  - [New York City Taxi Trip Duration](https://www.kaggle.com/c/nyc-taxi-trip-duration)

- **Kaggle – Retail sales / e‑commerce datasets**  
  Good for end‑to‑end projects involving cleaning, feature engineering, visualisation, and simple forecasting or recommendation tasks.  
  - [Online Retail dataset (UCI mirrored on Kaggle)](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci)

Consider defining your own capstone around one of these datasets, following the same structure as the employee and cat projects: data prep → EDA → visualisation → (optional) modelling → communication.

---

### **Assessment / review guidelines (optional)**

If you are teaching or being evaluated, projects can be reviewed on:

- **Code quality** – clarity, structure, and appropriate use of functions.  
- **Analysis depth** – thoughtful questions and evidence‑based conclusions.  
- **Visualisation** – clear, correctly labelled, and relevant plots.  
- **Communication** – concise summaries of key findings and limitations.

---

### **Part C – Job‑ready skills checklist**

To be competitive for junior data analyst / entry‑level data science roles, you should aim to be comfortable with:

- **Python for data**
  - NumPy arrays and vectorised operations.  
  - Pandas for loading, cleaning, joining, aggregating, and reshaping data.  
  - Matplotlib/Seaborn for clear, purposeful plots.

- **Statistics & experiments**
  - Descriptive statistics and distribution shapes.  
  - Basic inference: confidence intervals, simple hypothesis tests, and A/B testing logic.  
  - Understanding correlation vs. causation and common pitfalls.

- **SQL & data modelling**
  - Writing SELECT queries with filters, joins, aggregates, and subqueries.  
  - Understanding relational schemas, primary/foreign keys, and normalisation basics.

- **Workflow & reproducibility**
  - Using Git/GitHub for version control (clone, branch, commit, push, pull request).  
  - Organising projects with clear folder structures (`data/`, `notebooks/`, `src/`, `reports/`).  
  - Capturing dependencies (e.g. `requirements.txt` or `environment.yml`).

- **BI & communication**
  - Building at least one simple dashboard in Power BI or Tableau based on a project dataset.  
  - Writing short, audience‑appropriate summaries of findings (1–2 pages or slide decks).  
  - Presenting charts that directly support business questions.

- **ML foundations (for DS/ML‑leaning roles)**
  - End‑to‑end workflows with scikit‑learn: split → train → evaluate → iterate.  
  - Knowing when to use regression vs classification, simple model tuning, and basic model comparison.  
  - Understanding overfitting, regularisation at a high level, and evaluation metrics.

Use this checklist alongside the modules to identify which areas you already cover and which need extra practice or external resources.

---

### **Part D – Building a portfolio**

A strong portfolio ties everything together. Aim for **3–5 polished projects** that show variety and depth:

- **Project structure**
  - Clear `README.md` explaining the problem, data, approach, and key results.  
  - Clean notebooks (or scripts) with narrative, not just code dumps.  
  - Logical folder layout: `data/`, `notebooks/`, `src/`, `figures/`, `reports/`.

- **Project types to include**
  - At least **one descriptive/diagnostic analysis** (like the Employee project).  
  - At least **one ETL + SQL project** (like the Cat API → DB project).  
  - At least **one ML project** (e.g. classification on a real dataset).  
  - Optionally, **one dashboard project** (Power BI / Tableau / Looker).

- **Storytelling**
  - Start each project with 2–3 concrete questions.  
  - End with a short section: “Key Findings” and “Recommendations / Next Steps”.  
  - Include at least one visual that would make sense in a stakeholder meeting.

Host these projects on GitHub (or similar), and link to them from your CV and LinkedIn.

---

### **Part E – Interview and practical test prep**

Most data roles involve:

- **Technical screens** – short coding or SQL challenges.  
- **Take‑home assignments** – mini‑projects similar to your capstones.  
- **Behavioural/communication questions** – about how you work with stakeholders and handle ambiguity.

To prepare:

- Practise **whiteboard‑style** or notebook‑style pandas and SQL questions (filtering, grouping, joins).  
- Time‑box yourself doing small Kaggle problems or LeetCode‑style SQL exercises.  
- Be ready to walk through one of your portfolio projects in depth:
  - What was the goal?  
  - How did you clean and model the data?  
  - What trade‑offs did you make?  
  - What impact would your findings have on the business?

Treat this module as your **job‑readiness hub**: once you can comfortably check off most items in Parts C–E, you’re in a strong position to start applying for junior data roles.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 9 – Introduction to Machine Learning](../module-9-intro-ml/readme.md)

