# Day15 Learning Log

Date: 2026-06-08

## Project

Equipment Anomaly Detection

---

## Goal

Learn how to identify abnormal equipment behavior using temperature data.

The objective is to detect potential equipment issues before failures occur.

---

## What I Learned

### Baseline Analysis

Calculated the average equipment temperature:

avg_temp = mean(df.temperature)

The average value serves as a baseline for anomaly detection.

---

### Threshold-Based Detection

Created a simple anomaly rule:

if temp > avg_temp + 20
    return "Anomaly"
else
    return "Normal"
end

This is one of the simplest forms of anomaly detection.

---

### Status Classification

Generated a new status column:

df.status

to store anomaly results.

Possible values:

- Normal
- Anomaly

---

### Filtering Anomalies

Used:

filter()

to extract abnormal equipment records.

Example:

anomaly_df = filter(
    row -> row.status == "Anomaly",
    df
)

---

### Data Visualization

Created a bar chart to compare equipment temperatures.

Output:

equipment_anomaly.png

---

## Challenges

### Challenge 1

Understanding baseline values.

Initially focused only on fixed thresholds.

Learned that anomaly detection often compares measurements against a baseline rather than a fixed limit.

---

### Challenge 2

Understanding why averages are useful.

Average values provide a reference point for determining whether a measurement is unusually high or low.

---

### Challenge 3

Filtering specific records.

Practiced using:

filter()

to isolate abnormal equipment.

---

## Semiconductor Analytics Relevance

Anomaly detection is commonly used in semiconductor manufacturing for:

- Temperature Monitoring
- Pressure Monitoring
- Flow Rate Monitoring
- Equipment Health Monitoring
- Predictive Maintenance

Engineers often investigate anomalies before they become equipment failures.

---

## Results

Completed:

- Baseline Calculation
- Threshold Detection
- Status Classification
- Equipment Filtering
- Visualization

Generated:

- equipment_anomaly.png

---

## Next Step

### Day16 – Multi-Sensor Anomaly Detection

Topics:

- Temperature
- Pressure
- Flow Rate
- Combined Equipment Health Score
- Advanced Equipment Monitoring

The goal is to move from single-sensor analysis to multi-sensor equipment monitoring

Day12 Equipment Health Dashboard
↓
Day13 Dashboard Visualization
↓
Day14 Trend Analysis
↓
Day15 Anomaly Detection