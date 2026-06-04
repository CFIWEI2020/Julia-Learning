#=
目標

建立一個簡單的設備健康監控系統（Equipment Health Dashboard）

分析三種設備參數：

* Temperature（溫度）
* Pressure（壓力）
* Flow Rate（流量）

並自動判斷：

* Normal
* Warning
* Critical

=#

# Step 1：讀取資料
using CSV
using DataFrames
using Plots
using Statistics

df = CSV.read(
    "equipment_data.csv",
    DataFrame
)
println(df)
println(names(df))

#Step 2：設備狀態判斷函數
function check_status(temp,pressure)
    if temp > 100 || pressure > 2.3
        return "Critical"
    elseif temp >85 || pressure >1.8
        return "Warning"
    else
        return "Normal"
    end
end

#Step 3：新增 Status 欄位
df.status =[
    check_status(row.temperature, row[:pressure])
    for row in eachrow(df)
]

# Step 4：統計設備健康度
avg_temp = mean(df.temperature)
avg_pressure = mean(df.pressure)

println("Avege Temperature = " , avg_temp)
println("Aveage Pressure = " , avg_pressure)

#Step 5：統計各狀態數量
status_count = combine(
    groupby(df, :status),
    nrow => :count
)
println(status_count)

#Step 6：找出異常設備
critical_df = filter(
    row -> row.status == "Critical",
    df
)
println(critical_df)