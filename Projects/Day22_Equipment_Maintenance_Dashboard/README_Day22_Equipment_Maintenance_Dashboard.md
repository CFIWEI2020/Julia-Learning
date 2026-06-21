# Day22 - Maintenance Dashboard

## Overview

This project builds a Maintenance Dashboard for equipment maintenance management.

The dashboard can:

- Calculate Risk Score
- Classify Risk Level
- Generate Maintenance Actions
- Find equipment requiring immediate maintenance
- Rank maintenance priority
- Visualize maintenance categories

---

## Workflow

```text
Health Score
↓
Risk Score
↓
Risk Level
↓
Maintenance Action

├─ Maintenance Summary
│
│  groupby()
│  combine()
│
│  maintenance_count
│
│  p1 = bar()
│
├─ Immediate Maintenance List
│
│  filter()
│
│  immediate_df
│
└─ Maintenance Priority Ranking

   sort(
       :risk_score,
       rev = true
   )

   priority_df
   ↓
   priority_df[1,:]
   ↓
   highest_priority_equipment
```

---

## Features

### Maintenance Summary

```julia
maintenance_count = combine(
    groupby(df,:maintenance_action),
    nrow => :count
)
```

Counts the number of machines in each maintenance category.

---

### Immediate Maintenance List

```julia
immediate_df = filter(
    row -> row.maintenance_action ==
        "Maintenance Immediately",
    df
)
```

Finds all equipment requiring immediate maintenance.

---

### Maintenance Priority Ranking

```julia
priority_df = sort(
    immediate_df,
    :risk_score,
    rev = true
)
```

Ranks equipment by risk score.

---

### Highest Priority Equipment

```julia
highest_priority_equipment =
    priority_df[1,:]
```

Returns the highest-priority equipment.

---

## Key Concepts

- DataFrame
- Function
- Filter
- GroupBy
- Combine
- Sort
- Bar Chart
- Dashboard Design
- Maintenance Analytics
- Engineering Decision Making

---

## Skills Learned

```text
Find who?
↓
filter()

How many?
↓
groupby() + combine()

Rank order?
↓
sort()

Category?
↓
bar()

Numeric Distribution?
↓
histogram()
```

---

## Project Result

```text
Highest Priority Equipment

equipment_id = EQ001

health_score = 10

risk_score = 90

risk_level = Very High

maintenance_action = Maintenance Immediately
```

---

## Author

Wei Wang

Julia Learning Journey - Day22