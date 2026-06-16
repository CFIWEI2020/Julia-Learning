using DataFrames
using Plots

#沿用Day20的資料
df = DataFrame(
    equipment_id = ["EQ001", "EQ002", "EQ003", "EQ004", "EQ005"],
    health_score = [10, 90, 60, 30, 10]
)

#Step 3：建立 risk_score
df.risk_score = [
    100 - score 
    for score in df.health_score #→ df 裡面的 health_score 欄位 
]

println(df)

function risk_level(score)
    if score >= 80
        return "Very High"
    elseif score >= 60
        return "High"
    elseif score >= 40
        return "Medium"
    else
        return "Low"
    end
end


p1 = histogram(
    df.risk_score,
    title = "Risk Score Distribution",
    xlabel = "Risk Score",
    ylabel = "Count",
)
savefig(
    p1,
    "Risk Score Distribution.png"
)


#Step 4：建立 risk_level()
df.risk_level = [
    risk_level(score)
    for score in df.risk_score
]

risk_df = sort(
    df,
    :risk_score,
    rev=true)

risk_level_count = combine(
    groupby(df , :risk_level),
    nrow => :count
)
println(df)

p2 = bar(
    risk_level_count.risk_level,
    risk_level_count.count,
    title = "Risk Level Summary",
    xlabel = "Risk_level", 
    ylabel = "Count",
)

savefig(
    p2,
    "Risk Level Summary.png"
)



p3 = bar(
    risk_df.equipment_id,
    risk_df.risk_score,
    title = "Equipment Risk Ranking",
    xlabel = "Equipment_id",
    ylabel = "Risk_score"
)

savefig(
    p3,
    "Equipment Risk Ranking.png"
)


#=
建立 df
↓
建立 risk_score
↓
建立 risk_level
↓
統計 risk_level_count
↓
畫 p1
↓
畫 p2
↓
排序 risk_df
↓
畫 p3

=#