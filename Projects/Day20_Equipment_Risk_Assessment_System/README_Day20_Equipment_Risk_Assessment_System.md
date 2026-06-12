# Equipment Risk Assessment System

## Overview

This project extends the Equipment Health Score System developed in Day17 and the Equipment Ranking Dashboard developed in Day18.

The goal is to evaluate equipment risk levels, prioritize maintenance actions, and identify the highest-risk equipment.

The system simulates a simplified predictive maintenance workflow used in semiconductor manufacturing environments.

---

## Workflow

```text
Temperature
Pressure
Flow Rate

↓

Health Score

↓

Risk Score

↓

Risk Level

↓

Sort by Risk Score

↓

Highest Risk Equipment

↓

Maintenance Action
```

---

## Technologies Used

- Julia
- DataFrames.jl

---

## Dataset

Sample Equipment Data:

| Equipment ID | Health Score |
|--------------|-------------|
| EQ001 | 10 |
| EQ002 | 90 |
| EQ003 | 60 |
| EQ004 | 30 |
| EQ005 | 10 |

---

## Risk Score Formula

```julia
risk_score = 100 - health_score
```

Example:

| Health Score | Risk Score |
|-------------|-----------|
| 90 | 10 |
| 60 | 40 |
| 30 | 70 |
| 10 | 90 |

---

## Risk Level Rules

| Risk Score | Risk Level |
|------------|------------|
| >= 80 | Very High |
| >= 60 | High |
| >= 40 | Medium |
| < 40 | Low |

---

## Maintenance Actions

| Risk Level | Action |
|------------|---------|
| Very High | Maintenance Immediately |
| High | Maintenance Within 7 Days |
| Medium | Operation Monitoring |
| Low | Normal Operation |

---

## Key Features

- Calculate Risk Score
- Assign Risk Level
- Generate Maintenance Recommendations
- Rank Equipment by Risk
- Identify Highest Risk Equipment

---

## Example Result

Highest Risk Equipment:

```text
Equipment ID: EQ001
Health Score: 10
Risk Score: 90
Risk Level: Very High
Maintenance Action: Maintenance Immediately
```

---

## Semiconductor Analytics Relevance

This project demonstrates core concepts used in:

- Equipment Health Monitoring
- Risk Assessment
- Predictive Maintenance
- Maintenance Prioritization
- Semiconductor Equipment Analytics

---

## Next Step

Day21

Equipment Risk Dashboard Visualization

Topics:

- Risk Distribution
- Risk Level Visualization
- Equipment Ranking Dashboard
- Maintenance Priority Charts