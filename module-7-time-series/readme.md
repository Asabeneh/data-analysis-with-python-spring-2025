## **Module 7 – Time Series and Advanced Data Analysis**

This module introduces **time series analysis** and extends your pandas skills to work with data indexed by time. You will learn how to parse dates, resample, and visualise trends over time.

---

### **Learning goals**

- Load and parse dates into pandas `DatetimeIndex`.  
- Set and use a time index for slicing and resampling.  
- Compute rolling statistics (moving averages, rolling sums).  
- Apply joins and group operations in a time‑series context.

---

### **Prerequisites**

- Modules 3–6 (visualisation, pandas basics, joins).  
- Comfortable working with `DataFrame` indexes.

---

### **Core concepts**

- Time representations: timestamps, periods, and frequencies.  
- `pd.to_datetime` for parsing date strings.  
- Setting an index with `.set_index("date_column")`.  
- Resampling:
  - Downsampling (e.g., daily → weekly, monthly).  
  - Upsampling (e.g., monthly → daily, with interpolation or `NaN`).  
- Rolling windows:
  - Rolling mean, sum, min, max.  
- Combining time series with joins/merges.

Use the notebook `module-7-time-series/time-series-analysis.ipynb` as a companion for code‑along practice.

---

### **Guided example – Daily to monthly resampling**

Suppose you have daily sales data in `sales.csv`:

```python
import pandas as pd

df = pd.read_csv("data/sales.csv")  # example file name
df["date"] = pd.to_datetime(df["date"])
df = df.set_index("date").sort_index()

df.head()
```

Resample to monthly totals and moving averages:

```python
monthly = df["revenue"].resample("M").sum()
rolling_3m = monthly.rolling(window=3).mean()

monthly.head(), rolling_3m.head()
```

Visualise both series to see trends and smoothed patterns.

---

### **Hands‑on practice**

These exercises are designed to align with and extend the ideas in `module-7-time-series/time-series-analysis.ipynb`.

1. **Basic time index setup**
   - Load a time‑based dataset (for example, any CSV with a `date` column or your own created one).  
   - Convert the `date` column with `pd.to_datetime`.  
   - Set it as index and sort by date.  
   - Slice a specific year or month using `.loc["2023"]` or `.loc["2023-05"]`.

2. **Resampling and aggregation**
   - Resample your time series:
     - Daily → monthly (`"M"`) and compute total value per month.  
     - Daily → weekly (`"W"`) and compute average value per week.  
   - Plot the original daily series and the resampled series to compare noise vs. trend.

3. **Rolling statistics**
   - Compute 7‑day and 30‑day rolling means on a daily series.  
   - Plot both together to see how window length affects smoothness.  
   - Comment on how rolling averages can help interpret noisy data.

4. **Combining time series**
   - Create or load two time series, for example:
     - Web traffic per day.  
     - Conversion count per day.  
   - Align them on the date index (using `join` or `merge` on dates).  
   - Compute conversion rate and plot it over time.

---

### **Next steps**

After working through time series, continue to **Module 8 – SQL and Relational Databases for Analysts** to learn how to query data directly from relational databases like MySQL.  
You can also explore the notebook `module-7-time-series/join_with_simple_dataframes.ipynb` to reinforce your understanding of joins in combination with time‑based data.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 6 – Joining DataFrames with pandas](../module-6-joining-dataframes/readme.md)  
- Next: [Module 8 – SQL and Relational Databases for Analysts](../module-8-sql-relational-databases/readme.md)

