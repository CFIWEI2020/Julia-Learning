# Day20 Learning Log

Date: 2026-06-13

## Project

Equipment Risk Assessment System

---

## Goal

Build a risk assessment system that converts equipment health information into maintenance decisions.

The objective is to simulate a simplified predictive maintenance workflow.

---

## Project Workflow

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

## What I Learned

### Risk Score Calculation

Learned how to convert Health Score into Risk Score.

Formula:

```julia
risk_score = 100 - health_score
```

Example:

| Health Score | Risk Score |
|-------------|-----------|
| 10 | 90 |
| 90 | 10 |

Key takeaway:

A lower health score results in a higher risk score.

---

### List Comprehension

Used List Comprehension to generate Risk Score values.

Example:

```julia
df.risk_score = [
    100 - score
    for score in df.health_score
]
```

---

### Function Design

Created a Risk Level classification function.

Example:

```julia
function risk_level(score)

    if score >= 80
        return "Very High"

    elseif score >= 60
        return "High"

    elseif score >= 40
        return "Medium"

    else
        return "Low"

    end

end
```

---

### Maintenance Decision Logic

Created maintenance recommendations based on risk level.

Example:

```julia
function maintenance_action(level)

    if level == "Very High"
        return "Maintenance Immediately"

    elseif level == "High"
        return "Maintenance Within 7 Days"

    elseif level == "Medium"
        return "Operation Monitoring"

    else
        return "Normal Operation"

    end

end
```

---

### Sorting Data

Learned how to sort equipment by risk score.

Example:

```julia
risk_df = sort(
    df,
    :risk_score,
    rev = true
)
```

Key takeaway:

- sort() performs sorting
- :risk_score specifies the sorting column
- rev=true sorts from highest to lowest

---

### DataFrame Indexing

Learned how to retrieve the highest-risk equipment.

Example:

```julia
highest_risk_equipment = risk_df[1,:]
```

Understanding:

```text
[ row , column ]
```

Meaning:

```text
1 = first row
: = all columns
```

---

## Biggest Learning

This was the first project completed using a structured learning process:

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

Instead of copying code directly, I learned how to derive the solution step by step.

---

## Challenges

### Challenge 1

Confused Health Score and Risk Score.

Solution:

Learned that:

```julia
risk_score = 100 - health_score
```

---

### Challenge 2

Did not understand:

```julia
:risk_score
```

Solution:

Learned that:

```text
:risk_score
```

is a Symbol representing a DataFrame column name.

---

### Challenge 3

Did not understand:

```julia
risk_df[1,:]
```

Solution:

Learned DataFrame indexing:

```text
[row,column]
```

and how to retrieve an entire row.

---

## Semiconductor Analytics Relevance

This project simulates:

- Equipment Risk Analysis
- Maintenance Prioritization
- Predictive Maintenance Logic
- Equipment Ranking Systems

These concepts are commonly used in semiconductor manufacturing analytics.

---

## Results

Successfully built:

- Risk Score System
- Risk Level Classification
- Maintenance Recommendation System
- Equipment Risk Ranking
- Highest Risk Equipment Detection

---

## Next Step

Day21

Equipment Risk Dashboard Visualization

Topics:

- Risk Distribution
- Equipment Ranking Charts
- Risk Level Charts
- Maintenance Priority Dashboard