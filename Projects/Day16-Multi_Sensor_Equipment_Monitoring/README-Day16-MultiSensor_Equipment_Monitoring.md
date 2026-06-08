# Day16 - Multi-Sensor Equipment Monitoring

## Overview

This project expands equipment monitoring from a single temperature signal to multiple sensor measurements.

The objective is to classify equipment health by evaluating temperature, pressure, and flow rate together.

This provides a more realistic equipment monitoring workflow than using one sensor alone.

## Dataset

Input file:

`equipment_multisensor.csv`

| Column | Description |
|--------|-------------|
| `equipment_id` | Equipment ID |
| `temperature` | Equipment temperature |
| `pressure` | Equipment pressure |
| `flow_rate` | Equipment flow rate |

## Objectives

- Analyze multiple equipment sensor values
- Classify equipment as Normal, Warning, or Critical
- Summarize equipment status counts
- Generate a status summary chart
- Build a foundation for equipment health scoring

## Analysis Workflow

1. Load equipment sensor data from CSV.
2. Evaluate temperature, pressure, and flow rate.
3. Create a `status` column using multi-sensor rules.
4. Count equipment by status.
5. Export a status summary chart.

## Equipment Status Rules

| Status | Rule |
|--------|------|
| Critical | Temperature > 100, pressure > 2.3, or flow rate < 100 |
| Warning | Temperature > 85, pressure > 1.8, or flow rate < 110 |
| Normal | All other conditions |

## Generated Output

| Output | Purpose |
|--------|---------|
| `equipment_status_summary.png` | Summarizes equipment count by health status |

## Generated Files

- `equipment_multisensor.csv`
- `equipment_status_summary.png`
- `Day16-Multi_Sensor_Equipment_Monitoring.jl`
- `Learning_Log-Day16.md`
- `README-Day16-MultiSensor_Equipment_Monitoring.md`

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl
- Plots.jl

## Skills Demonstrated

- Multi-sensor equipment analysis
- Conditional status classification
- DataFrame column generation
- Grouped aggregation
- Status summary visualization

## Semiconductor Relevance

Multi-sensor equipment monitoring is commonly used in:

- Equipment Health Monitoring
- Predictive Maintenance
- Smart Manufacturing
- Maintenance Prioritization
- Semiconductor Process Control
