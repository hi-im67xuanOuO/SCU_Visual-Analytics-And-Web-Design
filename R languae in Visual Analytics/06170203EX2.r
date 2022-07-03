library(jsonlite)
library(xml2)
library(rvest)
library(stringr)
library(dplyr)
library(httr)
library(ggplot2)
library(wordcloud)
library(RColorBrewer)
doc <- GET("https://pansci.asia/hots/month")
content(doc,"text")

rent_html<- read_html(content(doc,"text"))
name<-html_nodes(rent_html,".title")
name<-html_text(name,"title")
name
name_end<-name[3:33]
name_end

name2<-html_nodes(rent_html,".last")
name2<- html_text(name2,"title")
name2
name2_end<-name2[5:34]
name2_end

frame<-data.frame(name_end)
frame
frame_end<-frame[-31, ]
frame_end

df <- data.frame(
  title = frame_end,
  times = name2_end
)
df
View(df)

df$rank<-c(1:30)
df
View(df)

level<-ifelse(as.numeric(name2_end)>29999,"1","2")

df <- data.frame(
  title = frame_end,
  times = name2_end,
  level = level
)
df
View(df)

number<-nchar(as.character(df$title))
number
data_merge <- data.frame(
  title = frame_end,
  times = name2_end,
  level = level,
  number = number
)
data_merge
View(data_merge)
name2_end<-as.numeric(name2_end)

par(family=("Heiti TC Light"))
wordcloud(
  words = substring(df$title,1,30),
  freq = name2_end,
  scale = c(1,.5),
  random.order = FALSE,
  ordered.colors = FALSE,
  rot.per = FALSE,
  min.freq = 1,
  colors = rainbow(length(data_merge$title)),
)

print("學號：06170203")
print("姓名：劉謦瑄")

