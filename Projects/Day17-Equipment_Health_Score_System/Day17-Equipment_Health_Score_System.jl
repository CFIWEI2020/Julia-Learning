using CSV
using DataFrames

file_path = joinpath(
    @__DIR__,
    "equipment_health_score.csv"
)

df = CSV.read(
    file_path,
    DataFrame
)
println(df)
println(size(df))
println(names(df))

function health_score(
    temperature,
    pressure,
    flow_rate
)
    score = 0
    # temperature
    if temperature <= 80
        score += 40
    elseif temperature <= 90
        score += 30
    elseif temperature <= 100
        score += 20
    else
        score += 10
    end

    # pressure
    if pressure <= 1.5
        score = score + 30
    elseif pressure <= 2.0
        score = score + 20
    elseif pressure <= 2.3
        score = score + 10
    else
        score = score + 0
    end

    # flow_rate
    if flow_rate >= 120
        score += 30
    elseif flow_rate >= 110
        score += 20
    elseif flow_rate >= 100
        score += 10
    else
        score += 0
    end

    return score
end

println(df)
# 新增Score 欄位
df.health_score = [
    health_score(
        row.temperature,
        row.pressure,
        row.flow_rate
    )
    for row in eachrow(df)
]

println(df)

function health_level(score)
    if score >= 80
        return("Excellent")
    elseif score >= 60
        return("Good")
    elseif score >= 40
        return("Warning")
    else
        return("Critical")
    end
end



df.level = [
    health_level(
        row.health_score
    )
    for row in eachrow(df)
]
println(df)

using Plots

p1 = bar(
    df.equipment_id,
    df.health_score,
    title = "Equipment Health Score",
    xlabel = "Equipment ID",
    ylabel = "Health Score"
)

savefig(
    p1,
    joinpath(@__DIR__, "equipment_health_score.png")
)
