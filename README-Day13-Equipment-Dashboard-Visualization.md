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

| Column       | Description           |
|--------------|-----------------------|
| equipment_id | Equipment ID          |
| temperature  | Equipment Temperature |
| pressure     | Equipment Pressure    |
| flow_rate    | Equipment Flow Rate   |

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

temperature_distribution.png
pressure_distribution.png
equipment_status.png
equipment_temperature.png
equipment_pressure.png

Skills Demonstrated

* Data Processing with DataFrames
- Equipment Health Classification
* Statistical Aggregation
* Data Visualization
* Dashboard Development