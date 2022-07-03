# 用GET功能把591租屋網搜尋台北市租屋的結果擷取出來
doc <-GET("https://rent.591.com.tw/index.php?module=search&action=rslist&is_new_list=1&type=1&searchtype=1®ion=0&listview=txt&firstRow=40&totalRows=54040")
# 用content功能觀察剛拿下來的網頁內容
content(doc,"text")
# 把剛擷取的網頁內容，從json格式轉換成R容易處理的格式
df <- fromJSON(content(doc,"text"))
View(df)
df[[main]] #df的main裡有什麼資料
rent_data<- df[["main"]] #從df找到我們需要的main部分
rent_html<- read_html(content(doc,"text")) #用rvest的read_html功能讀取rent_data
name<-html_nodes(rent_html,".lightBox em") #用html_nodes功能，搭配剛取得的css selector來尋找特定資料的節點
name<- html_text(name,"title") # 取出節點中的主要部分，title
name

country<-html_nodes(rent_html,".txt-sh-region")
country<-html_text(country)
town<-html_nodes(rent_html,".txt-sh-section")
town<-html_text(town)
area<-html_nodes(rent_html,".area")
area<-html_text(area)
price<-html_nodes(rent_html,".price .fc-org")
price<-html_text(price)

#最後把資料存到DataFrame格式檔案中
rent_df <-data.frame(
  country = country,
  town = town,
  name = name,
  area = area,
  price = price
)
View(rent_df)

# 只要改動網址中 firstRow的數字,就能爬取其他頁面的資料

# 把爬蟲好的資料輸出成csv
write.table(rent_df,file = "/Applications/視覺化R/rent_df.csv",sep=",",row.names = FALSE)
