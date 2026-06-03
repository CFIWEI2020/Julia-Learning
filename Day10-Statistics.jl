using Statistics 
using CSV # Comma-Separated Values 每個檔案都要,去分開
using DataFrames# 表格式資料結構,類似 Excel ,類似 Python Pandas

# mean()      平均值 （一組數據的總和，除以數據個數。）
# maximum()   最大值
# minimum()   最小值
# sum()       總和
# median()    中位數 （一組數據由小到大排列後，最中間的那個數。）
# std()       標準差 （Standard Deviation，簡稱 std）
#             數據的「分散程度」，代表這些數值距離平均數的「平均距離」或波動大小。

temps = [70, 75, 85, 90, 80]

println(mean(temps))
println(maximum(temps))
println(minimum(temps))
println(sum(temps))
println(median(temps))
println(std(temps)) #標準差 
#= 
std  標準差通常都用在：
Temperature Stability
Pressure Stability
Flow Stability
=#

data = CSV.read(
    "equipment.csv",
    DataFrame
)

#println(mean(data[!, :temperature]))
println(mean(data.temperature))
#println(maximum(data[!, :temperature]))
println(maximum(data.temperature))
#println(minimum(data[!, :temperature]))
println(minimum(data.temperature))
#println(std(data[!, :temperature]))
println(std(data.temperature))

# Day10 Challenge
# Equipment Health Report
println("===Equipment Health Report===")
println("Average Temperature:")
println(mean(data[!, :temperature]))
println("Maximum Temperature:")
println(maximum(data.temperature))
println("Minimum Temperature:")
println(minimum(data[!, :temperature]))
println("Temperature Std:")
println(std(data.temperature))

# Calculate average temperature
ave_temp = mean(data[!, :temperature])
println("Average Temperature = $ave_temp")

# check which tools are above average temperature
println(names(data))
for row in eachrow(data)
    if row.temperature > ave_temp
        println("$(row.tool_id) Above Average Temperature")
    end
end
