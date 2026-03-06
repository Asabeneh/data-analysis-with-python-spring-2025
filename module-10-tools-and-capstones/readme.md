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

### **Assessment / review guidelines (optional)**

If you are teaching or being evaluated, projects can be reviewed on:

- **Code quality** – clarity, structure, and appropriate use of functions.  
- **Analysis depth** – thoughtful questions and evidence‑based conclusions.  
- **Visualisation** – clear, correctly labelled, and relevant plots.  
- **Communication** – concise summaries of key findings and limitations.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 9 – Introduction to Machine Learning](../module-9-intro-ml/readme.md)

