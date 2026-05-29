## 印出1 -> 10
for i in 1:10
    println(i)
end


## 平方數
for i in 1:10
    println(i^2)
end

## 設備溫度資料
tempertures = [75, 78, 82 ,85 ,79]
for temp in tempertures
    println(temp)
end

### 設備警報判斷
for temp in tempertures
    if temp > 80
        println("Alar: $temp")
    else
            println("Normal: $temp")
    end
end

### 工程師版

