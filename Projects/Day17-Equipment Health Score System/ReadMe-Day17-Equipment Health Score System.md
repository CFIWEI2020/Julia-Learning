# Equipment Health Score System

## Overview

This project builds a simple Equipment Health Score System using multiple sensor measurements.

Instead of classifying equipment with only Normal, Warning, or Critical labels, this project calculates a health score ranging from 0 to 100.

The objective is to provide a more detailed evaluation of equipment condition and prioritize maintenance actions.

---

## Dataset

Input file:

equipment_health_score.csv

### Columns

|    Column    |       Description     |
|--------------|-----------------------|
| equipment_id |      Equipment ID     |
| temperature  | Equipment Temperature |
|   pressure   | Equipment Pressure    |
|  flow_rate   | Equipment Flow Rate   |

---

## Objectives

- Calculate equipment health scores
- Evaluate equipment condition using multiple sensors
- Classify equipment health levels
- Build a simple equipment KPI system

---

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl

---

## Scoring System

### Temperature Score

| Temperature | Score  |
|-------------|--------|
|    ≤ 80     |   40   |
|    ≤ 80     |   40   |
|   81 - 90   |   30   |
|   91 - 100  |   20   |
|    > 100    |   10   |

---

### Pressure Score

|  Pressure  | Score |
|------------|------:|
|    ≤ 1.5   |   30  |
|    ≤ 2.0   |   20  |
|    ≤ 2.3   |   10  |
|    > 2.3   |    0  |

---

### Flow Rate Score

| Flow Rate  | Score |
|------------|------:|
|   ≥ 120    |   30  |
|   ≥ 110    |   20  |
|   ≥ 100    |   10  |
|   < 100    |   0   |

---

## Health Level Classification

|  Score  | Level     |
|---------|-----------|
|   > 80  | Excellent |
|   > 60  | Good      |
|   > 40  | Warning   |
|   ≤ 40  | Critical  |

---

## Analysis Workflow

### 1. Load Equipment Data

Read equipment sensor data from CSV.

### 2. Calculate Health Score

Combine:

- Temperature
- Pressure
- Flow Rate

into a single health score.

### 3. Generate Health Level

Create:

- Excellent
- Good
- Warning
- Critical

classifications.

### 4. Add New Columns

Generated:

- health_score
- level

---

## Example Result

| Equipment ID | Score |   Level   |
|--------------|------:|-----------|
|    EQ001     |  100  | Excellent |
|    EQ002     |  90   | Excellent |
|    EQ003     |  60   | Warning   |
|    EQ004     |  60   | Warning   |
|    EQ005     |  10   | Critical  |

---

## Generated Files

equipment_health_score.csv
Day17-Equipment_Health_Score_System.jl
Learning_Log_Day17.md
README.md
---

## Semiconductor Relevance

Equipment Health Scores are commonly used in:

- Equipment Monitoring
- Predictive Maintenance
- Smart Manufacturing
- Equipment Ranking
- Maintenance Prioritization

The concept is similar to KPI dashboards used in semiconductor manufacturing environments.

---
