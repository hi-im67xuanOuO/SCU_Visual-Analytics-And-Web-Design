View(quakes)
shinyServer(function(input,output){
  #處理內容寫在這
  output$resultA<-renderPlot({ #renderPlot()函式，繪製內容
    x <- quakes[,3]
    bins <-seq(min(x),max(x),length.out = 10)#設定軸線值域
    hist(x, breaks = bins , col='red',border='black') #設定方條
  })
})
