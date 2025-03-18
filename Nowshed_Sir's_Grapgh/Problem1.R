library(tidyverse)
library(readxl)
data<-read_excel("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/sales_data.xlsx")

View(data)
data$Month<-factor(data$Month,levels=c("January","February","March","April","May","june"))
data %>% 
  ggplot(aes(Month,Sales))+geom_point(size=3)+geom_line(size=1,group=1)+theme_minimal()

