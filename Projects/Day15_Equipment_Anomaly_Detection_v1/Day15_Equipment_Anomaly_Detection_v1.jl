#Step1 建立資料

#Step2 讀取資料
using CSV
using DataFrames
using Statistics

df = CSV.read(
    joinpath(@__DIR__, "equipment_anomaly.csv"),
    DataFrame
)

println(df)
println(size(df))
println(names(df))

#step3 計算出平均值
avg_temp = mean(
    df.temperature # 因為欄位名稱已固定已知；如果是動態整欄去找就要=> df[!, :temperature] 
)

println("Average Temperature = " , avg_temp)

#step4 建立異常判斷

function detect_anomaly(
    temp,
    avg_temp
)
    if temp > avg_temp + 20
        return "Anomaly"
    else
        return "Normal"
    end
end

println(detect_anomaly(85, avg_temp))
println(detect_anomaly(120, avg_temp))

#step5 新增欄位
df.status = [
    detect_anomaly(
        temp,
        avg_temp
    )
    for temp in df.temperature
]

println(df)
println(size(df))
println(names(df))

#step6 找出異常

anomaly_df = filter(
    row -> row.status == "Anomaly",
    df
)
println(anomaly_df)

using Plots

p1 = bar(
    df.equipment_id,
    df.temperature,
    title = "Equipment Temperature Anomaly Detection",
    xlabel = "Equipment ID",
    ylabel = "Temperature"
)

savefig(
    p1, # 把這個建造的表格
    joinpath(@__DIR__, "equipment_anomaly.png") #存在底下叫什麼名字和檔案格式
)
