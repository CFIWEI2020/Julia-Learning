## 印出1 -> 10
for i in 1:10
    println(i)
end


## 平方數
for i in 1:10
    println(i^2)
end

## 設備溫度資料
tempertures = [75, 78, 82 ,85 ,79]
for temp in tempertures
    println(temp)
end

### 設備警報判斷
for temp in tempertures
    if temp > 80
        println("Alar: $temp")
    else
            println("Normal: $temp")
    end
end

### 工程師版
 
#=
pressure > 1.2
 -> High pressure

 其他
 -> Normal
=#


pressures = [0.9, 1.1, 1.3, 0.8, 1.4]
for press in pressures
    if press > 1.2
        println("$press -> High Pressure")
    elseif press < 1.0
        println("$press -> Low Pressure")
    else
        println("$press -> Normal")
    end
end



#=  設備監控
Pressure > 1.2
-> Alarm

Pressure < 1.0
->Alarm

其他
-> Normal
=#
pressures = [0.9, 1.1, 1.3, 0.8, 1.4]
for press in pressures
    if press > 1.2
        println("Alarm")
    elseif press < 1.0
        println("Alarm")
    else
        println("Normal")
    end
end


# 加入計時器
alarm_count = 0

pressures = [0.9, 1.1, 1.3, 0.8, 1.4]

for press in pressures
    if press > 1.2
        println("$press -> Alarm")
        alarm_count += 2
        println("Current Count = $alarm_count")
    elseif press < 1.0
        println("$press -> Alarm")
        alarm_count += 1
        println("Current Count = $alarm_count")
    else
        println("$press -> Normal")
    end
end

println("Totoal Alarms = $alarm_count")
