Sys.getlocale(category = "LC_ALL")
Sys.setlocale(category = "LC_ALL", locale = "zh_TW.UTF-8")

X<-read.table("/Users/liuqingxuan/Downloads/視覺化/106人口.csv",sep=",",header=TRUE)
X
View(X)
place<-substr(X$site_id, start=1,stop=3)
place
place_end<-place[2:369]
place_end

place2<-substr(X$site_id[2:369],start=4,stop=6)
place2
df<-data.frame(
  year = X$statistic_yyy[2:369],
  place_end = place_end,
  place2=place2,
  total = X$people_total[2:369],
  area = X$area[2:369]
  )
View(df)


average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='新北市'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
新北市<-average
新北市

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='臺北市'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
台北市<-average
台北市

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='桃園市'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
桃園市<-average
桃園市

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='臺中市'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
台中市<-average
台中市

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='臺南市'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
台南市<-average
台南市

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='高雄市'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
高雄市<-average
高雄市

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='宜蘭縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
宜蘭縣<-average
宜蘭縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='新竹縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
新竹縣<-average
新竹縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='苗栗縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
苗栗縣<-average
苗栗縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='彰化縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
彰化縣<-average
彰化縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='南投縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
南投縣<-average
南投縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='雲林縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
雲林縣<-average
雲林縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='嘉義縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
嘉義縣<-average
嘉義縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='屏東縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
屏東縣<-average
屏東縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='臺東縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
台東縣<-average
台東縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='花蓮縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
花蓮縣<-average
花蓮縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='澎湖縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
澎湖縣<-average
澎湖縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='基隆市'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
基隆市<-average
基隆市

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='新竹市'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
新竹市<-average
新竹市

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='金門縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
金門縣<-average
金門縣

average<-0
total<-0
area<-0
for(n in 1:368){
  if(df$place_end[[n]]=='連江縣'){
    total<-total+as.integer(as.character(df$total[[n]]))
    area<-area+ as.numeric(as.character(df$area[[n]]))
  }
  average<-total/area
}
連江縣<-average
連江縣


density<-rbind(新北市,台北市,桃園市,台中市,台南市,高雄市,宜蘭縣,新竹縣,苗栗縣,彰化縣,南投縣,雲林縣,嘉義縣,屏東縣,台東縣,花蓮縣,澎湖縣,基隆市,新竹市,金門縣,連江縣)

density<-data.frame(
  density
)
View(density)



write.table(density,"/Users/liuqingxuan/Downloads/106人口整理.csv",row.names=TRUE,col.names=FALSE,sep=",")
