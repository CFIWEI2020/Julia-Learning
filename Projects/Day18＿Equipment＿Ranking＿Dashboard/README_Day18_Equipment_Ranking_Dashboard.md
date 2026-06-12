# Equipment Ranking Dashboard

## Overview

This project extends the Equipment Health Score System developed in Day17.

The goal is to rank equipment based on health scores and determine maintenance priorities.

Instead of only monitoring sensor values, this project focuses on identifying:

- Best Performing Equipment
- Worst Performing Equipment
- Maintenance Priority Ranking

This approach is commonly used in predictive maintenance and equipment management systems.

---

## Dataset

Input file:

```text
equipment_health_score.csv
```

### Columns

|     Column    |     Description       |
|---------------|-----------------------|
| equipment_id  |    Equipment ID       |
| temperature   | Equipment Temperature |
| pressure      | Equipment Pressure    |
| flow_rate     | Equipment Flow Rate   |

---

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl

---

## Analysis Workflow

### Step 1: Load Equipment Data

Read equipment sensor data from CSV.

Example:

```julia
df = CSV.read(
    file_path,
    DataFrame
)
```

---

### Step 2: Generate Health Score

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

Classify equipment condition:

|  Score  |   Level   |
|---------|-----------|
|  > 80   | Excellent |
|  > 60   | Good      |
|  > 40   | Warning   |
|  ≤ 40   | Critical  |

Output:

```text
level
```

---

### Step 4: Rank Equipment

Sort equipment by health score.

Example:

ranking_df = sort(
    df,
    :health_score,
    rev = true
)

---

### Step 5: Assign Maintenance Priority

Maintenance Priority Rules:

|   Score | Priority |
|---------|----------|
|   > 80  | Low      |
|   > 60  | Medium   |
|   ≤ 60  | High     |

Output:

```text
priority
```

---

## Example Result

|  Rank  | Equipment ID | Health Score | Level     | Priority |
|--------|--------------|--------------|-----------|----------|
|   1    |     EQ001    |      100     | Excellent | Low      |
|   2    |     EQ002    |      90      | Excellent | Low      |
|   3    |     EQ003    |      60      | Warning   | Medium   |
|   4    |     EQ004    |      60      | Warning   | Medium   |
|   5    |     EQ005    |      10      | Critical  | High     |

---

## Key Features

- Equipment Health Score
- Equipment Ranking
- Health Level Classification
- Maintenance Priority Analysis
- Decision Support Dashboard

---

## Semiconductor Analytics Relevance

Equipment ranking systems are commonly used in:

- Equipment Monitoring
- Maintenance Planning
- Resource Allocation
- Predictive Maintenance
- Smart Manufacturing

Engineers use ranking dashboards to determine which equipment should receive maintenance attention first.

---

## Generated Files

```text
equipment_health_score.csv
Day18_Equipment_Ranking_Dashboard.jl
README.md
Learning_Log_Day18.md
```

---

## Learning Outcomes

Through this project, I learned:

- DataFrame Sorting
- Equipment Ranking
- Maintenance Priority Classification
- Health Score Analysis
- Decision-Oriented Equipment Analytics
