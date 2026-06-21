# Day22 Learning Log

## Project
Maintenance Dashboard

---

## Learning Objective

Build a Maintenance Dashboard that can:

- Find equipment requiring immediate maintenance
- Count maintenance categories
- Rank maintenance priority
- Support engineering maintenance decisions

---

## Core Thinking Process

```text
Problem
↓
Data
↓
Rules
↓
Flowchart
↓
Code
```

---

## Engineering Workflow

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

## What I Learned

### 1. filter()

Purpose:

Find specific equipment

Question:

Which equipment needs immediate maintenance?

Example:

```julia
immediate_df = filter(
    row -> row.maintenance_action ==
        "Maintenance Immediately",
    df
)
```

Mental Model:

```text
Find who?
↓
filter()
```

---

### 2. groupby() + combine()

Purpose:

Count categories

Question:

How many machines belong to each maintenance action?

Example:

```julia
maintenance_count = combine(
    groupby(df,:maintenance_action),
    nrow => :count
)
```

Mental Model:

```text
How many?
↓
groupby() + combine()
```

---

### 3. sort()

Purpose:

Rank equipment priority

Question:

Which machine should be repaired first?

Example:

```julia
priority_df = sort(
    immediate_df,
    :risk_score,
    rev = true
)
```

Mental Model:

```text
Rank order?
↓
sort()
```

---

### 4. bar()

Purpose:

Visualize maintenance categories

Example:

```julia
p1 = bar(
    maintenance_count.maintenance_action,
    maintenance_count.count
)
```

Mental Model:

```text
Category
↓
bar()
```

---

## Important Concepts

### rev = true

```julia
sort(
    df,
    :risk_score,
    rev = true
)
```

Meaning:

```text
Highest Risk
↓
Lowest Risk
```

Example:

```text
90
90
70
40
10
```

---

### priority_df[1,:]

Meaning:

```text
First Row
↓
All Columns
```

Example:

```text
equipment_id = EQ001

health_score = 10

risk_score = 90

risk_level = Very High

maintenance_action = Maintenance Immediately
```

---

## Key Engineering Logic

```text
Health Score = 10
↓
Risk Score = 90
↓
Risk Level = Very High
↓
Maintenance Immediately
```

Reason:

```julia
risk_score = 100 - health_score
```

```text
100 - 10 = 90
```

---

## Day22 Knowledge Summary

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

Category data?
↓
bar()

Numeric distribution?
↓
histogram()
```

---

## Biggest Achievement

For the first time, I designed the project using:

```text
Problem
↓
Data
↓
Rules
↓
Flowchart
↓
Code
```

instead of writing code first.

This approach helped me understand:

- Why filter() is used
- Why groupby() + combine() is used
- Why sort() is used
- Why bar() is used

before writing Julia code.

---

## Status

```text
Day22
Maintenance Dashboard

Completed ✅
```