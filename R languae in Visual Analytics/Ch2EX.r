class("test") # class 函數判斷資料屬性
class(10.10)
class(10)
class(as.integer(3)) # 因為 R 計算上是都是以雙倍精確度來計算，所以必須指定為 integer，不然都會被當成 numeric 看待
class(as.integer(3.1)) # as.integer 可以將不是整數的數值變成整數
class(as.integer(T)) # as.integer(T) = 1
class(as.integer(F)) # as.integer(T) = 0
class(2+2i)
class(TRUE) # 注意都要大寫，不可寫 True，但可以簡化成 T
class(T)
# character：文字字串
# numeric：實數
# integer：整數
# complex：複數
# logical：True 或 False

# as.integer 切記不可以傳 character 進去，因為會產生 NA，如果傳 complex 進去，則會將虛數的部份則會自動捨棄
# 可以用 is.integer(x) 判斷是否為整數

1+2
1-2
1*2
1/2
2^3 # 2的3次方
2**3 # 2的3次方
sqrt(4) # 4 的平方根
27^(1/3) # 27 的立方根
11%/%5 # 11 除以 5 的商數
11%%5 # 11 除以 5 的餘數

# sign 判斷是正負數或零
sign(10) # 正數回傳1
sign(0) # 0回傳0
sign(-10) # 負數回傳-1

# abs 取絕對值
abs(10)
abs(0)
abs(-10)

# log 以e為底
log(10)
log1p(9) # log(x)=log1p(x-1)
log(10,2) # 指定log以2為底
log2(10) # log2代表以2為底
log10(10) # log10代表以10為底

exp(10)
expm1(10) # expm1(x)=exp(x)-1
