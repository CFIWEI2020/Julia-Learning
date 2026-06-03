# Julia Learning Log

## Day01 - Variables

### Learned

- Variables
- Strings
- Integers
- `println()`

### Reflection

Started learning Julia and created my first GitHub repository.

## Day02 - Arrays

### Learned

- Arrays
- Indexing
- `sum()`

### Reflection

Arrays in Julia are 1-indexed, unlike many other languages.

## Day03 - Functions

### Learned

- Functions
- Parameters
- Return values

### Example

```julia
function add(a, b)
    return a + b
end
```

### Reflection

Functions allow code reuse and make programs easier to organize.

## Day04 - Conditions

### Learned

- `if`
- `else`
- `elseif`
- Comparison operators: `>`, `<`, `>=`, `<=`
- Logical operators: `&&`, `||`

### Example

```julia
temperature = 85
pressure = 1.3

if temperature > 80 && pressure > 1.2
    println("Equipment Alarm")
else
    println("Equipment Normal")
end
```

### Reflection

Today I learned how to use conditions to make decisions in a program.

I initially wrote `else pressure > 1.2` and discovered that Julia requires `elseif` when adding another condition.

This example is similar to monitoring semiconductor equipment parameters such as temperature and pressure. Conditional statements can be used for equipment alarms, sensor monitoring, and data analysis projects.

## Day05 - Loops

### Learned

- `for` loops
- Iteration
- Looping through arrays
- Combining loops and conditions

### Example

```julia
temperatures = [75, 78, 82, 85, 79]

for temp in temperatures
    if temp > 80
        println("Alarm")
    else
        println("Normal")
    end
end
```

### Reflection

Today I learned how to use loops to process multiple pressure readings automatically.

By combining loops with conditions, I can identify abnormal values and count equipment alarms. This is similar to monitoring semiconductor equipment sensor data.

## Day06 - Dictionaries

### Learned

- Dictionaries
- Key-value pairs
- Accessing dictionary values
- Looping through multiple dictionaries
- Combining dictionaries with conditions

### Example

```julia
equipments = [
    Dict(
        "temperature" => 85,
        "pressure" => 1.3
    ),
    Dict(
        "temperature" => 75,
        "pressure" => 1.1
    )
]

for equip in equipments
    println("Temperature = $(equip["temperature"])")
    println("Pressure = $(equip["pressure"])")
end
```

### Reflection

Today I realized that dictionaries can represent real equipment data.

Instead of storing temperature and pressure in separate variables, I can organize them into a single equipment record. This feels closer to how real-world semiconductor equipment monitoring systems work.

## Day07 - Structs

### Learned

- Structs
- Custom data types
- Object creation
- Attribute access
- Equipment monitoring logic

### Reflection

Created my first `Equipment` struct and simulated equipment monitoring with temperature, pressure, and flow rate alarms.

## Julia Fundamentals Assessment

Date: 2026-06-01

### Topics Covered

- Variables
- Arrays
- Functions
- Conditions
- Loops
- Dictionaries
- Structs

### Results

- Variables: Complete
- Arrays: Complete
- Functions: Need more practice with function calls
- Conditions: Complete
- Loops: Complete
- Dictionaries: Complete
- Structs: Complete

### Score

- 73 / 80
- Approximate understanding: 90%

### Reflection

Completed a self-assessment covering Julia fundamentals.

I can now create variables, arrays, functions, conditions, loops, dictionaries, and structs independently. The main area for improvement is using functions more naturally and building larger programs by combining multiple concepts together.

This assessment confirmed that I am ready to move from Julia syntax learning to real-world data processing using CSV files and DataFrames.

## Day08 - CSV Files

### What I Learned

- Installed and used CSV.jl and DataFrames.jl
- Created a CSV file to store equipment monitoring data
- Loaded CSV data into a DataFrame using `CSV.read()`
- Accessed DataFrame columns with `data[!, :column_name]`
- Used `eachrow(data)` to iterate through equipment records
- Applied conditional logic to detect temperature alarms

### Key Concepts

- CSV files are commonly used for storing manufacturing and equipment data.
- DataFrames allow structured data analysis similar to Excel tables.
- `data[!, :temperature]` extracts an entire column.
- `eachrow(data)` allows processing one equipment record at a time.

### Semiconductor Equipment Example

Created an equipment monitoring dataset:

| Tool ID | Temperature | Pressure | Flow Rate |
|---------|-------------|----------|-----------|
| A01 | 85 | 1.3 | 95 |
| A02 | 70 | 1.1 | 120 |
| A03 | 90 | 1.4 | 80 |

Implemented alarm logic:

