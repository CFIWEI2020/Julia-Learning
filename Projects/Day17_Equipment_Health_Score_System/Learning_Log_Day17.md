# Day17 Learning Log

Date: 2026-06-08

## Project

Equipment Health Score System

---

## Goal

Learn how to combine multiple equipment sensor measurements into a single health score.

The objective is to evaluate overall equipment condition instead of monitoring individual sensor values separately.

---

## What I Learned

### Multi-Sensor Analysis

Used three equipment measurements:

- Temperature
- Pressure
- Flow Rate

instead of relying on a single sensor.

This provides a more realistic representation of equipment health.

---

### Health Score Calculation

Created a custom function:

health_score(
    temperature,
    pressure,
    flow_rate
)

The function assigns points based on equipment operating conditions.

The final score ranges from 0 to 100.

---

### Health Level Classification

Created:

health_level(score)

to convert health scores into equipment condition labels.

Possible results:

- Excellent
- Good
- Warning
- Critical

---

### DataFrame Column Creation

Created:

df.health_score

and

df.level

using List Comprehension.

Example:

df.health_score = [
    health_score(
        row.temperature,
        row.pressure,
        row.flow_rate
    )
    for row in eachrow(df)
]

---

### Function Design

Learned the difference between:

health_score()

Calculates a numeric score.

and

health_level()

Converts a score into a category.

---

## Challenges

### Challenge 1

CSV file not found.

Problem:

equipment_health_score.csv not found

Solution:

Used:

joinpath(
    @__DIR__,
    "equipment_health_score.csv"
)

to create a reliable file path.

---

### Challenge 2

Variable name mismatch.

Problem:

temp

was used inside the function while the parameter name was:

temperature

Result:

UndefVarError

Solution:

Use consistent variable names.

---

### Challenge 3

Function argument mismatch.

Problem:

health_level(
    row.temperature,
    row.pressure,
    row.flow_rate,
    row.health_score
)

---

### Challenge 4

Typographical errors.

Examples:

socre

instead of:

score

Learned the importance of careful debugging.

---

## Semiconductor Analytics Relevance

Equipment health scores are frequently used in:

- Equipment Performance Monitoring
- Predictive Maintenance
- Risk Assessment
- Equipment Ranking
- Manufacturing Analytics

This project simulates a simplified health scoring system used in industrial environments.

---

## Results

Completed:

- Multi-Sensor Analysis
- Health Score Calculation
- Equipment Classification
- DataFrame Column Generation

Generated:

- health_score
- level

---

## Next Step

### Day18 - Equipment Ranking Dashboard

Topics:

- Rank equipment by health score
- Highlight high-risk equipment
- Build a maintenance priority view
- Improve dashboard-style reporting

- sort()
- Ranking Systems
- Top Equipment
- Worst Equipment
- Maintenance Priority Analysis
