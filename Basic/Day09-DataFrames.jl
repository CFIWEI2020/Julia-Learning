# 載入套件（package) / 匯入模組（Module)
using CSV
using DataFrames # 載入DataFrames套件
using Statistics 

data = CSV.read(
    "equipment.csv",
    DataFrame
)

println(data)
println(size(data))
#3列(3,4)
#4欄(3,4)


println("Average Temperature")
println(mean(data.temperature))

println("Maximum Temperature")
println(maximum(data.temperature))

println("Minimum Temperature")
println(minimum(data[!, :temperature]))


for row in eachrow(data)
    if row.temperature > 80
        println( "$(row.tool_id) Temperature Alarm")
    end
end

println("Average Temperature:")
println(mean(data.temperature))
println("Maximum Temperature")
println(maximum(data.temperature))
println("Minimum Temperature")
println(minimum(data[!, :temperature]))


# Challenge 
# pressure > 1.2
# 提示 row.pressure
for row in eachrow(data)
    if row.pressure > 1.2
        println("$(row.tool_id) Pressure Alarm")
    end
end



#=
temperature > 80 且
pressure >1.2
=#
println(names(data))
for row in eachrow(data)
    if row.temperature > 80 &&
        row.pressure > 1.2
        println("$(row.tool_id) Critical Alarm")
    end
end
