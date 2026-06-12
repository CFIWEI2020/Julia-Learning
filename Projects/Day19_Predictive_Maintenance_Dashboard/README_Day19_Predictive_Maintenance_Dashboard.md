# Predictive Maintenance Dashboard

## Overview

This project extends the Equipment Ranking Dashboard developed in Day18.

The goal is to analyze equipment health conditions and automatically generate maintenance recommendations.

Instead of only monitoring sensor data, the system helps answer:

- Which equipment requires maintenance?
- How urgent is the maintenance?
- What action should be taken?

This project simulates a simplified Predictive Maintenance Dashboard.

---

## Dataset

Input Data:

| Column | Description |
|----------|----------|
| date | Measurement Date |
| equipment_id | Equipment ID |
| temperature | Equipment Temperature |
| pressure | Equipment Pressure |
| flow_rate | Equipment Flow Rate |

---

## Technologies Used

- Julia
- DataFrames.jl
- Dates.jl

---

## Analysis Workflow

### Step 1: Create Equipment Dataset

Generate equipment sensor data including:

- Temperature
- Pressure
- Flow Rate

---

### Step 2: Calculate Health Score

Calculate equipment health score using:

- Temperature
- Pressure
- Flow Rate

Output:

```text
health_score
```

---

### Step 3: Generate Health Level

Classification Rules:

| Score | Level |
|---------|---------|
| ≥ 80 | Excellent |
| ≥ 60 | Good |
| ≥ 40 | Warning |
| < 40 | Critical |

Output:

```text
level
```

---

### Step 4: Assign Maintenance Priority

Priority Rules:

| Score | Priority |
|---------|---------|
| ≤ 40 | High |
| ≤ 60 | Medium |
| > 60 | Low |

Output:

```text
priority
```

---

### Step 5: Generate Maintenance Recommendation

Recommendation Rules:

| Level | Recommendation |
|---------|---------|
| Critical | Schedule Maintenance Immediately |
| Warning | Inspect Within 7 Days |
| Good | Continue Monitoring |
| Excellent | Normal Operation |

Output:

```text
recommendation
```

---

### Step 6: Filter Critical Equipment

Identify equipment requiring immediate maintenance.

Example:

```julia
critical_df = filter(
    row -> row.level == "Critical",
    df
)
```

---

## Example Result

| Equipment ID | Score | Level | Priority | Recommendation |
|------------|------:|----------|----------|----------|
| EQ001 | 30 | Critical | High | Schedule Maintenance Immediately |

---

## Key Features

- Equipment Health Score
- Health Level Classification
- Maintenance Priority Analysis
- Maintenance Recommendation Engine
- Critical Equipment Detection

---

## Semiconductor Relevance

Predictive Maintenance is widely used in:

- Semiconductor Equipment Monitoring
- Equipment Health Assessment
- Failure Prevention
- Maintenance Scheduling
- Smart Manufacturing

The objective is to detect equipment degradation before unexpected downtime occurs.

---

## Generated Files

```text
Day19_Predictive_Maintenance_Dashboard.jl
README.md
Learning_Log_Day19.md
```

---

## Author

Wei Wang

Julia Learning Project – Semiconductor Equipment Analytics