# Julia Learning Log

## Day 1

Learned:
- Variables
- Strings
- Integer
- println()

Reflection:
Started learning Julia and created my first GitHub repository.

## Day 2

Learned:
- Arrays
- Indexing
- sum()

Reflection:
Arrays in Julia are 1-indexed, unlike many other languages.



## Day 3 

learned:
- Functions
- Parameters
- Return values

Example:

function add(a,b)
    return a+b
end

Reflection:

Functions allow code reuse and make programs easier to organize.



## Day 4

Learned:
- if
- else
- elseif
- Comparison operators (>, <, >=, <=)
- Logical operators (&&, ||)

Example:

temperature = 85
pressure = 1.3

if temperature > 80 && pressure > 1.2
    println("Equipment Alarm")
else
    println("Equipment Normal")
end

Reflection:

Today I learned how to use conditions to make decisions in a program.

I initially wrote:

else pressure > 1.2

and discovered that Julia requires `elseif` when adding another condition.

I also learned how to use `&&` (AND) to check multiple conditions at the same time.

This example is similar to monitoring semiconductor equipment parameters such as temperature and pressure.

Reflection:

Conditional statements can be used to monitor equipment status.

In the future, I can apply this logic to equipment alarms, sensor monitoring, and data analysis projects.

## Day 5

Learned:
- for loop
- iteration
- looping through arrays
- combining loops and conditions

Example:

temperatures = [75, 78, 82, 85, 79]

for temp in temperatures
    if temp > 80
        println("Alarm")
    else
        println("Normal")
    end
end

Charllen example!

Reflection:

Today I learned how to use loops to process multiple pressure readings automatically.

By combining loops with conditions, I can identify abnormal values and count equipment alarms.

This is similar to monitoring semiconductor equipment sensor data.

## Day 6

Learned:
- Dictionaries
- Key-Value pairs
- Accessing dictionary values
- Looping through multiple dictionaries
- Combining dictionaries with conditions

Example:

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

Reflection:

Today I realized that dictionaries can represent real equipment data.

Instead of storing temperature and pressure in separate variables, I can organize them into a single equipment record.

This feels closer to how real-world semiconductor equipment monitoring systems work.

## Day 7

Learned:

- Struct
- Custom Data Types
- Object Creation
- Attribute Access
- Equipment Monitoring Logic 

Reflection:

created my first Equipment strcut and simulated equipment mornitoring with temperature , pressure and flow rate alarms.

Evaluation exam by acknowledging self.

## Julia Fundamentals Assessment

Date: 2026-06-01

Topics Covered:

- Variables
- Arrays
- Functions
- Conditions
- Loops
- Dictionaries
- Structs

Results:

- Variables ✅
- Arrays ✅
- Functions ⚠️ (Need more practice with function calls)
- Conditions ✅
- Loops ✅
- Dictionaries ✅
- Structs ✅

Score:

- 73 / 80
- Approximate Understanding: 90%

Reflection:

Completed a self-assessment covering Julia fundamentals.

I can now create variables, arrays, functions, conditions, loops, dictionaries, and structs independently.

The main area for improvement is using functions more naturally and building larger programs by combining multiple concepts together.

This assessment confirmed that I am ready to move from Julia syntax learning to real-world data processing using CSV files and DataFrames.

Next Step:

- Day08 CSV Files
- Day09 DataFrames
- Day10 Statistics


# Learning Log

## Day08 - CSV Files

### What I Learned
- Installed and used CSV.jl and DataFrames.jl
- Created a CSV file to store equipment monitoring data
- Loaded CSV data into a DataFrame using CSV.read()
- Accessed DataFrame columns with data[!, :column_name]
- Used eachrow(data) to iterate through equipment records
- Applied conditional logic to detect temperature alarms

### Key Concepts
- CSV files are commonly used for storing manufacturing and equipment data.
- DataFrames allow structured data analysis similar to Excel tables.
- data[!, :temperature] extracts an entire column.
- eachrow(data) allows processing one equipment record at a time.

### Semiconductor Equipment Example
Created an equipment monitoring dataset:

| Tool ID | Temperature | Pressure | Flow Rate |
|----------|------------|----------|-----------|
| A01 | 85 | 1.3 | 95 |
| A02 | 70 | 1.1 | 120 |
| A03 | 90 | 1.4 | 80 |

Implemented alarm logic:

- Temperature > 80 → Temperature Alarm
- Otherwise → Normal

### Challenges Encountered
- Learned that DataFrame column names must exactly match CSV headers.
- Debugged column access errors caused by formatting issues.
- Learned the difference between column-based access and row-based access.

### Career Relevance
CSV and DataFrames are foundational tools for:
- Semiconductor equipment monitoring
- Process data analysis
- Yield analysis
- Machine Learning datasets
- Applied Materials algorithm development projects

### Progress
Completed Day08 CSV Files successfully.

## Day09

Learned:

- DataFrames
- Data Inspection
- Mean
- Maximum
- Minimum
- Equipment Alarm Detection

Reflection:

Today I learned how to analyze data using DataFrames.

I calculated average, maximum, and minimum values from equipment data and built simple alarm detection logic.

This is my first step toward semiconductor equipment analytics and machine learning.