#=
哪些設備最好？
哪些設備最差？
優先維修哪台？
=#

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

function health_score(temperature, pressure, flow_rate)
    score = 0

    if temperature <= 80
        score += 40
    elseif temperature <= 90
        score += 30
    elseif temperature <= 100
        score += 20
    else
        score += 10
    end

    if pressure <= 1.5
        score += 30
    elseif pressure <= 2.0
        score += 20
    elseif pressure <= 2.3
        score += 10
    end

    if flow_rate >= 120
        score += 30
    elseif flow_rate >= 110
        score += 20
    elseif flow_rate >= 100
        score += 10
    end

    return score
end


df.health_score = [
    health_score(row.temperature, row.pressure, row.flow_rate)
    for row in eachrow(df)
]
println(names(df))

ranking_df = sort(
    df,
    :health_score,
    rev = true
)

println(ranking_df)

#Step 2 新增 Ranking
ranking_df.rank = 1:nrow(ranking_df)
println(df)

#Step 3 找出最佳設備
best_equipment = ranking_df[1,:]
#Step 4 找出最差設備
worst_equipment = ranking_df[end,:]

#Step 5 Maintenance Priority
function maintenance_priority(score)
    if score <= 40
        return "high"
    elseif score <=60
        return "Medium"
    else
        return "Low"
    end
end

#新增欄位
ranking_df.priority = [
    maintenance_priority(score)

    for score in ranking_df.health_score
]
print(df)

# Dashboard

using Plots

print(names(df))

p1 = bar(
    ranking_df.equipment_id,
    ranking_df.health_score,
    title = "Equipment Health Ranking",
    xlabel = "Equipemnt ID",
    ylabel = "Health Score"
)

savefig(
    p1,
    "equipment_ranking.png"
)