install.packages("ggmap")
install.packages("mapproj")
install.packages("maps")
install.packages("ggplot2")
install.packages("leaflet")
library(maps)
library(ggmap)
library(mapproj)
library(ggplot2)
library(leaflet)

map_Taiwan<-get_map(location='Taiwan',zoom=8)
ggmap(map_Taiwan)

map_SCU<-get_map(
  location = c(lon=121.5435534,lat=25.0952321),
  zoom=15,language="zh-TW")
ggmap(map_SCU)

world_map<-map_data("world")
View(world_map)
sort(unique(world_map$region))#唯一化、排序
my<-c("Taiwan")
myGO<-map_data("world",region=my)
ggplot(myGO,aes(x=long,y=lat,group=group,fill=region))+
  geom_polygon(colour="black")+
  scale_fill_brewer(palette="Set3")

my2<-c("Taiwan","Japan","China")
myGO2<-map_data("world",region=my2)
ggplot(myGO2,aes(x=long,y=lat,group=group,fill=region))+
  geom_polygon(colour="black")+
  scale_fill_brewer(palette="Set3")

map<-leaflet()
map<-addTiles(map)
map<-addMarkers(map,lng=121.545949,lat=25.093574,popup="東吳巨資")
map

SCU_Place<-read.csv("/Applications/視覺化R/data_SCU_Place.csv")

map<-leaflet(SCU_Place)%>%
  addTiles() %>%
  setView(lng=121.545949,lat=25.093574,zoom=17)
map%>% addCircleMarkers(radius=~Visit,color="red",fill=TRUE)

leaflet(data=SCU_Place)%>%addTiles()%>%
  setView(lng=121.545949,lat=25.093574,zoom=16)%>%
  addMarkers(~Lon,~Lat,popup=~as.character(Place))#圖標

leaflet(data=SCU_Place)%>%addTiles()%>%
  setView(lng=121.545949,lat=25.093574,zoom=16)%>%
  addMarkers(~Lon,~Lat,popup=~paste("這裡是：",as.character(Place)))

myIcon<-makeIcon(
  iconUrl = "https://media1.tenor.com/images/b2c85bda67c05e092c5c0d53aeda26f7/tenor.gif?itemid=9668712",
  iconWidth=60,iconHeight=60,
  iconAnchorX=22,iconAnchorY=94,
)
leaflet(data=SCU_Place)%>%addTiles()%>%
  setView(lng=121.545949,lat=25.093574,zoom=16)%>%
  addMarkers(~Lon,~Lat,popup=~as.character(Place),icon=myIcon)

print("06170203劉謦瑄")