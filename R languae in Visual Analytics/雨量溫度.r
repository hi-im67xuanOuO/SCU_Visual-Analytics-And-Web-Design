X10<-read.csv("/Users/liuqingxuan/Downloads/2017_10.csv")
X11<-read.csv("/Users/liuqingxuan/Downloads/2017_11.csv")
X12<-read.csv("/Users/liuqingxuan/Downloads/2017_12.csv")
X1<-read.csv("/Users/liuqingxuan/Downloads/2018_1.csv")
X2<-read.csv("/Users/liuqingxuan/Downloads/2018_2.csv")
X3<-read.csv("/Users/liuqingxuan/Downloads/2018_3.csv")
X4<-read.csv("/Users/liuqingxuan/Downloads/2018_4.csv")
X5<-read.csv("/Users/liuqingxuan/Downloads/2018_5.csv")
X6<-read.csv("/Users/liuqingxuan/Downloads/2018_6.csv")
X7<-read.csv("/Users/liuqingxuan/Downloads/2018_7.csv")
X8<-read.csv("/Users/liuqingxuan/Downloads/2018_8.csv")
X9<-read.csv("/Users/liuqingxuan/Downloads/2018_9.csv")
TOTAL<-rbind(X10,X11,X12,X1,X2,X3,X4,X5,X6,X7,X8,X9)
View(TOTAL)

for(n in 1:21576){
  TOTAL$YYYMM[n]<-10610
}
for(n in 21577:42456){
  TOTAL$YYYMM[n]<-10611
}
for(n in 42457:64032){
  TOTAL$YYYMM[n]<-10612
}
for(n in 64033:85608){
  TOTAL$YYYMM[n]<-10701
}
for(n in 85609:105096){
  TOTAL$YYYMM[n]<-10702
}
for(n in 105097:126672){
  TOTAL$YYYMM[n]<-10703
}
for(n in 126673:147552){
  TOTAL$YYYMM[n]<-10704
}
for(n in 147553:169128){
  TOTAL$YYYMM[n]<-10705
}
for(n in 169129:190008){
  TOTAL$YYYMM[n]<-10706
}
for(n in 190009:211584){
  TOTAL$YYYMM[n]<-10707
}
for(n in 211585:233088){
  TOTAL$YYYMM[n]<-10708
}
for(n in 233089:253966){
  TOTAL$YYYMM[n]<-10709
}
View(TOTAL)

for(n in 1:253966){
  if(TOTAL$測站[[n]]=="嘉義"){
    TOTAL$site[[n]]<-1
  }else if(TOTAL$測站[[n]]=="基隆"){
    TOTAL$site[[n]]<-2
  }else if(TOTAL$測站[[n]]=="大武"){
    TOTAL$site[[n]]<-3
  }else if(TOTAL$測站[[n]]=="宜蘭"){
    TOTAL$site[[n]]<-4
  }else if(TOTAL$測站[[n]]=="彭佳嶼"){
    TOTAL$site[[n]]<-5
  }else if(TOTAL$測站[[n]]=="恆春"){
    TOTAL$site[[n]]<-6
  }else if(TOTAL$測站[[n]]=="成功"){
    TOTAL$site[[n]]<-7
  }else if(TOTAL$測站[[n]]=="新屋"){
    TOTAL$site[[n]]<-8
  }else if(TOTAL$測站[[n]]=="新竹"){
    TOTAL$site[[n]]<-9
  }else if(TOTAL$測站[[n]]=="日月潭"){
    TOTAL$site[[n]]<-10
  }else if(TOTAL$測站[[n]]=="東吉島"){
    TOTAL$site[[n]]<-11
  }else if(TOTAL$測站[[n]]=="板橋"){
    TOTAL$site[[n]]<-12
  }else if(TOTAL$測站[[n]]=="梧棲"){
    TOTAL$site[[n]]<-13
  }else if(TOTAL$測站[[n]]=="淡水"){
    TOTAL$site[[n]]<-14
  }else if(TOTAL$測站[[n]]=="澎湖"){
    TOTAL$site[[n]]<-15
  }else if(TOTAL$測站[[n]]=="玉山"){
    TOTAL$site[[n]]<-16
  }else if(TOTAL$測站[[n]]=="竹子湖"){
    TOTAL$site[[n]]<-17
  }else if(TOTAL$測站[[n]]=="臺中"){
    TOTAL$site[[n]]<-18
  }else if(TOTAL$測站[[n]]=="臺北"){
    TOTAL$site[[n]]<-19
  }else if(TOTAL$測站[[n]]=="臺南"){
    TOTAL$site[[n]]<-20
  }else if(TOTAL$測站[[n]]=="臺東"){
    TOTAL$site[[n]]<-21
  }else if(TOTAL$測站[[n]]=="花蓮"){
    TOTAL$site[[n]]<-22
  }else if(TOTAL$測站[[n]]=="蘇澳"){
    TOTAL$site[[n]]<-23
  }else if(TOTAL$測站[[n]]=="蘭嶼"){
    TOTAL$site[[n]]<-24
  }else if(TOTAL$測站[[n]]=="金門"){
    TOTAL$site[[n]]<-25
  }else if(TOTAL$測站[[n]]=="阿里山"){
    TOTAL$site[[n]]<-26
  }else if(TOTAL$測站[[n]]=="鞍部"){
    TOTAL$site[[n]]<-27
  }else if(TOTAL$測站[[n]]=="馬祖"){
    TOTAL$site[[n]]<-28
  }else if(TOTAL$測站[[n]]=="高雄"){
    TOTAL$site[[n]]<-29
  }
}

