# Day19 Learning Log

Date: 2026-06-12

## Project

Predictive Maintenance Dashboard

---

## Goal

Learn how to transform equipment health data into maintenance recommendations.

The objective is to support maintenance decisions using equipment analytics.

---

## What I Learned

### Predictive Maintenance Concept

Previous projects focused on:

- Visualization
- Trend Analysis
- Health Score
- Ranking

This project focused on:

- Maintenance Decision Support

Key idea:

```text
Sensor Data
↓
Health Score
↓
Health Level
↓
Priority
↓
Recommendation
```

---

### Recommendation Engine

Created a custom function:

```julia
function recommendation(level)

    if level == "Critical"
        return "Schedule Maintenance Immediately"

    elseif level == "Warning"
        return "Inspect Within 7 Days"

    elseif level == "Good"
        return "Continue Monitoring"

    else
        return "Normal Operation"

    end

end
```

This converts equipment conditions into maintenance actions.

---

### Filtering Critical Equipment

Used:

```julia
filter()
```

to identify equipment requiring immediate attention.

Example:

```julia
critical_df = filter(
    row -> row.level == "Critical",
    df
)
```

---

### Maintenance Priority Classification

Created:

```julia
maintenance_priority(score)
```

to categorize equipment into:

- High
- Medium
- Low

maintenance priorities.

---

### DataFrame Workflow

Learned how multiple generated columns can work together:

```text
health_score
↓
level
↓
priority
↓
recommendation
```

Each stage depends on the previous calculation.

---

## Challenges

### Challenge 1

Incorrect Filter Condition.

Problem:

```julia
row.level = "Critical"
```

Used assignment instead of comparison.

Correct:

```julia
row.level == "Critical"
```

Learned the difference between:

- `=` Assignment
- `==` Comparison

---

### Challenge 2

Understanding Generated Columns

Learned that:

```julia
health_score
```

must be created before:

```julia
level
```

and

```julia
level
```

must be created before:

```julia
recommendation
```

This reinforced the concept of analysis pipelines.

---

### Challenge 3

Equipment Ranking Logic

Reviewed sorting and maintenance priority concepts from Day18.

Learned how ranking information can support maintenance decisions.

---

## Semiconductor Analytics Relevance

Predictive Maintenance is one of the most important applications of equipment analytics.

Engineers monitor:

- Temperature
- Pressure
- Flow Rate
- Equipment Health

to prevent equipment failures and reduce downtime.

This project simulates a simplified predictive maintenance workflow.

---

## Results

Completed:

- Health Score Calculation
- Health Level Classification
- Maintenance Priority Analysis
- Recommendation Engine
- Critical Equipment Detection

Generated:

- recommendation
- priority
- critical_df

---

## Key Insight

Equipment analytics is not only about calculating numbers.

The final goal is:

```text
Data
↓
Analysis
↓
Decision
↓
Action
```

Predictive Maintenance transforms sensor data into maintenance actions.

---

## Next Step

### Day20 – Equipment Risk Score Dashboard

Topics:

- Risk Score
- Failure Probability
- Risk Ranking
- Maintenance Risk Assessment

