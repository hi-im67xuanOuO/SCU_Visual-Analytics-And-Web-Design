# 常見的邏輯判斷符號
x <- 5
y <- 10
x > 3
x >= 6
!(x > 3) # 前面多加一個有否定功能，所以 True 變成 False，如果是 False 則變成 True
x %in% c(1:6) # x是否在c(1:6)中
x > 4 || y > 10
x > 4 && y > 10
z = c(1,2,3)
# &&、＆:交集。& 適用於向量式的邏輯判斷，&& 適用於單一值的邏輯判斷
# ||、| :聯集。| 適用狀況與 & 相同，|| 適用狀況與 && 相同
z > 0 & z > -1
z > 0 && z > -1 # && 只可以比較單一值，所以只有抓 z 的第一元素跟 0 與 -1 比較

# 條件執行

x <- 1
if(x>0){
  y<-5
}else{
  y<-10
}
y
if(x>0) y<-5 else y<-10 # 也可寫成單行，與上同
y
y <- ifelse(x > 0, 5, 10) # 利用 ifelse(判斷式, True 給 5, False 給 10)。
y
x <- -1
y <- 5
if(x>0){
  y<-5
}else if(x>2){
  y<-10
}else{
  y<-3
}
y
# switch(回傳數值代表執行第幾個程式片段, 程式片段 1, ..., 程式片段 N)
# switch(回傳名稱代表執行哪個名稱的程式片段, 程式名稱 A 片段, ..., 程式名稱 N 片段)
switch(3, 10, 3 + 5, 3 / 3)
switch(1, 10, 3 + 5, 3 / 3)
switch(2, 10, 3 + 5, 3 / 3)
switch("first", first = 1 + 1, second = 1 + 2, third = 1 + 3)
switch("second", first = 1 + 1, second = 1 + 2, third = 1 + 3)
switch("third", first = 1 + 1, second = 1 + 2, third = 1 + 3)

# 迴圈結構
y <- 0
for (x in c(1:10)) y <- x + y # 1加到10，迴圈就是重複執行相同動作，x依序帶入1到10，第一次帶入1時y=0，所以是1+0=1，第二次帶入時，x=1，y已經變成1，所以變成1+1=2，一直延續到x=10迴圈就停止


y <- 0
for (x in c(1:10)) {
  y <- x+y
}
x <- 1
y <- 0
while (x<=10){
  y <- x+y
  x<- x+1
}

x<-1
y<-0
# repeat 與 while 有點類似，只是判斷式的部份，可以比較自由寫在括號內任一地方，且跳出迴圈是利用 break 方式。
repeat{
  repeat{
    if(x>10) break # break 是會執行跳出迴圈的動作
  }
  y <-x+y
  x <-x+1
}

x <- 1
y <- 0
repeat{
  if(x>10){
    break
  }else if(x==5){
    x<-x+1
    next # next 是指跳過此次的迴圈，執行下一次的迴圈
  }
  y<-x+y
  x<-x+1
}