TOTAL[TOTAL=="-"]<-NA
View(TOTAL)

WATER_10<-c()
WEATHER_10<-c()
COUNT_10<-c()
WEATHER_10_AVERAGE<-c()
for(x in 1:29){
  WATER10<-0
  WEATHER10<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10610){
      WATER10<-WATER10+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER10<-WEATHER10+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_10[x]<-WATER10
  WEATHER_10[x]<-WEATHER10
  COUNT_10[x]<-COUNT
  WEATHER_10_AVERAGE[x]<-WEATHER_10[[x]]/COUNT_10[[x]]
}
a<-c(1:29)
data10<-data.frame(a,WATER_10,WEATHER_10,COUNT_10,WEATHER_10_AVERAGE)
View(data10)

WATER_11<-c()
WEATHER_11<-c()
COUNT_11<-c()
WEATHER_11_AVERAGE<-c()
for(x in 1:29){
  WATER11<-0
  WEATHER11<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10611){
      WATER11<-WATER11+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER11<-WEATHER11+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_11[x]<-WATER11
  WEATHER_11[x]<-WEATHER11
  COUNT_11[x]<-COUNT
  WEATHER_11_AVERAGE[x]<-WEATHER_11[[x]]/COUNT_11[[x]]
}
a<-c(1:29)
data11<-data.frame(a,WATER_11,WEATHER_11,COUNT_11,WEATHER_11_AVERAGE)
View(data11)

WATER_12<-c()
WEATHER_12<-c()
COUNT_12<-c()
WEATHER_12_AVERAGE<-c()
for(x in 1:29){
  WATER12<-0
  WEATHER12<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10612){
      na.pass(TOTAL)
      WATER12<-WATER12+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER12<-WEATHER12+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_12[x]<-WATER12
  WEATHER_12[x]<-WEATHER12
  COUNT_12[x]<-COUNT
  WEATHER_12_AVERAGE[x]<-WEATHER_12[[x]]/COUNT_12[[x]]
}
a<-c(1:29)
data12<-data.frame(a,WATER_12,WEATHER_12,COUNT_12,WEATHER_12_AVERAGE)
View(data12)


WATER_01<-c()
WEATHER_01<-c()
COUNT_01<-c()
WEATHER_01_AVERAGE<-c()
for(x in 1:29){
  WATER01<-0
  WEATHER01<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10701){
      WATER01<-WATER01+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER01<-WEATHER01+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_01[x]<-WATER01
  WEATHER_01[x]<-WEATHER01
  COUNT_01[x]<-COUNT
  WEATHER_01_AVERAGE[x]<-WEATHER_01[[x]]/COUNT_01[[x]]
}
a<-c(1:29)
data01<-data.frame(a,WATER_01,WEATHER_01,COUNT_01,WEATHER_01_AVERAGE)
View(data01)

WATER_02<-c()
WEATHER_02<-c()
COUNT_02<-c()
WEATHER_02_AVERAGE<-c()
for(x in 1:29){
  WATER02<-0
  WEATHER02<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10702){
      WATER02<-WATER02+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER02<-WEATHER02+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_02[x]<-WATER02
  WEATHER_02[x]<-WEATHER02
  COUNT_02[x]<-COUNT
  WEATHER_02_AVERAGE[x]<-WEATHER_02[[x]]/COUNT_02[[x]]
}
a<-c(1:29)
data02<-data.frame(a,WATER_02,WEATHER_02,COUNT_02,WEATHER_02_AVERAGE)
View(data02)

WATER_03<-c()
WEATHER_03<-c()
COUNT_03<-c()
WEATHER_03_AVERAGE<-c()
for(x in 1:29){
  WATER03<-0
  WEATHER03<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10703){
      WATER03<-WATER03+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER03<-WEATHER03+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_03[x]<-WATER03
  WEATHER_03[x]<-WEATHER03
  COUNT_03[x]<-COUNT
  WEATHER_03_AVERAGE[x]<-WEATHER_03[[x]]/COUNT_03[[x]]
}
a<-c(1:29)
data03<-data.frame(a,WATER_03,WEATHER_03,COUNT_03,WEATHER_03_AVERAGE)
View(data03)

