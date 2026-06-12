# Day18 Learning Log

Date: 2026-06-11

## Project

Equipment Ranking Dashboard

---

## Goal

Learn how to rank equipment based on health scores and determine maintenance priorities.

The objective is to transform equipment monitoring data into actionable maintenance decisions.

---

## What I Learned

### DataFrame Sorting

Learned how to sort a DataFrame using a specific column.

Example:

```
ranking_df = sort(
    df,
    :health_score,
    rev = true
)
```

Key takeaway:

- `sort()` can rank equipment from best to worst.
- `rev = true` sorts in descending order.
- Highest health score appears first.

---

### Equipment Ranking

Created a ranking system using equipment health scores.

Example:

| Rank | Equipment | Health Score |
|--------|----------|------------:|
| 1 | EQ001 | 100 |
| 2 | EQ002 | 90 |
| 3 | EQ003 | 60 |
| 4 | EQ004 | 60 |
| 5 | EQ005 | 10 |

This helps identify top-performing and underperforming equipment.

---

### Maintenance Priority

Created a maintenance priority classification.

Example:

```julia
function maintenance_priority(score)

    if score <= 40
        return "High"

    elseif score <= 60
        return "Medium"

    else
        return "Low"

    end

end
```

Output:

- High
- Medium
- Low

This simulates maintenance planning decisions.

---

### Data Pipeline Thinking

Through Day12-Day18, I learned how equipment data flows through multiple analysis stages.

```text
Sensor Data
↓
Health Status
↓
Trend Analysis
↓
Anomaly Detection
↓
Health Score
↓
Equipment Ranking
↓
Maintenance Priority
```

This is similar to real-world equipment analytics workflows.

---

## Challenges

### Challenge 1

Health Score Column Not Found

Error:

```text
column name :health_score not found
```

Cause:

The CSV file only contained:

- equipment_id
- temperature
- pressure
- flow_rate

The `health_score` column existed only in the Day17 DataFrame and was not saved to the CSV file.

Solution:

Reused the Day17 `health_score()` function and recreated the column before sorting.

---

### Challenge 2

Understanding DataFrame Memory

Initially assumed that:

```julia
df.health_score
```

would automatically exist after reopening the CSV file.

Learned that:

- DataFrame columns created during execution exist only in memory.
- CSV files only store the original data.
- New columns must be regenerated or saved using:

```
CSV.write(
    "output.csv",
    df
)
```

---

### Challenge 3

Debugging DataFrame Columns

Used:

```
println(names(df))
```

to verify available columns.

This helped identify missing columns before performing sorting operations.

---

### Challenge 4

Reusing Previous Functions

Learned that Day18 depends on calculations from Day17.

Needed to reuse:

```julia
health_score()
```

before performing:

```julia
sort()
```

This reinforced the concept of building projects incrementally.

---

## Semiconductor Analytics Relevance

Equipment ranking is commonly used in semiconductor manufacturing for:

- Equipment Health Assessment
- Maintenance Planning
- Resource Allocation
- Predictive Maintenance
- Risk Prioritization

Engineers use ranking dashboards to determine which equipment should receive maintenance attention first.

---

## Results

Completed:

- Equipment Ranking
- Health Score Sorting
- Maintenance Priority Classification

Learned:

- sort()
- DataFrame Ranking
- Data Persistence Concepts
- Function Reuse
- Decision-Oriented Analytics

---

## Key Insight

A CSV file only stores raw data.

Calculated columns such as:

- health_score
- level
- priority

must either be:

1. Recalculated every time the program runs

or

2. Saved into a new CSV file.

This was the most important lesson learned during Day18.

---

## Next Step

### Day19 – Predictive Maintenance Dashboard

Topics:

- Trend Analysis
- Anomaly Detection
- Health Score
- Equipment Ranking
- Maintenance Recommendations
