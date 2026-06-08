# Equipment Trend Analysis

## Overview

This project focuses on monitoring equipment temperature trends over time.

Instead of analyzing a single data point, trend analysis helps identify whether equipment conditions are improving or deteriorating.

This approach is commonly used in semiconductor manufacturing for equipment monitoring and predictive maintenance.

---

## Dataset

Input file:

equipment_trend.csv

### Columns

|    Column    | Description          |
|--------------|----------------------|
|     date     | Measurement Date     |
| equipment_id | Equipment ID         |
| temperature  | Equipment Temperature|

---

## Objectives

- Monitor equipment temperature trends
- Identify abnormal temperature increases
- Generate warning status for high temperatures
- Visualize equipment behavior over time

---

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl
- Statistics.jl
- Plots.jl

---

## Analysis Workflow

### 1. Load CSV Data

Read equipment trend data into a DataFrame.

### 2. Visualize Temperature Trend

Create a line chart showing temperature changes over time.

Output:

temperature_trend.png

### 3. Statistical Analysis

Calculate:

- Maximum Temperature
- Average Temperature

### 4. Trend Status Detection

Rules:

#### Warning

Temperature ≥ 90

#### Normal

Temperature < 90

### 5. Filter Warning Records

Identify dates where equipment temperature exceeds the warning threshold.

---

## Results

### Maximum Temperature

92

### Average Temperature

82.0

### Warning Record

| Date       | Temperature | Status |
|------------|-------------|--------|
| 2026-06-05 |      92     | Warning|

---

## Generated Files

equipment_trend.csv
temperature_trend.png
Day14-Equipment-Trend-Analysis.jl
Learning_Log_Day14.md
README.md

---

## Semiconductor Relevance

Trend analysis is widely used for:

- Equipment Monitoring
- Process Stability Analysis
- SPC Monitoring
- Predictive Maintenance
- Early Fault Detection

---