- Temperature > 80: Temperature Alarm
- Otherwise: Normal

### Challenges Encountered

- Learned that DataFrame column names must exactly match CSV headers.
- Debugged column access errors caused by formatting issues.
- Learned the difference between column-based access and row-based access.

### Career Relevance

CSV and DataFrames are foundational tools for:

- Semiconductor equipment monitoring
- Process data analysis
- Yield analysis
- Machine learning datasets
- Applied Materials algorithm development projects

### Progress

Completed Day08 CSV Files successfully.

## Day09 - DataFrames

### What I Learned

- Loaded CSV data into a DataFrame
- Used `size()` to inspect dataset dimensions
- Used `names()` to view column names
- Calculated average, maximum, and minimum values using Statistics.jl
- Used `eachrow()` to iterate through equipment records
- Built temperature, pressure, and critical alarm detection logic

### Key Concepts

- DataFrames are table-like structures for data analysis.
- Columns can be accessed using `data.column_name`.
- `mean()`, `maximum()`, and `minimum()` are basic statistical functions.
- `eachrow()` allows row-by-row analysis.

### Reflection

Today I learned how to analyze equipment data using DataFrames. I calculated statistics and implemented alarm detection logic for semiconductor equipment monitoring. This is an important step toward data analysis and machine learning applications.

## Day10 - Statistics

### What I Learned

- `mean()`: calculate average values
- `maximum()`: find the highest value
- `minimum()`: find the lowest value
- `sum()`: calculate total values
- `median()`: find the middle value in sorted data
- `std()`: measure data variability

### Key Concepts

Average:

- Sum of all values divided by the number of values.

Median:

- The middle value after sorting the data.

Standard deviation:

- Measures how spread out the data is from the average.
- Lower standard deviation means the process is more stable.
- Higher standard deviation means the process may have larger variations.

### Practice

Created a temperature dataset:

```julia
temps = [70, 75, 85, 90, 80]
```

Calculated:

- Average temperature
- Maximum temperature
- Minimum temperature
- Median temperature
- Temperature standard deviation

### Equipment Health Report

Loaded `equipment.csv` into a DataFrame and generated an Equipment Health Report.

Calculated:

- Average temperature
- Maximum temperature
- Minimum temperature
- Temperature standard deviation

### Equipment Monitoring Logic

Calculated the average equipment temperature:

```julia
ave_temp = mean(data.temperature)
```

Detected equipment operating above average temperature:

```julia
if row.temperature > ave_temp
    println("$(row.tool_id) Above Average Temperature")
end
```

### Reflection

Today I learned how statistical analysis can be applied to semiconductor equipment data.

Instead of only reading raw sensor values, I can now calculate meaningful metrics such as average temperature, temperature stability, and equipment performance indicators.

This is an important step toward:

- Data analysis
- Semiconductor equipment analytics
- Machine learning
- Algorithm development

### Progress

Completed Day10 Statistics.

Julia fundamentals: 100% complete.

Next step: Day11 Visualization.

## Day11 - Visualization

Date: 2026-06-03

### Topics Learned

- Plots.jl
- Data visualization
- Line charts
- Bar charts
- Equipment Health Report visualization

### What I Practiced

Created a temperature trend chart:

```julia
temps = [70, 75, 85, 90, 80]

plot(
    temps,
    title = "Temperature Trend",
    xlabel = "Measurement",
    ylabel = "Temperature"
)
```

Created an equipment temperature bar chart:

```julia
bar(
    data.tool_id,
    data.temperature
)
```

Built an Equipment Health Report with an average temperature reference line:

```julia
avg_temperature = mean(data.temperature)

hline!(
    [avg_temperature],
    label = "Average Temperature"
)
```

### Key Takeaways

Visualization helps engineers understand equipment conditions quickly. Instead of reading raw numbers, charts make abnormal conditions easier to identify.

### Semiconductor Application

Visualization is commonly used for:

- Equipment monitoring
- Process stability analysis
- Yield analysis
- Predictive maintenance
- Manufacturing data analysis

### Challenges

- Learned how to install and use Plots.jl
- Learned how to visualize CSV data
- Learned how to combine DataFrames, Statistics, and visualization

### Latest Achievement

Built an Equipment Health Report using:

- CSV.jl
- DataFrames.jl
- Statistics.jl
- Plots.jl

Features:

- Temperature visualization
- Average temperature calculation
- Equipment health monitoring
- Data-driven analysis

## Overall Progress

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

## Next

- [ ] Day12 Equipment Data Analysis
- [ ] Day13 Wafer Yield Analysis
- [ ] Day14 Predictive Maintenance
