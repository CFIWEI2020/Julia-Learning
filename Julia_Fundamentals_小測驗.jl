
# 第一題 Variables

name = "Marco"
age = 35

println("My name is $name")
println(age + 5)

# 第二題 Arrays

number =[10, 20, 30, 40]
number[3]

#= 第三題（Functions）
輸入兩個數字
回傳相等結果
=#

function mutiple(a,b)
    return a * b
end

println("回傳：", 3 * 5)

#第四題(Conditions)
#= 
temperature = 75
> 80 Alarm
否則 Ｎormal
=#

temperature = 75
if temperature > 80
    println("Alarm")
elseif temperature <80
    println("Normal")
end

#第五題(Loops)
temps = [70, 75, 85]
for i in temps
    println(i)
end

#第六題(Dictionary)
equipment = Dict(
    "temperature" => 85,
    "pressure" => 1.3
)

println("equipment")
println(equipment["temperature"])

#第七題(Struct)
#=wafer001
缺陷數量 5
=#

struct Wafer
    wafer_id
    defect_count
end

#進階題(半導體設備邏輯)
too1 = Equipment(
    85,
    1.3,
    95
)

wafer001 = Wafer(
    "wafer001",
    5
)
println(wafer001.wafer_id)
println(wafer001.defect_count)