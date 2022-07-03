# 變數
# <- 是拿來給予變數值
x<-1
y<-2
x+y
x1<-x2<-1 # x1與x2都是1
x1+x2

x=1
x
x=1.3
x
x=1+2i
x
x="test"
x
x=FALSE
x
x=10
exists("x")

# 向量
# c()為建立向量，向量元素必須是同個資料屬性
c(1,2,3)
c(1,TRUE,"test") # 全部都變成character
c(1.1,TRUE,"test") # 全部都變成character
c(1+2i,TRUE,"test") # 全部都變成character
c(1,TRUE) # 全部自動轉成integer
c(1.1,TRUE) # 全部自動轉成numeric
c(1+2i,TRUE) # 全部自動轉成complex
c(1,1.1) # 全部自動轉成numeric
c(1,1.1,1+2i) # 全部自動轉成complex
#強到弱為：character > complex > numeric > integer > logical

x<-c(joe=12,vicky=14,bob=17)
x[1] # 回傳向量元素所有資訊
x[[1]] # 回傳向量元素的值
x["joe"] # 回傳向量元素所有資訊
x[["joe"]] # 回傳向量元素的值
x[1:2] # 一次取多個向量元素

# x:y：回傳x到y的整數向量，所以x與y都是整數
# seq(s, e, by)：產生一個等差級數的向量，s是初始值，e是結束值，by是遞增值（預設是1）
# rep(x, times, each)：產生一個重覆循環的向量，x是需重覆循環的數值，times是重覆循環次數，each是x內元素重覆的次數
1:5
seq(1,5)
seq(1,5,0.3) # 就算沒有剛好加到跟結束值一樣也沒關係
rep(c(1,2,3),times=3,each=2)
rep(1:4,times=3,each=2)

c(3,4,2)+c(3,4,2)
c(3,4,2)-c(3,4,2)
c(3,4,2)*c(3,4,2)
c(3,4,2)/c(3,4,2)
length(c(3,4,2)) # 計算向量中的元素個數
sum(c(3,4,2)) # 將向量所有元素加總
prod(c(3,4,2)) # 將向量所有元素相乘
cumsum(c(3,4,2)) # 回傳元素累加向量
cumprod(c(3,4,2)) # 回傳元素累乘向量
sort(c(3,4,2)) # 將向量元素排列，產生排序過的向量
rank(c(3,4,2)) # 回傳各向量元素的排序值

c(1,2)+c(1,2,3) # 長度較長的向量長度是較短的倍數可以相加或相減
c(1,2)+c(1,2,3,4) # 1+1 2+2 1+3 2+4
c(1,2)*c(1,2,3) # 1*1 2*2 1*3
c(1,2)*c(1,2,3,4) # 1*1 2*2 1*3 2*4

# 陣列
# 陣列可視為多維度的向量變數，所有陣列元素的資料屬性必須一致
x<-c(1,2,3)
y<-c(4,5,6)
rbind(x,y) # rbind是利用row(橫)合併
cbind(x,y) # cbind是利用column(直)合併
array(x,c(1,3)) # c(1,3)代表產生1x3陣列
array(x,c(2,3)) # c(2,3)代表產生2x3陣列
array(x,c(3,3)) # c(3,3)代表產生3x3陣列

x<-c(1,2,3)
y<-c(4,5,6)
z=rbind(x,y)
z
z[,1] # 選取第一行(column、直)
z[1,] # 選取第一列(row、橫)
z[1,1:2] # 選取第一列第一到二行

x<-c(1,2,3)
y<-c(4,5,6)
z=rbind(x,y)
z
z+z
z-2*z
z*z
z/z
length(z) # 計算陣列中的所有元素個數
dim(z) # 列出維度資訊，前者是row，後者是column
ncol(z) # 計算(column、直)個數
nrow(z) # 計算(row、橫)個數
aperm(z) # 將陣列轉置（等同是從rbind轉成cbind）

