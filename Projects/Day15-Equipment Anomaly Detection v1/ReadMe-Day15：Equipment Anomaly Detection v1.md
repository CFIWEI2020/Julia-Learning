# Day15 - Equipment Anomaly Detection

## Overview

This project focuses on detecting abnormal equipment behavior using temperature data.

The objective is to identify equipment operating outside the normal range before failures occur.

This version uses a baseline-based rule as the first step toward predictive maintenance analysis.

## Dataset

Input file:

`equipment_anomaly.csv`

| Column | Description |
|--------|-------------|
| `equipment_id` | Equipment ID |
| `temperature` | Equipment temperature |

## Objectives

- Calculate equipment baseline temperature
- Detect abnormal temperature readings
- Classify equipment as Normal or Anomaly
- Identify equipment requiring attention

## Analysis Workflow

1. Load equipment temperature data.
2. Calculate the average temperature as the baseline.
3. Detect abnormal readings using a threshold rule.
4. Add a `status` column to the DataFrame.
5. Filter anomalous equipment records.
6. Generate a bar chart for review.

## Anomaly Rule

| Status | Rule |
|--------|------|
| Anomaly | Temperature > average temperature + 20 |
| Normal | All other conditions |

## Results

| Equipment ID | Temperature | Status |
|--------------|------------:|--------|
| EQ001 | 75 | Normal |
| EQ002 | 78 | Normal |
| EQ003 | 80 | Normal |
| EQ004 | 82 | Normal |
| EQ005 | 140 | Anomaly |

## Generated Files

- `equipment_anomaly.csv`
- `equipment_anomaly.png`
- `Day15:Equipment Anomaly Detection v1.jl`
- `Learning_Log_Day15.md`
- `ReadMe-Day15:Equipment Anomaly Detection v1.md`

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl
- Statistics.jl
- Plots.jl

## Semiconductor Relevance

Anomaly detection is widely used in:

- Equipment Monitoring
- Predictive Maintenance
- Fault Detection
- Smart Manufacturing
- Semiconductor Process Control

## Author

Wei Wang

Julia Learning Project - Semiconductor Equipment Analytics
