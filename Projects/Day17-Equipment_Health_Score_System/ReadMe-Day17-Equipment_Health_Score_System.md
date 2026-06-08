# Day17 - Equipment Health Score System

## Overview

This project builds a simple Equipment Health Score System using multiple sensor measurements.

Instead of classifying equipment with only Normal, Warning, or Critical labels, this project calculates a health score ranging from 0 to 100.

The objective is to provide a more detailed evaluation of equipment condition and help prioritize maintenance actions.

## Dataset

Input file:

`equipment_health_score.csv`

| Column | Description |
|--------|-------------|
| `equipment_id` | Equipment ID |
| `temperature` | Equipment temperature |
| `pressure` | Equipment pressure |
| `flow_rate` | Equipment flow rate |

## Objectives

- Calculate equipment health scores
- Evaluate equipment condition using multiple sensors
- Classify equipment health levels
- Build a simple equipment KPI system

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl
- Plots.jl

## Scoring System

### Temperature Score

| Temperature | Score  |
|-------------|--------|
| <= 80 | 40 |
| 81 - 90 | 30 |
| 91 - 100 | 20 |
| > 100 | 10 |

### Pressure Score

|  Pressure  | Score |
|------------|------:|
| <= 1.5 | 30 |
| 1.6 - 2.0 | 20 |
| 2.1 - 2.3 | 10 |
| > 2.3 | 0 |

### Flow Rate Score

| Flow Rate  | Score |
|------------|------:|
| >= 120 | 30 |
| 110 - 119 | 20 |
| 100 - 109 | 10 |
| < 100 | 0 |

## Health Level Classification

|  Score  | Level     |
|---------|-----------|
| >= 80 | Excellent |
| >= 60 | Good |
| >= 40 | Warning |
| < 40 | Critical |

## Analysis Workflow

1. Load equipment sensor data.
2. Calculate score contributions from temperature, pressure, and flow rate.
3. Combine the score components into a 0-100 health score.
4. Convert the numeric score into a health level.
5. Generate a bar chart comparing equipment health scores.

## Example Result

| Equipment ID | Score |   Level   |
|--------------|------:|-----------|
| EQ001 | 100 | Excellent |
| EQ002 | 90 | Excellent |
| EQ003 | 60 | Good |
| EQ004 | 60 | Good |
| EQ005 | 10 | Critical |

## Generated Output

| Output | Purpose |
|--------|---------|
| `equipment_health_score.png` | Compares health scores across equipment |

## Generated Files

- `equipment_health_score.csv`
- `equipment_health_score.png`
- `Day17-Equipment_Health_Score_System.jl`
- `Learning_Log-Day17.md`
- `ReadMe-Day17-Equipment_Health_Score_System.md`

## Semiconductor Relevance

Equipment Health Scores are commonly used in:

- Equipment Monitoring
- Predictive Maintenance
- Smart Manufacturing
- Equipment Ranking
- Maintenance Prioritization

The concept is similar to KPI dashboards used in semiconductor manufacturing environments.
