# Day16 Learning Log

Date: 2026-06-08

## Project

Multi-Sensor Equipment Monitoring

---

## Goal

Learn how to classify equipment status using multiple sensor values.

The objective is to evaluate equipment condition using temperature, pressure, and flow rate together instead of relying on a single measurement.

---

## What I Learned

### Multi-Sensor Status Logic

Used three sensor measurements:

- Temperature
- Pressure
- Flow Rate

This creates a more realistic equipment monitoring rule than checking temperature alone.

---

### Health Status Function

Created a custom function:

health_status(
    temp,
    pressure,
    flow
)

The function returns:

- Normal
- Warning
- Critical

based on combined sensor conditions.

---

### Critical and Warning Rules

Critical condition:

if temp > 100 ||
    pressure > 2.3 ||
    flow < 100
    return "Critical"
end

Warning condition:

if temp > 85 ||
    pressure > 1.8 ||
    flow < 110
    return "Warning"
end

---

### DataFrame Column Generation

Generated a new status column:

df.status

using list comprehension and `eachrow(df)`.

Example:

df.status = [
    health_status(
        row.temperature,
        row.pressure,
        row.flow_rate
    )
    for row in eachrow(df)
]

---

### Status Summary

Used:

groupby(df, :status)

and:

combine(..., nrow => :count)

to count how many equipment records were Normal, Warning, or Critical.

---

### Data Visualization

Created a bar chart to summarize equipment status counts.

Output:

equipment_status_summary.png

---

## Challenges

### Challenge 1

Combining multiple conditions.

Learned how to use `||` to check whether any sensor condition reaches a warning or critical threshold.

---

### Challenge 2

Keeping variable names consistent.

The function parameters must match the values passed from each DataFrame row.

---

### Challenge 3

Understanding multi-sensor logic.

Temperature alone is not enough for equipment monitoring. Pressure and flow rate can also indicate abnormal equipment behavior.

---

## Semiconductor Analytics Relevance

Multi-sensor equipment monitoring is widely used in semiconductor manufacturing for:

- Equipment Health Monitoring
- Predictive Maintenance
- Process Stability Monitoring
- Maintenance Prioritization
- Smart Manufacturing Dashboards

This project moves from single-sensor anomaly detection toward a more realistic equipment monitoring workflow.

---

## Results

Completed:

- Multi-sensor status classification
- DataFrame status column generation
- Status count aggregation
- Equipment status summary visualization

Generated:

- equipment_status_summary.png

---

## Next Step

### Day17 - Equipment Health Score System

Topics:

- Health score calculation
- Equipment health levels
- Multi-sensor KPI design
- Equipment ranking foundation
