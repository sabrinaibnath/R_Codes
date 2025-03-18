library(tidyverse)

data<-read.csv("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/2024_monthly_sales.csv")
View(data)

data$Month <- factor(data$Month,levels=c("January", "February", "March", "April", "May", "June", "July", "August", 
                "September", "October", "November", "December"))

data %>% 
  ggplot(aes(x=Month,y=Sales..USD.))+geom_bar(stat="identity",fill="pink")+theme_bw()

