# Julia Learning for Semiconductor Data Analytics

This repository documents my Julia programming learning journey, with a focus on building the programming foundation needed for semiconductor equipment analytics, data analysis, and future machine learning projects.

## Career Target

Target roles:

- Algorithm Developer
- Data / AI Engineer for semiconductor manufacturing
- Computer Vision / Machine Learning Engineer

Target companies:

- Applied Materials (AMAT)
- ASML
- TSMC AI / ML related positions

## Learning Goal

My goal is to build a practical foundation for:

- Programming logic
- Data structures
- CSV and tabular data processing
- Statistical analysis
- Data visualization
- Semiconductor equipment monitoring
- Future Python, machine learning, and computer vision projects

## Progress

- [x] Day01 Variables
- [x] Day02 Arrays
- [x] Day03 Functions
- [x] Day04 Conditions
- [x] Day05 Loops
- [x] Day06 Dictionaries
- [x] Day07 Structs
- [x] Day08 CSV Files
- [x] Day09 DataFrames
- [x] Day10 Statistics
- [x] Day11 Visualization
- [x] Day12 Equipment Data Analysis
- [ ] Day13 Wafer Yield Analysis
- [ ] Day14 Predictive Maintenance

## Latest Achievement

### Day11 Visualization

Built an Equipment Health Report using:

- CSV.jl
- DataFrames.jl
- Statistics.jl
- Plots.jl

Features:

- Temperature Visualization
- Equipment Temperature Dashboard
- Average Temperature Analysis
- Equipment Health Monitoring
- Alarm Trend Visualization

Example Analysis:

- Temperature Trend Chart
- Equipment Temperature Bar Chart
- Equipment Health Report
- Average Temperature Reference Line

## Current Semiconductor Example

The current dataset simulates basic semiconductor equipment sensor data:

| Tool ID | Temperature | Pressure | Flow Rate |
|---------|-------------|----------|-----------|
| A01 | 85 | 1.3 | 95 |
| A02 | 70 | 1.1 | 120 |
| A03 | 90 | 1.4 | 80 |

The analysis currently includes:

- Loading equipment data from CSV
- Inspecting tabular data with DataFrames.jl
- Calculating average, maximum, minimum, median, and standard deviation
- Detecting temperature and pressure alarms
- Creating equipment temperature visualizations
- Adding an average temperature reference line

## Example Logic

Temperature alarm detection:

```julia
if row.temperature > 80
    println("$(row.tool_id) Temperature Alarm")
else
    println("$(row.tool_id) Normal")
end
```

Critical alarm detection:

```julia
if row.temperature > 80 && row.pressure > 1.2
    println("$(row.tool_id) Critical Alarm")
end
```

## Repository Structure

| File | Purpose |
|------|---------|
| `LearningLog.md` | Daily learning notes and reflections |
| `Career Goal.md` | Career roadmap toward semiconductor algorithm roles |
| `equipment.csv` | Sample equipment monitoring dataset |
| `Day01-Variables.jl` - `Day07-Structs.jl` | Julia fundamentals |
| `Day08-CSV-Files.jl` | CSV loading and equipment alarm logic |
| `Day09-DataFrames.jl` | DataFrame analysis and alarm detection |
| `Day10-Statistics.jl` | Statistical analysis for equipment data |
| `Day11-Visualizations.jl` | Equipment health visualization |

## Skills Demonstrated

- Julia programming fundamentals
- DataFrame-based data processing
- Basic statistical analysis
- Equipment alarm rule design
- Data visualization
- Semiconductor equipment analytics thinking

## Roadmap

Julia fundamentals are now complete. The next step is to move from learning exercises toward portfolio-level projects:

1. Equipment Data Analysis
   - Larger simulated equipment dataset
   - Alarm summary by tool
   - Health score calculation

2. Wafer Yield Analysis
   - Lot-level and wafer-level yield data
   - Correlation analysis
   - Yield loss investigation

3. Predictive Maintenance
   - Time-series equipment sensor data
   - Trend analysis
   - Early warning indicators

4. Computer Vision Defect Detection
   - Python and OpenCV
   - Defect image preprocessing
   - Basic classification or detection workflow

## Long-Term Direction

Julia -> Python -> Data Analysis -> Machine Learning -> Computer Vision -> Semiconductor Algorithm Projects

# Equipment Health Dashboard v1

## Project Overview

This project simulates a simple semiconductor equipment health monitoring system.

The system analyzes equipment operating parameters and automatically classifies equipment status into:

- Normal
- Warning
- Critical

The goal is to practice data analysis workflows commonly used in semiconductor manufacturing and equipment engineering environments.

---

## Dataset

Input file:

equipment_data.csv

Columns:

| Column | Description |
|----------|----------|
| equipment_id | Equipment ID |
| temperature | Equipment Temperature |
| pressure | Equipment Pressure |
| flow_rate | Equipment Flow Rate |

Example:

| equipment_id | temperature | pressure | flow_rate |
|-------------|-------------|----------|----------|
| EQ001 | 75 | 1.2 | 100 |
| EQ002 | 82 | 1.5 | 95 |
| EQ003 | 95 | 2.1 | 80 |
| EQ004 | 68 | 1.1 | 105 |
| EQ005 | 105 | 2.5 | 70 |

---

## Equipment Status Rules

### Critical

- Temperature > 100
OR
- Pressure > 2.3

### Warning

- Temperature > 85
OR
- Pressure > 1.8

### Normal

All other conditions.

---

## Technologies Used

- Julia
- CSV.jl
- DataFrames.jl
- Statistics.jl

---

## Workflow

### Step 1

Load equipment data.

### Step 2

Create equipment status classification function.

### Step 3

Generate a new status column.

### Step 4

Calculate average equipment metrics.

### Step 5

Count equipment status distribution.

### Step 6

Identify critical equipment.

---

## Example Output

### Status Summary

| Status | Count |
|----------|----------|
| Normal | 3 |
| Warning | 1 |
| Critical | 1 |

### Critical Equipment

| Equipment ID |
|----------|
| EQ005 |

---

## Future Improvements

- Equipment trend analysis
- Data visualization dashboard
- Real-time equipment monitoring
- Predictive maintenance alerts
- Machine learning anomaly detection

---

## Author

Wei Wang

Learning Project for Semiconductor Equipment Data Analytics
