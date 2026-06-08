using CSV
using DataFrames

df = CSV.read(
    "equipment_mutisensor.csv",
    DataFrame
)

println(df)
println(names(df))

function health_status(
    temp,
    pressure,
    flow
)
    if temp > 100 ||
        pressure > 2.3 ||
        flow < 100
        return "Critical"
    elseif temp > 85 ||
        pressure > 1.8 ||
        flow < 110
        return "Warning"
    else 
        return "Normal"
    end
end

println(df)

df.status = [
    health_status(
        row.temperature,
        row.pressure,
        row.flow_rate
    )
    for row in eachrow(df)
]

println(df)

status_count = combine(
    groupby(df, :status),
    nrow => :count
)

println(status_count)

using Plots

p1 = bar(
    status_count.status,
    status_count.count,
    title = "Eeuipment Status Summary",
    xlabel = "Status",
    ylabel = "Count"
)

savefig(
    p1,
    "equipment_status_summary.png"
)