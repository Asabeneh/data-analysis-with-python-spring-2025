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

---

### **Concepts in more depth**

#### Time indexes and time zones

Time series analysis almost always benefits from a proper **time index**:

- Convert date/time strings once with `pd.to_datetime`.  
- Set the index to this datetime column and sort it.  
- Use label‑based slicing (`.loc["2023"]`, `.loc["2023-05"]`) for very readable subsetting.

In real‑world data, be mindful of:

- **Time zones** – logs from different systems may use different zones; convert to a common one (often UTC).  
- **Granularity** – decide if you care about days, hours, minutes, etc. and normalise accordingly.

#### Trend, seasonality, and noise

Most time series can be thought of as:

- **Trend** – long‑term increase or decrease.  
- **Seasonality** – repeating patterns (daily, weekly, yearly).  
- **Noise** – random fluctuations.

Rolling averages and resampling help separate these components:

- Daily data → weekly/monthly sums or means to reveal trend and seasonality.  
- Rolling windows to smooth out short‑term noise.

Understanding these components is critical before you attempt any forecasting.

#### Resampling pitfalls

When resampling, always be explicit about **how** you aggregate:

- Use `.sum()` for quantities that accumulate over time (e.g. sales, counts).  
- Use `.mean()` for quantities that make sense as averages (e.g. temperature, conversion rate).  
- Be careful with missing periods – gaps can distort averages and rolling windows.

Also watch alignment:

- `"M"` usually labels periods at month‑end; `"MS"` labels at month‑start.  
- Misinterpreting labels can lead to confusing charts or incorrect joins with other time series.

#### Joining multiple time series

When combining different time series (e.g. traffic and conversions):

- Decide on a **common frequency** (daily, weekly).  
- Resample each series to that frequency.  
- Join on the datetime index using `.join` or `merge` on a date column.

This ensures comparability and avoids subtle misalignment (e.g. comparing weekly sums to daily counts).

---

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

### **Recommended datasets for further practice**

- **Airline Passengers dataset (Kaggle / many sources)**  
  Monthly total passengers over years; classic example for resampling, trend analysis, and rolling averages.  
  - [International Airline Passengers dataset](https://www.kaggle.com/datasets/rakannimer/air-passengers)

- **Kaggle – Daily Temperature Time Series**  
  Daily temperatures across years; great for practising daily → monthly resampling, rolling windows, and seasonal patterns.  
  - [Daily minimum temperatures dataset](https://www.kaggle.com/datasets/jbrownlee/daily-min-temperatures)

Download these datasets and apply the time‑indexing, resampling, and rolling techniques demonstrated in this module.

---

### **Next steps**

After working through time series, continue to **Module 8 – SQL and Relational Databases for Analysts** to learn how to query data directly from relational databases like MySQL.  
You can also explore the notebook `module-7-time-series/join_with_simple_dataframes.ipynb` to reinforce your understanding of joins in combination with time‑based data.

---

### **Navigation**

- Back to [Course overview](../readme.md)  
- Previous: [Module 6 – Joining DataFrames with pandas](../module-6-joining-dataframes/readme.md)  
- Next: [Module 8 – SQL and Relational Databases for Analysts](../module-8-sql-relational-databases/readme.md)

