# Day12 Learning Log

Date: 2026-06-04

## Project

Equipment Health Dashboard v1

---

## Goal

Build a simple equipment health monitoring system using Julia.

The system reads equipment data, evaluates equipment conditions, and identifies abnormal equipment automatically.

---

## What I Learned

### CSV Processing

Used:

```julia
CSV.read()

DataFrames Operations

Learned how to:
names(df)
Inspect dataframe columns.

Custom Functions

Created:
check_status()
to classify equipment health conditions.

List Comprehension
[
    check_status(...)
    for row in eachrow(df)
]
to generate a new dataframe column.

DataFrameRow Access
row.pressure
and
df[!, :pressure]

Key takeaway:

* DataFrame uses df[!, :column]
* DataFrameRow uses row.column or row[:column]

Anonymous Functions
row -> row.status == "Critical"
filter()
to identify abnormal equipment.

Also learned the difference between:
->  Anonymous Function
=>  Pair / Key-Value mapping

Statistics

Used:
groupby()
combine()
to summarize equipment status distribution.

Challenges

Issue 1

Tried:
row[!, :pressure]
nside eachrow().

Received error because:
row
is a DataFrameRow, not a DataFrame.

Solution:
row.pressure
row[:pressure]

Issue 2

Confused between:
->
=>

Now understand:

* -> creates functions
* => creates pairs

Semiconductor Equipment Analytics Relevance

This project simulates a simplified version of equipment health monitoring used in semiconductor fabs.

Typical monitored variables include:

* Temperature
* Pressure
* Flow Rate
* Vacuum
* RF Power

The same workflow can be extended for:

* Fault Detection
* SPC Monitoring
* Predictive Maintenance
* Equipment Performance Analysis

Next Step

Day13

Equipment Dashboard Visualization

Planned tasks:

* Temperature histogram
* Pressure distribution chart
* Equipment status bar chart
* Dashboard-style reporting


---

