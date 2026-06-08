# Equipment Anomaly Detection

## Overview

This project focuses on detecting abnormal equipment behavior using temperature data.

Anomaly detection is a key technique used in equipment monitoring and predictive maintenance.

The goal is to identify equipment operating outside normal conditions before failures occur.

---

## Dataset

Input file:

equipment_anomaly.csv

### Columns

|    Column    |      Description     |
|--------------|----------------------|
| equipment_id |     Equipment ID     |
| temperature  | Equipment Temperature|

---

## Objectives

- Calculate baseline temperature
- Detect abnormal equipment behavior
- Classify equipment status
- Identify anomalous equipment

---

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl
- Statistics.jl
- Plots.jl

---

## Analysis Workflow

### 1. Load Equipment Data

Read CSV data into a DataFrame.

### 2. Calculate Baseline

Calculate average temperature:

avg_temp = mean(df.temperature)

---

### 3. Detect Anomalies

Rule:

Temperature > Average Temperature + 20

Status:

- Normal
- Anomaly

---

### 4. Generate Status Column

Create:

df.status

to store anomaly results.

---

### 5. Filter Abnormal Equipment

Use:

filter()

to identify anomalous equipment.

---

### 6. Visualize Results

Generate:

equipment_anomaly.png

---

## Results

| Equipment ID | Temperature |  Status  |
|--------------|------------:|----------|
|    EQ001     |     75      |  Normal  |
|    EQ002     |     78      |  Normal  |
|    EQ003     |     80      |  Normal  |
|    EQ004     |     82      |  Normal  |
|    EQ005     |     140     |  Anomaly |

---

## Generated Files

equipment_anomaly.csv
equipment_anomaly.png
Day15-Equipment-Anomaly-Detection.jl
Learning_Log_Day15.md
README.md

---

## Semiconductor Relevance

Anomaly detection is commonly used in:

- Equipment Monitoring
- Predictive Maintenance
- Fault Detection
- Smart Manufacturing
- Semiconductor Process Control
  