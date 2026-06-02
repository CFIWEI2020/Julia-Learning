
## 存取多同類型資料 (就用“位置”找資料)- > 這叫做Array (Vector)

#= 向量（Vector）是同時具備「大小（長度）」與「方向」的數學或物理量。
常見的例子包含速度、力、加速度和位移。相對地，只有大小而沒有方向的量稱為純量（如溫度、質量）。


 Equipment = 類別 / 藍圖（Struct）
tool1 = 依照藍圖建立出來的設備物件
=#

#定義Structs
struct Equipment
    temperature
    pressure
    flow_rate
end
#建立物件

tool1 = Equipment(85, 1.3, 120)

#讀取物件的屬性
println(tool1.temperature) # 85
println(tool1.pressure) # 1.3
println(tool1.flow_rate) # 120

#結合conditionals
if tool1.temperature > 80
    println("Temperature Alarm")
end

if tool1.pressure > 1.2
    println("Pressure Alarm")
end

if tool1.flow_rate > 100
    println("Flow Rate Alarm")
end