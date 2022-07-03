# 安裝套件
install.packages("httr") #下載原始碼 類似python的requests 常用的功能:GET、POST、content
install.packages("jsonlite") #處理json格式的資料
install.packages("xml2")
install.packages("rvest") #讀取原始碼並尋找資料 從雜亂的網頁原始碼中找到需要的資訊 需要搭配 CSS selector或 Xpath使用 常用的功能:read_html、html_nodes、html_table
install.packages("stringr")
install.packages("dplyr")
install.packages("ggplot2")

#載入套件
library(httr)
library(jsonlite)
library(xml2)
library(rvest)
library(stringr)
library(dplyr)
library(ggplot2)

#設定工作目錄
setwd("/home/R")
getwd() #目前工作目錄

#資料讀取
X<-read.table("/Applications/視覺化R/DP-04-data.csv",sep=",",header=TRUE)
X
X$age #依類別顯示資料值
X$pay
View(X) #將資料形成表格檢視
X[1,2] #指定[橫行,直列]
X<-read.table("/Applications/視覺化R/DP-04-data.csv",sep=",",header=FALSE) # header=FALSE時第一列不是輸入資料值
X
X<-read.csv("/Applications/視覺化R/DP-04-data.csv",sep=",",header=TRUE) # read.csv直接指定讀取資料種類
X
X<-read.csv("/Applications/視覺化R/DP-04-data.csv",sep=",",header=FALSE)
X
X<-read.csv("/Applications/視覺化R/DP-04-data.txt",sep=",",header=TRUE)
X

X<-scan("") #讀取鍵盤輸入資料
my = scan(file="" , what=list(name="",pay=integer(0),sex=""))
my
mode(my)
View(my)

X<-scan("/Applications/視覺化R/DP-04-data2.csv",sep=",")
X
write.table(X,"/Applications/視覺化R/DP-04-data3.csv",
            row.names=FALSE,col.names=FALSE,sep=",")
data()
data(iris)
iris
euro