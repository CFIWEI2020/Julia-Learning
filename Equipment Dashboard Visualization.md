# Equipment Dashboard Visualization

## Overview

This project extends the Equipment Health Dashboard developed in Day12.

The goal is to visualize equipment operating conditions and health status using charts and graphs.

The dashboard provides a simple view of:

- Temperature Distribution
- Pressure Distribution
- Equipment Health Status
- Equipment Temperature Comparison
- Equipment Pressure Comparison

---

## Dataset

Input file:

equipment_data.csv

Columns:

| Column | Description |
|----------|----------|
| equipment_id | Equipment ID |
| temperature | Equipment Temperature |
| pressure | Equipment Pressure |
| flow_rate | Equipment Flow Rate |

---

## Equipment Status Rules

### Critical

- Temperature > 100
OR
- Pressure > 2.3

### Warning

- Temperature > 85
OR
- Pressure > 1.8

### Normal

All other conditions.

---

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl
- Plots.jl

---

## Dashboard Charts

### 1. Temperature Distribution

Histogram showing equipment temperature distribution.

Output:

temperature_distribution.png

---

### 2. Pressure Distribution

Histogram showing equipment pressure distribution.

Output:

pressure_distribution.png

---

### 3. Equipment Status Summary

Bar chart showing the number of:

- Normal
- Warning
- Critical

equipment.

Output:

equipment_status.png

---

### 4. Equipment Temperature Comparison

Bar chart comparing temperatures across equipment.

Output:

equipment_temperature.png

---

### 5. Equipment Pressure Comparison

Bar chart comparing pressure values across equipment.

Output:

equipment_pressure.png

---

## Generated Files

```text
temperature_distribution.png
pressure_distribution.png
equipment_status.png
equipment_temperature.png
equipment_pressure.png

Julia Learning Project – Semiconductor Equipment Analytics
---

# Learning_Log_Day13.md

```markdown
# Day13 Learning Log

Date: 2026-06-04

## Project

Equipment Dashboard Visualization

---

## Goal

Visualize equipment operating conditions and health status using Julia plotting tools.

The objective is to transform raw equipment data into graphical insights.

---

## What I Learned

### Data Visualization with Plots.jl

Learned how to create charts using:

```julia
histogram()
bar()

Histogram

Used histogram charts to analyze:

* Temperature Distribution
* Pressure Distribution

Example:

histogram(
    df.temperature,
    bins = 5
)

Key takeaway:

Histograms help identify data distribution patterns and potential abnormal ranges.

Bar Chart

Used bar charts to compare:

* Equipment Status Counts
* Equipment Temperature
* Equipment Pressure

Example:

bar(
    df.equipment_id,
    df.temperature
)

Saving Figures

Learned how to export charts as image files.

Example:
savefig(
    p1,
    "temperature_distribution.png"
)

Generated:

* temperature_distribution.png
* pressure_distribution.png
* equipment_status.png
* equipment_temperature.png
* equipment_pressure.png

Data Aggregation

Used:

groupby()
combine()

to summarize equipment status counts.

Example:

status_count = combine(
    groupby(df, :status),
    nrow => :count
)

Challenges

Challenge 1

Used:

status_count

before creating it.

Result:

Program error.

Solution:

Create:
status_count
before generating charts.

Challenge 2

Made several column name typos:

Examples:
euqipment_id
equipment
preuusre

Solution:

Used:
names(df)
to verify actual column names.

Challenge 3

Incorrect image extension.

Used:
.pnp
Fixed by correcting the file extension.

Semiconductor Analytics Relevance

Visualization is widely used in semiconductor manufacturing for:

* Equipment Monitoring
* Process Control
* SPC Charts
* Yield Analysis
* Predictive Maintenance

This project simulates a simplified equipment monitoring dashboard.

⸻

Results

Created 5 visualization outputs:

1. Temperature Distribution
2. Pressure Distribution
3. Equipment Status
4. Equipment Temperature
5. Equipment Pressure

⸻

Next Step

Day14

Equipment Trend Analysis

Topics:

* Time Series Data
* Trend Visualization
* Moving Average
* Early Warning Detection
* Predictive Maintenance Basics

---

### GitHub 結構

```text
Day13_Equipment_Dashboard_Visualization/
│
├── equipment_data.csv
├── dashboard.jl
├── README.md
├── Learning_Log_Day13.md
│
├── temperature_distribution.png
├── pressure_distribution.png
├── equipment_status.png
├── equipment_temperature.png
└── equipment_pressure.png

