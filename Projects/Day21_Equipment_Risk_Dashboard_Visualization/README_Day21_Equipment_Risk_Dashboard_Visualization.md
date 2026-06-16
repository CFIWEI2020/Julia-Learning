# Day21 - Equipment Risk Dashboard

## Overview

This project builds a simple Equipment Risk Dashboard for semiconductor equipment monitoring.

The dashboard visualizes:

- Risk Score Distribution
- Risk Level Summary
- Equipment Risk Ranking

The goal is to help engineers quickly identify high-risk equipment and prioritize maintenance actions.

---

## Workflow

```text
Health Score
↓
Risk Score
↓
Risk Level
↓
Visualization
├─ Risk Score Distribution
├─ Risk Level Summary
└─ Equipment Risk Ranking
```

---

## Technologies Used

- Julia
- DataFrames.jl
- Plots.jl

---

## Dataset

| Equipment ID | Health Score |
|-------------|-------------:|
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
|-------------|-----------:|
| 10 | 90 |
| 90 | 10 |
| 60 | 40 |
| 30 | 70 |

---

## Risk Level Rules

| Risk Score | Risk Level |
|-----------:|------------|
| >= 80 | Very High |
| >= 60 | High |
| >= 40 | Medium |
| < 40 | Low |

---

## Dashboard Visualizations

### 1. Risk Score Distribution

Histogram showing overall risk score distribution.

Output:

```text
Risk Score Distribution.png
```

---

### 2. Risk Level Summary

Bar chart showing equipment counts by risk level.

Output:

```text
Risk Level Summary.png
```

---

### 3. Equipment Risk Ranking

Bar chart ranking equipment by risk score.

Output:

```text
Equipment Risk Ranking.png
```

---

## Key Concepts

- Data Visualization
- Histogram
- Bar Chart
- Equipment Risk Analysis
- Dashboard Design
- Risk Classification

---

## Semiconductor Industry Relevance

This project simulates a simplified equipment monitoring dashboard used in:

- Predictive Maintenance
- Equipment Health Monitoring
- Risk Management
- Semiconductor Manufacturing Analytics

---

## Learning Outcome

Through this project, I learned how to:

- Convert raw data into visual insights
- Choose the correct chart type
- Design dashboard components
- Analyze equipment risk distributions
- Rank equipment by maintenance priority

---

## Next Step

Day22

Equipment Maintenance Dashboard

Topics:

- Maintenance Priority Dashboard
- Recommendation Summary
- Maintenance Statistics
- Multi-Chart Dashboard Design