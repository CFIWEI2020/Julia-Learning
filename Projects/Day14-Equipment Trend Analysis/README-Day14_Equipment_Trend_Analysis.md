# Day14 - Equipment Trend Analysis

## Overview

This project focuses on monitoring equipment temperature trends over time.

Instead of analyzing a single data point, trend analysis helps identify whether equipment conditions are improving, stable, or deteriorating.

This approach is commonly used in semiconductor manufacturing for equipment monitoring and predictive maintenance.

## Dataset

Input file:

`equipment_trend.csv`

| Column | Description |
|--------|-------------|
| `date` | Measurement date |
| `equipment_id` | Equipment ID |
| `temperature` | Equipment temperature |

## Objectives

- Monitor equipment temperature trends
- Identify abnormal temperature increases
- Generate warning status for high temperatures
- Visualize equipment behavior over time

## Analysis Workflow

1. Load time-series equipment data.
2. Plot temperature changes by date.
3. Calculate maximum and average temperature.
4. Create a status column using threshold rules.
5. Filter warning records for engineering review.

## Trend Status Rules

| Status | Rule |
|--------|------|
| Warning | Temperature >= 90 |
| Normal | Temperature < 90 |

## Results

- Maximum temperature: 92
- Average temperature: 82.0
- Warning record:

| Date       | Temperature | Status |
|------------|-------------|--------|
| 2026-06-05 | 92 | Warning |

## Generated Files

- `equipment_trend.csv`
- `temperature_trend.png`
- `Day14_Equipment_Trend_Analysis.jl`
- `Learning_Log_Day14.md`
- `README-Day14_Equipment_Trend_Analysis.md`

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl
- Statistics.jl
- Plots.jl

## Semiconductor Relevance

Trend analysis is widely used for:

- Equipment Monitoring
- Process Stability Analysis
- SPC Monitoring
- Predictive Maintenance
- Early Fault Detection
