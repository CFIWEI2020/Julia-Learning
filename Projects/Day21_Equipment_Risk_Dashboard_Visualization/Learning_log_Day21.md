# Day21 Learning Log

Date: 2026-06-16

## Project

Equipment Risk Dashboard

---

## Goal

Build a dashboard that visualizes equipment risk information.

The dashboard should help engineers:

- Understand risk distribution
- Analyze risk levels
- Identify high-risk equipment
- Prioritize maintenance actions

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

## What I Learned

### 1. Risk Score Distribution

Used Histogram to visualize risk score distribution.

Example:

```julia
p1 = histogram(
    df.risk_score,
    title = "Risk Score Distribution",
    xlabel = "Risk Score",
    ylabel = "Count"
)
```

Key Learning:

Histogram is used for continuous numerical data.

Examples:

- Temperature Distribution
- Pressure Distribution
- Risk Score Distribution

---

### 2. Risk Level Summary

Created grouped statistics using:

```julia
groupby()
combine()
```

Example:

```julia
risk_level_count = combine(
    groupby(df, :risk_level),
    nrow => :count
)
```

Output:

| Risk Level | Count |
|------------|------:|
| Very High | 2 |
| High | 1 |
| Medium | 1 |
| Low | 1 |

---

### 3. Bar Chart Visualization

Visualized grouped results using Bar Charts.

Example:

```julia
p2 = bar(
    risk_level_count.risk_level,
    risk_level_count.count
)
```

Key Learning:

Bar Charts are best for categorical comparisons.

---

### 4. Equipment Risk Ranking

Sorted equipment by risk score.

Example:

```julia
risk_df = sort(
    df,
    :risk_score,
    rev = true
)
```

Key Learning:

```julia
rev = true
```

means:

```text
Highest → Lowest
```

---

### 5. Equipment Ranking Chart

Created ranking visualization.

Example:

```julia
p3 = bar(
    risk_df.equipment_id,
    risk_df.risk_score
)
```

Key Learning:

Equipment ranking charts help engineers prioritize maintenance activities.

---

## Biggest Learning

This was the first dashboard project built using a structured engineering thinking process.

Process:

```text
Flowchart
↓
Concept Questions
↓
Logic Reasoning
↓
Code Implementation
↓
Review
↓
Documentation
```

Instead of copying code directly, I learned to:

- Understand the data
- Select the correct chart
- Design visualizations
- Build dashboards step by step

---

## Challenges

### Challenge 1

Confused Histogram and Bar Chart.

Solution:

Learned:

```text
Histogram
↓
Continuous Numerical Data

Bar Chart
↓
Categorical Data
```

---

### Challenge 2

Used:

```julia
df.count
```

inside Histogram.

Solution:

Learned that Histogram automatically calculates counts.

Correct:

```julia
histogram(df.risk_score)
```

---

### Challenge 3

Used:

```julia
risk_df.risk_score
```

before creating risk_df.

Solution:

Learned to follow execution order.

```text
Create Data
↓
Create Risk Level
↓
Sort Data
```

---

## Key Takeaways

I can now identify:

| Data Type | Visualization |
|------------|--------------|
| Temperature | Histogram |
| Risk Score | Histogram |
| Risk Level | Bar Chart |
| Equipment Ranking | Bar Chart |

---

## Semiconductor Analytics Relevance

This project demonstrates concepts used in:

- Equipment Monitoring Dashboards
- Maintenance Analytics
- Risk Management Systems
- Semiconductor Manufacturing Intelligence

---

## Result

Successfully created:

- Risk Score Distribution Chart
- Risk Level Summary Chart
- Equipment Risk Ranking Chart

Generated Files:

```text
Risk Score Distribution.png
Risk Level Summary.png
Equipment Risk Ranking.png
```

---

## Next Step

Day22

Equipment Maintenance Dashboard

Topics:

- Maintenance Priority Summary
- Recommendation Dashboard
- Maintenance Statistics
- Multi-Chart Reporting