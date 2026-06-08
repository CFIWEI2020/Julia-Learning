#讀資料 → 建立 status → 建立 status_count → 畫圖 → 存圖

using CSV
using DataFrames
using Plots

df = CSV.read(
    joinpath(@__DIR__, "data", "equipment_data.csv"),
    DataFrame
)
println(df)
println(names(df))

function check_status(temp, pressure)
    if temp > 100 || pressure > 2.3
        return "Critical"
    elseif temp > 85 || pressure > 1.8
        return "Warning"
    else
        return "Normal"
    end
end

df.status = [
    check_status(row.temperature, row.pressure)
    for row in eachrow(df)
]

status_count = combine(
    groupby(df, :status),
    nrow => :count
)

println(df)
println(status_count)

p1 = histogram(
    df.temperature,
    bins = 5,
    title = "Temperature Distribution"
)

savefig(
    p1,
    joinpath(@__DIR__, "output", "temperature_distribution.png")
)

p2 = histogram(
    df.pressure,
    bins = 5,
    title = "Pressure Distribution"
)
savefig(
    p2,
    joinpath(@__DIR__, "output", "pressure_distribution.png")
)

p3 = bar(
    status_count.status,
    status_count.count,
    title = "Equipment Status",
    xlabel = "Status",
    ylabel = "Count"
)
savefig(
    p3,
    joinpath(@__DIR__, "output", "equipment_status.png")
)

p4 = bar(
    df.equipment_id,
    df.temperature,
    title = "Equipment Temperature",
    xlabel = "Equipment ID",
    ylabel = "Temperature"
)
savefig(
    p4,
    joinpath(@__DIR__, "output", "equipment_temperature.png")
)

p5 = bar(
    df.equipment_id,
    df.pressure,
    title = "Equipment Pressure",
    xlabel = "Equipment ID",
    ylabel = "Pressure"
)
savefig(
    p5,
    joinpath(@__DIR__, "output", "equipment_pressure.png")
)

#=
histogram(
    df.pressure,
    bins = 5,
    title = "Pressure Distribution"
)


bar(
    status_count.status,
    status_count.count,
    title = "Equipment Status",
    xlabel = "Status",
    ylabel = "Count"
)

println(df)
println(names(df))

bar(
    df.equipment_id,
    df.temperature,
    title = "Equipment Temperature",
    xlabel = "Equipment ID",
    ylabel = "Temperature"
)

bar(
    df.equipment_id,
    df.pressure,
    title = "Equipment Pressure",
    xlabel = "Equipment ID",
    ylabel = "Pressure"
)
=#
