#=
Temperature
Pressure
Flow Rate

↓
Health Score
↓
Risk Score
↓
Risk Level
↓
Sort by Risk Score
↓
Highest Risk Equipment
↓
Maintenance Action
=#

using DataFrames

df = DataFrame(
    equipment_id = ["EQ001", "EQ002", "EQ003", "EQ004", "EQ005",],
    health_score = [10,90,60,30,10]
)

println(df)


df.risk_score =[
    
    100 - score

    for score in df.health_score
]

function risk_level(score)

    if score >= 80
        return "Very High"
    elseif score >=60
        return "High"
    elseif score >=40
        return "Medium"
    else
        return "Low"
    end
end

df.risk_level = [
    risk_level(score)
    for score in df.risk_score
]

#=
1.如果你是設備工程師：
Very High 你會怎麼做？
B 的立即安排維修

2.接下來High你會怎麼做？
A的一週內檢查

3.Medium你會怎麼做？
A的持續監控

4.Low你會怎麼做？
B的正常運轉
=#

function maintenance_action(level)
    if level == "Very High"
        return "Maintenance Immediately"
    elseif level == "High"
        return "Maintenance Within 7 Days"
    elseif level == "Medium"
        return "Operation Monitoring"
    elseif level == "Low"
        return "Normal Operation"
    else
        return "Monitoring"
    end 
    
end


df.maintenance_action = [
    maintenance_action(level)
    for level in df.risk_level
]

risk_df = sort(
    df,
    :risk_score,
    rev = true
)

highest_risk_equipment = risk_df[1,:]

println(highest_risk_equipment)





#=
建立 df
↓
建立 risk_score
↓
定義 risk_level()
↓
建立 df.risk_level
↓
定義 maintenance_action()
↓
建立 df.maintenance_action
↓
sort by risk_score
↓
取 risk_df[1, :]

=#