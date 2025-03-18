library(readxl)
library(ggplot2)

data<-read_excel("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/Problem2_Data.xlsx")
data
data %>% 
  ggplot(aes(x=Reveneu,y=Market,colour= Product))+geom_point(size=10,alpha=0.5)+theme_minimal()+geom_smooth(method="lm",se=F)+labs(title="plot",x="Reveneu",y="Marketing spand")
