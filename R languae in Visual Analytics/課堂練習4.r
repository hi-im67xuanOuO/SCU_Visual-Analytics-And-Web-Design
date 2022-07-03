install.packages("leafleft")
library(leaflet)

map<-leaflet() # 建立leaflet物件
map<-addTiles(map) #建立預設的地圖資料
map<-addMarkers(map,lng=121.545949,lat=25.093574,popup="東吳巨資")#建立標點
map

#限定地圖的長方形範圍
map<-leaflet()%>%addTiles()%>%
  fitBounds(121.544148,25.095502,121.546383,25.09291)
map

#消除地圖範圍，所以變成全球地圖
map<-leaflet()%>%addTiles()%>%
  clearBounds()
map

#設定地圖的中心座標位置以及縮放比例
map<-leaflet()%>%addTiles()%>%
  setView(lng=121.545949,lat=25.093574,zoom=18)
map

#經緯度的欄位名稱會自動判斷
df=data.frame(Lat=1:20,Long=rnorm(20))
leaflet(df)%>%addCircles()

SCU_Place2<-read.csv("/Applications/視覺化R/data_SCU_Place2.csv")
View(SCU_Place2)
#自動辨識經緯度欄位
leaflet()%>%addCircles(data=SCU_Place2)
#指定經緯度欄位
leaflet()%>%addCircles(data=SCU_Place2,lat=~Lat,lng=~Lon)

#Markers with Awesome Icons
df.quakes<-quakes[1:66,]
View(df.quakes)

getColor<-function(quakes){#設定不同震度的顏色
  sapply(quakes$mag,function(mag){
    if(mag<=4){"green"
    }else if(mag<=5){"purple"
    }else{"orange"
    }
  })
}

icons<-awesomeIcons(
  icon='bolt',
  iconColor='blue',
  library='fa',
  markerColor = getColor(df.quakes)
)

map<-leaflet(df.quakes)%>%addProviderTiles("Stamen.Watercolor")%>%
  addAwesomeMarkers(~long,~lat,icon=icons,
                    label = ~paste("lat:",as.character(lat),",long:",as.character(long),
                                   ",depth:",as.character(depth),",mag:",as.character(mag),
                                   ",stations:",as.character(stations)))
map

#Markers with Awesome Icons
getColor<-function(quakes){
  sapply(quakes$mag,function(mag){
    if(mag<=4){"green"
    }else if(mag<=5){"purple"
    }else{"orange"
    }
  })
}

icons<-awesomeIcons(
  icon ='fa-refresh fa-spin fa-3x fa-fw',#旋轉圖示技巧
  iconColor = 'blue',
  library='fa',
  markerColor = getColor(df.quakes)
)

map<-leaflet(df.quakes)%>%addProviderTiles("Stamen.Watercolor")%>%
  addAwesomeMarkers(~long,~lat,icon=icons,
                    label=~paste("lat:",as.character(lat),",long",as.character(long),
                                 ",depth:",as.character(depth),",mag:",as.character(mag),
                                 ",stations:",as.character(stations)))
map

#使用quakes大資料集
map<-leaflet(quakes)%>%addProviderTiles("Stamen.Watercolor")%>%
  addAwesomeMarkers(~long,~lat,icon=icons,
                    label = ~paste("lat:",as.character(lat),",long:",as.character(long),
                                   ",depth:",as.character(depth),",mag:",as.character(mag),
                                   ",stations:",as.character(stations)))
map
map<-leaflet(quakes)%>%addProviderTiles("Stamen.Watercolor")%>%
  addAwesomeMarkers(~long,~lat,icon=icons,
                    clusterOptions = markerClusterOptions(),#設定圖標聚合機制
                    label = ~paste("lat:",as.character(lat),",long:",as.character(long),
                                   ",depth:",as.character(depth),",mag:",as.character(mag),
                                   ",stations:",as.character(stations)))
map

#控制聚合圖標
leaflet()%>%addProviderTiles("Stamen.Watercolor")%>%
  addMarkers(data=quakes,clusterOptions = markerClusterOptions(),clusterId = "quakesCluster")%>%
  addEasyButton(easyButton(#使用leaflet 的easyButton,建立聚合圖標的開關機制
    states =list(
      easyButtonState(#聚合圖標可以打開
        stateName="unfrozen-markers",icon="ion-toggle",title="Freeze Clusters",
        onClick =JS("
                    function(btn,map){
                    var clusterManager=
                    map.layerManager.getLayer('cluster','quakesCluster');
                    clusterManager.freezeAtZoom();
                    btn.state('frozen-markers');
                    }")  ),
      easyButtonState( #聚合圖標不可以打開
        stateName = "frozen-markers",icon="ion-toggle-filled",title="UnFreeze Clusters",
        onClick = JS("
                     function(btn,map){
                     var clusterManager=
                     map.layerManager.getLayer('cluster','quakesCluster');
                     clusterManager.unfreeze();
                     btn.state('unfrozen-markers');
                     }")  )
      )))
map
