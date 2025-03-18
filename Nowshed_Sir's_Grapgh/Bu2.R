library(readxl)

D<-read_excel("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/Bubblechart_Data.xlsx")
D

Te<-D$Team
Po<-D$Points
Ga<-D$GameNo
Sa<-D$Size

data<-data.frame(Po,Ga)

data %>% 
  ggplot(aes(Ga,Po,size = Sa))+geom_point(alpha=0.9)

