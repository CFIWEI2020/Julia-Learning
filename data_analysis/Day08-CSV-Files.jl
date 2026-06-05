using CSV            # Comma-Separated Values 每個檔案都要,去分開
using DataFrames     # 表格式資料結構,類似 Excel ,類似 Python Pandas
using Statistics     # 統計學 mean(), std(), median()

data = CSV.read(
    "equipment.csv",
    DataFrame
)
println(data)
println(names(data))
println(data[!, :temperature])
mean(data[!, :temperature])

for temp in data[!, :temperature]

    if temp > 80
        println("Temperature Alarm")
    else
        println("Normal")
    end

end

for row in eachrow(data)
    if row.temperature > 80
        println("$(row.tool_id) Temperature Alarm")
    else
        println("$(row.tool_id) Normal")
    end
end
    
