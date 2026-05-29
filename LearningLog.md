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

