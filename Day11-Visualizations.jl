# Day11-Visualizations(資訊視覺化)

using Plots

temps = [70, 75, 85, 90, 80]

plot(temps)

plot(
    temps,
    title = "Temperature Trend",
    xlabel = "Measuremnet",
    ylabel = "Temperature"
)



using Plots

tools = ["A01","A02","A03"]
temps = [85,70,90]

bar(
    tools,
    temps,
    title = "Equipment Temperature",
    xlabel = "Tool ID",
    ylabel = "Temperature"
)


using CSV 
using DataFrames

data = CSV.read(
    "equipment.csv",
    DataFrame
)

println(names(data))

bar(
    #data[!, :tool_id],
    #data[!, :temperature],
    data.tool_id,
    data.temperature,
    title = "Equipment Temperature",
    xlabel = "Tool ID",
    ylabel = "Temperature"
)

using Statistics
avg_temperature = mean(data[!, :temperature])
println(names(data))

bar(
    data.tool_id,
    data.temperature,
    title = "Equipment Health Report",
    xlabel = "Tool ID",
    ylabel = "Temperature",
    label = "Temperature"
)

hline!(
    [avg_temperature],
    label = "Average Temperature"
)