WATER_04<-c()
WEATHER_04<-c()
COUNT_04<-c()
WEATHER_04_AVERAGE<-c()
for(x in 1:29){
  WATER04<-0
  WEATHER04<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10704){
      WATER04<-WATER04+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER04<-WEATHER04+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_04[x]<-WATER04
  WEATHER_04[x]<-WEATHER04
  COUNT_04[x]<-COUNT
  WEATHER_04_AVERAGE[x]<-WEATHER_04[[x]]/COUNT_04[[x]]
}
a<-c(1:29)
data04<-data.frame(a,WATER_04,WEATHER_04,COUNT_04,WEATHER_04_AVERAGE)
View(data04)

WATER_05<-c()
WEATHER_05<-c()
COUNT_05<-c()
WEATHER_05_AVERAGE<-c()
for(x in 1:29){
  WATER05<-0
  WEATHER05<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10705){
      WATER05<-WATER05+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER05<-WEATHER05+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_05[x]<-WATER05
  WEATHER_05[x]<-WEATHER05
  COUNT_05[x]<-COUNT
  WEATHER_05_AVERAGE[x]<-WEATHER_05[[x]]/COUNT_05[[x]]
}
a<-c(1:29)
data05<-data.frame(a,WATER_05,WEATHER_05,COUNT_05,WEATHER_05_AVERAGE)
View(data05)

WATER_06<-c()
WEATHER_06<-c()
COUNT_06<-c()
WEATHER_06_AVERAGE<-c()
for(x in 1:29){
  WATER06<-0
  WEATHER06<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10706){
      WATER06<-WATER06+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER06<-WEATHER06+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_06[x]<-WATER06
  WEATHER_06[x]<-WEATHER06
  COUNT_06[x]<-COUNT
  WEATHER_06_AVERAGE[x]<-WEATHER_06[[x]]/COUNT_06[[x]]
}
a<-c(1:29)
data06<-data.frame(a,WATER_06,WEATHER_06,COUNT_06,WEATHER_06_AVERAGE)
View(data06)

WATER_07<-c()
WEATHER_07<-c()
COUNT_07<-c()
WEATHER_07_AVERAGE<-c()
for(x in 1:29){
  WATER07<-0
  WEATHER07<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10707){
      WATER07<-WATER07+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER07<-WEATHER07+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_07[x]<-WATER07
  WEATHER_07[x]<-WEATHER07
  COUNT_07[x]<-COUNT
  WEATHER_07_AVERAGE[x]<-WEATHER_07[[x]]/COUNT_07[[x]]
}
a<-c(1:29)
data07<-data.frame(a,WATER_07,WEATHER_07,COUNT_07,WEATHER_07_AVERAGE)
View(data07)

WATER_08<-c()
WEATHER_08<-c()
COUNT_08<-c()
WEATHER_08_AVERAGE<-c()
for(x in 1:29){
  WATER08<-0
  WEATHER08<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10708){
      WATER08<-WATER08+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER08<-WEATHER08+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_08[x]<-WATER08
  WEATHER_08[x]<-WEATHER08
  COUNT_08[x]<-COUNT
  WEATHER_08_AVERAGE[x]<-WEATHER_08[[x]]/COUNT_08[[x]]
}
a<-c(1:29)
data08<-data.frame(a,WATER_08,WEATHER_08,COUNT_08,WEATHER_08_AVERAGE)
View(data08)

WATER_09<-c()
WEATHER_09<-c()
COUNT_09<-c()
WEATHER_09_AVERAGE<-c()
for(x in 1:29){
  WATER09<-0
  WEATHER09<-0
  COUNT<-0
  for(n in 1:253966){
    if(TOTAL$site[[n]]==x & TOTAL$YYYMM[[n]]==10709){
      WATER09<-WATER09+as.numeric(TOTAL$降水量.mm.[[n]])
      WEATHER09<-WEATHER09+as.numeric(TOTAL$溫度...[[n]])
      COUNT<-COUNT+1
    }
  }
  WATER_09[x]<-WATER09
  WEATHER_09[x]<-WEATHER09
  COUNT_09[x]<-COUNT
  WEATHER_09_AVERAGE[x]<-WEATHER_09[[x]]/COUNT_09[[x]]
}
a<-c(1:29)
data09<-data.frame(a,WATER_09,WEATHER_09,COUNT_09,WEATHER_09_AVERAGE)
View(data09)

