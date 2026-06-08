# Day15 Learning Log

Date: 2026-06-08

## Project

Equipment Anomaly Detection

---

## Goal

Learn how to detect abnormal equipment behavior using temperature data.

The objective is to identify potential equipment issues before failures occur.

---

## What I Learned

### Baseline Analysis

Calculated the average equipment temperature:

avg_temp = mean(df.temperature)

The average temperature serves as a baseline for anomaly detection.

---

### Threshold-Based Detection

Created a simple anomaly rule:

if temp > avg_temp + 20
    return "Anomaly"
else
    return "Normal"
end

This is a basic threshold-based anomaly detection method.

---

### Status Classification

Generated a new status column:

df.status

Possible values:

- Normal
- Anomaly

---

### Filtering Abnormal Equipment

Used:

filter()

to isolate anomalous equipment records.

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

Initially focused on fixed thresholds.

Learned that anomaly detection often compares values against a baseline rather than a fixed limit.

---

### Challenge 2

Understanding why averages are useful.

Average values provide a reference point for identifying abnormal measurements.

---

### Challenge 3

Filtering specific records.

Practiced using:

filter()

to extract anomalous equipment.

---

## Semiconductor Analytics Relevance

Anomaly detection is widely used in semiconductor manufacturing for:

- Temperature Monitoring
- Pressure Monitoring
- Flow Rate Monitoring
- Equipment Health Monitoring
- Predictive Maintenance

Engineers investigate anomalies before they become equipment failures.

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

### Day16 – Multi-Sensor Equipment Monitoring

Topics:

- Temperature
- Pressure
- Flow Rate
- Equipment Health Status
- Multi-Sensor Analysis
