library(readxl)
library(dplyr)
library(ggplot2) 

Mydata <- read_excel("E:/RProgramming/BubbleData.xlsx", sheet=1)

Name <-Mydata$Team
y <- Mydata$Points
x <- Mydata$GameNo
z <- Mydata$Size

data <- data.frame(x, y, z)

print(ggplot(data,aes(x = x, y = y,size = z))+ geom_point(alpha = 1.0))


