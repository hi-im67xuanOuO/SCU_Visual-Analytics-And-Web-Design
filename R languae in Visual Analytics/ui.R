library(shiny)
shinyUI(fluidPage(
  #網頁內容寫這裡
  titlePanel("我是劉謦瑄"),#標題面板
  sidebarLayout( #側邊排版
    sidebarPanel( #側邊欄面板
      #單選按鈕
      radioButtons("radio-1",label="選我選我：",
                   choices = list("選你-1"=1,"選你-2"=2)),
      #滑軸按鈕
      sliderInput("slider-1",label = "滑軸唷",
                  min=0,max=100,value=50)
    ),
    mainPanel = ("大家好，這裡是資料視覺化課程") #主內容面板
  )
))

