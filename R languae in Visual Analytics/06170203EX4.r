test_Place<-read.csv("/Applications/視覺化R/data_test_Place.csv")

leaflet(data=test_Place)%>%addTiles()%>%
  setView(lng=121.533352,lat=25.015213,zoom=17)%>%
  addMarkers(~Lon,~Lat,popup=~as.character(Place))#圖標

leaflet(data=test_Place)%>%addTiles()%>%
  setView(lng=121.533352,lat=25.015213,zoom=17)%>%
  addMarkers(~Lon,~Lat,popup=~paste("這裡是：",as.character(Place)))

myIcon<-makeIcon(
  iconUrl = "https://media1.tenor.com/images/b2c85bda67c05e092c5c0d53aeda26f7/tenor.gif?itemid=9668712",
  iconWidth=60,iconHeight=60,
  iconAnchorX=22,iconAnchorY=94,
)
leaflet(data=test_Place)%>%addTiles()%>%
  setView(lng=121.533352,lat=25.015213,zoom=17)%>%
  addMarkers(~Lon,~Lat,popup=~as.character(Place),icon=myIcon)

print("06170203劉謦瑄")