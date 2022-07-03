youbike<-read.csv("/Users/liuqingxuan/Downloads/youBike.csv")
View(youbike)
#自動辨識經緯度欄位
leaflet()%>%addCircles(data=youbike)
#指定經緯度欄位
leaflet()%>%addCircles(data=youbike,lat=~lat,lng=~lng)

getColor<-function(youbike){#設定不同震度的顏色
  sapply(youbike$tot ,function(tot){
    if(tot<=30){"green"
    }else if(tot<=40){"purple"
    }else{"orange"
    }
  })
}

icons<-awesomeIcons(
  icon='bolt',
  iconColor='blue',
  library='fa',
  markerColor = getColor(youbike)
)

map<-leaflet(youbike)%>%addProviderTiles("Stamen.Watercolor")%>%
  addAwesomeMarkers(~lng,~lat,icon=icons,
                    label = ~paste("tot:",as.character(tot),",lat:",as.character(lat),
                                   ",lng:",as.character(lng),",sbi:",as.character(sbi),
                                   ",sna:",as.character(sna)))
map

#Markers with Awesome Icons
getColor<-function(youbike){
  sapply(youbike$tot,function(tot){
    if(tot<=30){"green"
    }else if(tot<=40){"purple"
    }else{"orange"
    }
  })
}

icons<-awesomeIcons(
  icon ='fa-refresh fa-spin fa-3x fa-fw',#旋轉圖示技巧
  iconColor = 'blue',
  library='fa',
  markerColor = getColor(youbike)
)

map<-leaflet(youbike)%>%addProviderTiles("Stamen.Watercolor")%>%
  addAwesomeMarkers(~lng,~lat,icon=icons,
                    label=~paste("tot:",as.character(tot),",lat:",as.character(lat),
                                 ",lng:",as.character(lng),",sbi:",as.character(sbi),
                                 ",sna:",as.character(sna)))
map



map<-leaflet(youbike)%>%addProviderTiles("Stamen.Watercolor")%>%
  addAwesomeMarkers(~lng,~lat,icon=icons,
                    clusterOptions = markerClusterOptions(),#設定圖標聚合機制
                    label = ~paste("tot:",as.character(tot),",lat:",as.character(lat),
                                   ",lng:",as.character(lng),",sbi:",as.character(sbi),
                                   ",sna:",as.character(sna)))
map

#控制聚合圖標
map<-leaflet()%>%addProviderTiles("Stamen.Watercolor")%>%
  addMarkers(data=youbike,clusterOptions = markerClusterOptions(),clusterId = "quakesCluster")%>%
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
