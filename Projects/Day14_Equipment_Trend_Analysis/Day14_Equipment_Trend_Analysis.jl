# 1.建立資料 equipment_trend.csv 
# 2.讀取資料 CSV,DataFrame,Plots,Statistics

using CSV
using DataFrames
using Plots
using Statistics

df = CSV.read(
    joinpath(@__DIR__, "equipment_trend.csv"),
    DataFrame
)

println("Data Loaded Successfully")
println(size(df))
println(names(df))

#3.畫出 Temperature Trend
p1 = plot(
    df.date,
    df.temperature,
    marker = :circle,
    title = "Equipment Temperature Trend",
    xlabel = "Date",
    ylabel = "Temperature"
)

savefig(
    p1,
    joinpath(@__DIR__, "temperature_trend.png")
)

#4.找出最高溫
#=
max_tempe = maximum(
    df[!,:temperature]
) 這樣是 可以動態指定欄位
=#

max_tempe = maximum(
    df.temperature
)
println("Maximum Temperature = ", max_tempe)

#5 平均溫度

avg_temp = mean(
    df.temperature
)
println("Average Temperature = " , avg_temp)

# 趨勢警告

function trend_status(temp)
    if temp >= 90
        return "Warning"
    else
        return "Normal"
    end
end

df.status =[
    trend_status(temp)
    for temp in df.temperature
]

warning_df = filter(
    row -> row.status == "Warning",
    df
)
println(df)
println(warning_df)