# 矩陣
matrix(c(1:4),nrow=2,ncol=2) # 預設是按照column填入資料
matrix(c(1:4),nrow=2,ncol=2,byrow=TRUE) # 可以更改成按照row填入資料

x<-c(1,2,3)
y<-c(4,5,6)
z=rbind(x,y)
z
z[,1] # 選取第一行(column、直)
z[1,] # 選取第一列(row、橫)
z[1,1:2] # 選取第一列第一到二行

x<-c(1,2,3)
y<-c(4,5,6)
z<-rbind(x,y)
z
t(z) # 將矩陣轉置
z%*%z # 矩陣相乘。矩陣相乘要符合前者column維度=後者row維度，如果沒有會發生錯誤！
v<-z%*%t(z)
v
w<-diag(c(1,2,3)) # 傳入向量回傳一個對角矩陣
w
diag(w) # 傳入矩陣回傳矩陣對角線向量
det(v) # 計算矩陣行列式值，一定是要對稱矩陣
solve(v) # 傳回矩陣的反矩陣(適合解線性方程式)
b = c(1,1) # 解Ax=b，求出x向量A：變數v，b:變數b
solve(v,b)
u=matrix(1:9,nrow=3,ncol=3)
u
eigen(u) # 計算矩陣的特徵向量與特徵值

rownames(z) # 還沒修改的時候，是x與y，因為當初是利用兩個向量，用rbind組成，所以會利用向量的變數稱名當作row名稱
rownames(z)<-c("第一行","第二行")
rownames(z)
colnames(z)
colnames(z)<-c("第一列","第二列","第三列")
colnames(z)
z

# 因子
x<-c(1,2,4,3,1,2,3,4,1)
factor(x)
factor(x,labels=c("一","二","三","四")) # 可自訂Level的名稱
factor(x,ordered=TRUE) # ordered代表可做排序
factor(c(1,2,1,NA,2),exclude=NA) # exclude排除特定資料
factor(c(1,2,1,NA,2),exclude=2)
factor(c(1,2,1,NA,2),exclude=NULL) # 不排除任何資料

x[1] # []與[[]]結果一致，因為因子只有值沒有其他相關資料
x[[1]]
x[1:2] # 指標可以使用向量
x[c(1,3,6)]

x<-c(1,2,4,3,1,2,3,4,1)
as.factor(x) # 將變數轉為因子
is.factor(x) # 判斷是否為因子
is.factor(as.factor(x))
is.ordered(factor(x,ordered=TRUE)) # 判斷是否為排序過的因子
is.ordered(factor(x,ordered=FALSE))
as.ordered(factor(x)) # 將因子排序
which(x==1) # 找出符合條件(x等於1)的位置指標

# 列表
# 跟向量很相似，但最大的不同在於列表可以包含不同資料屬性的資料
x<-list(a=1,b=TRUE,c="test",d=c(1,2,3))
x
# 透過指標與名稱提取資料
x[1]
x[[1]]
x$b
x[[4]][1] # x[[4]]取出第四個值，因為第四個值是向量，所以可以再取一次指標，取出向量的元素值

x<-list(a=1,b=TRUE,c="test",d=c(1,2,3))
as.list(c(1,2,3)) # 建立列表
is.list(x) # 判斷是否為列表
attributes(x) # 查看所有元素的名稱，names也有相同功能
names(x)

# 資料框架
# 類似資料表，常當作大量資料集
name<-c("Joe","Bob","Vicky")
age<-c("28","26","34")
gender<-c("Male","Male","Female")
data<-data.frame(name,age,gender)
View(data)
data
data[1,]
data[,1]
data[1, 1]
data[,"name"]
data[1:2,"name"]
data$name[1:2]
data
head(data) # 因為筆數不夠多，所以全部都顯示
head(data, 1L) # 只顯示第一筆資料
names(data)
names(data)<-c("n","a","g")
names(data)
colnames(data)
row.names(data)
row.names(data)<-c("r1","r2","r3")
row.names(data)
rownames(data)
summary(data)
