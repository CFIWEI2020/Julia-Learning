age = 42
if age >= 18
    println("Audlt")
else
    println("Child")
end

score = 85
if score >=90
    println("A")
elseif score >= 80
    println("B")
else
    println("C")
end


## 半導體設備情境
temperature = 85
if temperature > 80
    println("Warning: High temperature")
else
    println("Temperature Normal")
end

## 壓力監控
pressure = 1.5
if pressure > 2 
    println("Pressure Too High")
elseif pressure >1.2
    println("Pressure Too Low")
else pressure < 0.8
    println("Pressure Normal")
end

###挑戰題
## temputer > 80 且 pressure > 1.2

temperature = 85
pressure = 1.3
if temperature > 80
    println("Temperature Alarm")
elseif pressure > 1.2
    println("Pressure Alarm")
else
    println("Normal")
end


## temputer > 80 且 pressure > 1.2(&& 而且的意思 ; || 或者)
if temperature > 80 && pressure > 1.2
    println("Temperature Alarm")
elseif pressure > 1.2
    println("Pressure Alarm")
else
    println("Normal")
end


 temputer = 85
 pressure = 1.3
 flow_rate = 95
if  temperature > 80 &&
    pressure > 1.2 &&
    flow_rate >100
    
    println("Chamber Alarm")
else
    println("System Normal")
end


