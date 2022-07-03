# 重新編碼
data <- iris #使用r內建的資料
data$Sepal.Length <- ifelse(data$Sepal.Length>5,1,2)# Sepal.Length 如果大於 5 會變成 1，不會就會變成 2
data$Species <- ifelse(data$Species %in% c(setosa), "IsSetosa","Notsetosa")
x<-c(1,5,12,18,19,21,25,31)
cut(x,c(0, 10, 20, 30, 40), c(5, 15, 25, 35))
# cut 函數是透過切割點，重新賦予資料新的數值，本範例的切割的範圍是 0 ~ 10、10 ~ 20、20 ~ 30、30 ~ 40，0 ~ 10 範圍的賦予新的值是 5)

#資料變形
data <- iris # 使用 R 內建的資料
stack_data <- stack(data) # stack 函數將各行資料排成一直行，unstack 則是還原成未 stack 之前形態。
library("longitudinalData")
data <- artificialJointLongData # 此種資料稱作為縱向資料(Longitudinal Data)，通常是單一物體重複測量值所產生的資料，記錄方式可以用長型資料(long format)或寬型資料(wide format)
data_long = reshape(data, direction="long", varying = list(c("v0", "v1", "v2", "v3", "v4", "v5", "v6", "v7", "v8", "v9", "v10"), c("w0", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8", "w9", "w10"), c("x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10")), v.names = c("v", "w", "x"), idvar = "id") # 利用 reshape 函數將資料從 wide 轉成 long
data_wide = reshape(data_long, direction="wide",v.names = c("v", "w", "x"), idvar = "id") # 利用 reshape 函數將資料從 long 轉成 wide

#資料合併與分割
x <- c(1, 2, 3)
y <- c(10, 20, 30)
union(x ,y) # union 如英文名稱就是取聯集
rbind(x, y) # 透過 row 合併
cbind(x, y) # 透過 column 合併
x <- cbind(c("Tom", "Joe", "Vicky"), c(27, 29, 28))
y <- cbind(c("Tom", "Joe", "Vicky"), c(178, 186, 168))
colnames(x) <- c("name", "age")
colnames(y) <- c("name", "tall")
merge(x, y, by = "name") # 將 data.frame 透過一個欄位進行合併
x <- cbind(c("Tom", "Joe", "Vicky", "Bob"), c(27, 29, 28, 25))
y <- cbind(c("Tom", "Joe", "Vicky", "Bruce"), c(178, 186, 168, 170))
colnames(x) <- c("name", "age")
colnames(y) <- c("name", "tall")
merge(x, y, by = "name", all = T) # alt 是用來詢問是否顯示所有資料，像 Bob 與 Bruce 都有一欄資料沒有，所以沒下 all = T，應該不會出現 Bob 與 Bruce 資料
merge(x, y, by = "name", all.x = T) # 只顯示 x 有的資料，所以 Bruce 就不會出現
merge(x, y, by = "name", all.y = T) # 只顯示 y 有的資料，所以 Bob 就不會出現

#資料分割
data <- iris
split(data, sample(rep(1:2, 75))) # rep(1:2, 75) 產生 1,2 交錯的向量，但加了前面的 sample 則是隨機抽取，所以向量 1,2 會被打亂，split 會依照 sample(rep(1:2, 75)) 分組，都是 1 的會在同一組，都是 2  的也會在同一組。
data <- iris
subset(data, Sepal.Length > 5) # 只會出現 Sepal.Length > 5 的資料
subset(data, Sepal.Length > 5,select = Sepal.Length) # 只會出現 Sepal.Length > 5 的資料且欄位只有 Sepal.Length，select 代表會出現的欄位
subset(data, Sepal.Length > 5,select = -Sepal.Length) # selct = 負的代表不要出現的欄位
