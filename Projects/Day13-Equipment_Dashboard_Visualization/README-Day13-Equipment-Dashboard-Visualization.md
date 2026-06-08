# Day13 - Equipment Dashboard Visualization

## Overview

This project extends the Day12 Equipment Health Dashboard by converting equipment operating data into dashboard-style charts.

The objective is to make equipment condition easier to review through visual summaries instead of reading raw table values only.

## Dataset

Input files:

- `data/equipment_data.csv`
- `data/equipment.csv`

Main columns:

| Column | Description |
|--------|-------------|
| `equipment_id` | Equipment ID |
| `temperature` | Equipment temperature |
| `pressure` | Equipment pressure |
| `flow_rate` | Equipment flow rate |

## Objectives

- Load equipment sensor data from CSV files
- Classify equipment health status
- Summarize status counts with DataFrames.jl
- Generate dashboard charts with Plots.jl
- Export chart images for reporting

## Equipment Status Rules

| Status | Rule |
|--------|------|
| Critical | Temperature > 100 or pressure > 2.3 |
| Warning | Temperature > 85 or pressure > 1.8 |
| Normal | All other conditions |

## Analysis Workflow

1. Load equipment data from CSV.
2. Create a `status` column using equipment health rules.
3. Group equipment by status and count each category.
4. Generate distribution and comparison charts.
5. Save dashboard outputs as PNG files.

## Generated Outputs

| Output | Purpose |
|--------|---------|
| `output/temperature_distribution.png` | Shows temperature distribution |
| `output/pressure_distribution.png` | Shows pressure distribution |
| `output/equipment_status.png` | Summarizes Normal, Warning, and Critical equipment |
| `output/equipment_temperature.png` | Compares temperature by equipment |
| `output/equipment_pressure.png` | Compares pressure by equipment |

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl
- Plots.jl

## Skills Demonstrated

- CSV data loading
- DataFrame column creation
- Conditional equipment status classification
- Grouped aggregation with `groupby()` and `combine()`
- Dashboard-style visualization
- Chart export with `savefig()`

## Semiconductor Relevance

Dashboard visualization is commonly used in semiconductor manufacturing to monitor equipment condition, compare tool performance, and highlight abnormal operating states for engineering review.
