library(jsonlite)
library(xml2)
library(rvest)
library(stringr)
library(dplyr)
library(httr)
library(ggplot2)
doc <- GET("https://www.storm.mg/category/k19812")
content(doc,"text")
rent_html<- read_html(content(doc,"text"))
name<-html_nodes(rent_html,".card_title")
name<-html_text(name,"title")
name

name2<-html_nodes(rent_html,".info_author")
name2<- html_text(name2,"title")
name2

name3<-html_nodes(rent_html,".info_time")
name3<- html_text(name3,"title")
name3

df <- data.frame(
  title = name,
  author = name2,
  time = name3
)
View(df)

b<-data.frame(table(author),decreasing = T)
b
data_merge<-merge(df, b, by="author")
data_merge
par(family=("Heiti TC Light"))
wordcloud(
  words = substring(df$title,1,15),
  freq = data_merge$Freq,
  scale = c(1,.3),
  random.order = FALSE,
  ordered.colors = FALSE,
  rot.per = FALSE,
  min.freq = 7,
  colors = rainbow(length(data_merge$title)),
  shape = "circle"
)

print("06170203,劉謦瑄")

