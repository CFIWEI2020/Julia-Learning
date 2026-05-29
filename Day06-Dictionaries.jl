equipemts = Dict(
    "temperature" => 85,
    "pressure" => 1.3,
    "flow_rate" => 120,
)
println(equipemts)
println(equipemts["temperature"])
println(equipemts["pressure"])

#設備監控版
equipemts = Dict(
    "temperature" => 85,
    "pressure" => 1.3,
    "flow_rate" => 120,
)

if equipemts["temperature"] > 80
    println("temperature Alarm")
end

if equipemts["pressure"] > 1.2
    println("Pressure Alarm")
end

## 挑戰題
equipment = Dict(
    "temperature" => 85,
    "pressure" => 1.3,
    "flow_rate" => 120
)
#=temperature > 80
→ Temperature Alarm

pressure > 1.2
→ Pressure Alarm

否則
→ Equipment Normal
=#

# for equip in equipment
#     println("Pending")
if equipment["temperature"] > 80
        println("Temperature Alarm")
    elseif equipment["pressure"] > 1.2
        println("Presssure Alarm")
    else
            println("Equipment Normal")
    end
end


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
    if equip["temperature"] > 80
        println("Temperature Alarm")

    elseif  equip["pressure"] > 1.2
        println("Pressure Alarm")

    else 
       println("Equipment Normal")
    end
end

for equip in equipments

    println("Temperature = $(equip["temperature"])")
    println("Pressure = $(equip["pressure"])")

end
for equip in equipments
    println("Temperature = $(equip["temperature"])")
    println("pressure = $(equip["pressure"])")
end


