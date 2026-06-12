#=
哪台設備需要維修？

什麼時候修？

優先順序？
=#
using CSV
using DataFrames
using Dates

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


df = DataFrame(
    date = [
        Date("2026-06-01"),
        Date("2026-06-02"),
        Date("2026-06-03"),
        Date("2026-06-04"),
        Date("2026-06-05")
    ],

    equipment_id = [
        "EQ001",
        "EQ002",
        "EQ003",
        "EQ004",
        "EQ005"
    ],

    temperature = [75,78,80,85,92],

    pressure = [
        1.2,
        1.3,
        1.5,
        1.8,
        2.2
    ],

    flow_rate = [
        125,
        123,
        120,
        110,
        95
    ]
)
println(names(df))
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

#Maintenance Priority
function maintenance_priority(score)
    if score <= 40
        return "high"
    elseif score <=60
        return "Medium"
    else
        return "Low"
    end
end


ranking_df = sort(df, :health_score)

ranking_df.priority = [
    maintenance_priority(score)
    for score in ranking_df.health_score
]

println(ranking_df)

#新增欄位
ranking_df.priority = [
    maintenance_priority(score)

    for score in ranking_df.health_score
]
print(df)



# 新增 Recommendation
function recommendation(level)
    if level == "Critical"
        return "Schedule Maintence Immediately"
    elseif level == "Warning"
        return "Inspect Within 7 Days"
    elseif level == "Good" 
        return "Continue Monitoring"
    else 
        return "Normal Operation"
    end
end 

# 新增 欄位

df.recommendation = [
    recommendation(
        row.level
    )

    for row in eachrow(df)
]

println(df)

#找出需要立即維修設備
critical_df = filter(
    row -> row.level == "Critical",
    df
)

println(critical_df)

using Plots

p1 = bar(
    df.equipment_id,
    df.health_score,
    title = "Predictive Maintenance Dashboard",
    xlabel = "Equipment ID",
    ylabel = "Health Score"
)

savefig(
    p1,
    "predictive_maintenance_dashboard.png"
)