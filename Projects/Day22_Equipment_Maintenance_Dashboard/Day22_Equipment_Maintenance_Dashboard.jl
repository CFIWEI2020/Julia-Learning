#=
找誰？
↓
filter()

有多少？
↓
groupby() + combine()

排順序？
↓
sort()

畫分類？
↓
bar()

畫分數分布？
↓
histogram()
----------------------------

Health Score
↓
Risk Score
↓
Risk Level
↓
Maintenance Action

├─ Maintenance Summary
│
│  groupby()
│  combine()
│
│  maintenance_count
│
│  p1 = bar()
│
├─ Immediate Maintenance List
│
│  filter()
│
│  immediate_df
│
└─ Maintenance Priority Ranking
   
   sort(
       :risk_score,
       rev = true
   )
   
   priority_df
   ↓
   priority_df[1,:]
   ↓
   highest_priority_equipment

=#
using DataFrames
using Plots

# Step 1 建立資料

df = DataFrame(
    equipment_id = ["EQ001", "EQ002", "EQ003", "EQ004", "EQ005"],
    health_score = [10, 90, 60, 30, 10]
)

# Step 2 建立 risk_score

df.risk_score = [
    100 - score
    for score in df.health_score
]

# Step 3 建立 risk_level

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

df.risk_level = [
    risk_level(score)
    for score in df.risk_score
]

# Step 4 建立 maintenance_action

function maintenance_action(level)

    if level == "Very High"
        return "Maintenance Immediately"

    elseif level == "High"
        return "Maintenance Within 7 Days"

    elseif level == "Medium"
        return "Operation Monitoring"

    else
        return "Normal Operation"

    end

end

df.maintenance_action = [
    maintenance_action(level)
    for level in df.risk_level
]

println(df)

# ==========================
# Maintenance Summary
# ==========================

maintenance_count = combine(

    groupby(
        df,
        :maintenance_action
    ),

    nrow => :count

)

println(maintenance_count)

p1 = bar(
    maintenance_count.maintenance_action,
    maintenance_count.count,
    title = "Maintenance Action Summary",
    xlabel = "Maintenance Action",
    ylabel = "Count"
)

savefig(
    p1,
    "Maintenance_Action_Summary.png"
)

# ==========================
# Immediate Maintenance List
# ==========================

immediate_df = filter(

    row -> row.maintenance_action ==
        "Maintenance Immediately",

    df

)

println(immediate_df)

# ==========================
# Maintenance Priority Ranking
# ==========================

priority_df = sort(

    immediate_df,

    :risk_score,

    rev = true

)

println(priority_df)

highest_priority_equipment = priority_df[1,:]

println()
println("Highest Priority Equipment")
println(highest_priority_equipment)
