# Day14 Learning Log

Date: 2026-06-07

## Project

Equipment Trend Analysis

---

## Goal

Learn how to analyze equipment behavior over time using time-series data.

The objective is to detect trends before equipment reaches a critical condition.

---

## What I Learned

### Time Series Analysis

Unlike Day13, which focused on dashboard visualization, Day14 introduced time-based analysis.

Example:

plot(
    df.date,
    df.temperature
)

This allows visualization of temperature changes over time.

---

### Trend Analysis

Temperature values:

75
78
80
85
92

Although the final temperature is below the critical threshold of 100, the upward trend suggests increasing risk.

Key takeaway:

Trend direction can be more important than a single measurement.

---

### Statistical Analysis

Learned how to calculate:

maximum(df.temperature)

mean(df.temperature)

Results:

- Maximum Temperature = 92
- Average Temperature = 82.0

---

### Warning Detection

Created a custom function:

function trend_status(temp)

    if temp >= 90
        return "Warning"
    else
        return "Normal"
    end

end

Used List Comprehension to generate a new status column.

---

### Filtering Data

Used:

filter(
    row -> row.status == "Warning",
    df
)

to identify abnormal records.

---

## Challenges

### Challenge 1

Column name errors.

Encountered:

date not found

Solution:

Used:

println(names(df))

to verify DataFrame column names.

---

### Challenge 2

Typographical mistakes in plotting parameters.

Examples:

maker = :cicle

Correct:

marker = :circle

---

### Challenge 3

Case-sensitive string comparison.

Incorrect:

row.status == "warning"

Correct:

row.status == "Warning"

---

## Semiconductor Analytics Relevance

Trend analysis is commonly used in semiconductor manufacturing to monitor:

- Chamber Temperature
- Pressure
- Flow Rate
- RF Power
- Vacuum Stability

The goal is to identify abnormal behavior before equipment failure occurs.

---

## Results

Generated:

- temperature_trend.png

Calculated:

- Maximum Temperature
- Average Temperature

Detected:

- Warning Conditions

---

## Next Step

### Day15 – Equipment Anomaly Detection

Topics:

- Baseline Analysis
- Outlier Detection
- Threshold Monitoring
- Equipment Anomaly Detection
- Predictive Maintenance Foundations
