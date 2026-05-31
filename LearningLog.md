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