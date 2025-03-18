#importing data
#install.packages("VIM")
library(readr)
library(readxl)
library(haven)
library(dplyr)
library(tidyr)
library(lubridate)
library(VIM)

Sala<-read.csv("C:/Users/Acer/OneDrive/Documents/Chapter2/sample_student_grades.csv")
Sala

Sal<-read_tsv("C:/Users/Acer/OneDrive/Documents/Chapter2/P1_PLayer.txt")
Sal

Da<-read_excel("C:/Users/Acer/OneDrive/Documents/Chapter2/student_info.xlsx",sheet=1)
Da

# import data from Stata
#Salaries <- read_dta("salaries.dta")
# import data from SPSS
#Salaries <- read_sav("salaries.sav")
# import data from SAS
#Salaries <- read_sas("salaries.sas7bdat")



#cleaning data

#keep the variables(name,height,gender) in newdata
newdata<-select(starwars,name,height,gender)
newdata

#keep the variables name and between mass and species
newdata<-select(starwars,name,mass:species)
newdata

#keep the variable except birth_year and gender
newdata<-select(starwars,-birth_year,-gender)
newdata

#select observation

#select female
newdata<-filter(starwars,gender=="female")
print(newdata)

#newdata<-select(starwars,
                #gender=="female" &
                 # homeworld=="Alderaan")
#select individuals that are from Alderaan, Coruscant,or Endor
#newdata<-select(starwars,
               # homeworld=="Alderaan"|
                #  homeworld=="Coruscant"|
                 # homeworld=="Endor")
# this can be written more succinctly as
#newdata<-select(starwars,
               # homeworld%in%
                 # c("Alderaan","Coruscant","Endor")


#Changing variables

#converting height in cn to inches
newdata<-mutate(starwars,height=height*0.394,mass=mass*2.205)
newdata

#if else
newdata<-mutate(starwars,heightcat=ifelse(height>180,"tall","short"))
newdata$heightcat

newdata<-mutate(starwars,eye_color=ifelse(eye_color==c("black","brown","blue"),eye_color,"Other"))
newdata

newdata<-mutate(starwars,height=ifelse(height>200 | height<75,NA,height))
newdata


#summarizing Data
#we need to pass parameter na.rm=TRUE to drop missing values

#calculate mean of heights
newdata<-summarize(starwars,mean_ht=mean(height,na.rm=TRUE),mean_ma=mean(mass,na.rm=TRUE))
newdata

#calculate mean height and weight by gender
newdata<-group_by(starwars,gender)
newdata<-summarize(newdata,mean_ht=mean(height,na.rm=TRUE),mean_ma=mean(mass,na.rm=TRUE))
newdata


#using pipes
newdata <- filter(starwars,
                  gender == "female")
newdata <- summarize(newdata,
                     mean_ht = mean(height, na.rm = TRUE))

#the above can be written as
newdata<-starwars %>% 
  filter(gender=="male") %>% 
  summarize(mean_h=mean(height,na.rm=TRUE))
newdata

#convert data from character to date
df <- data.frame(
  dob = c("11/10/1963", "Jan-23-91", "12:1:2001")
)

df$dob <- mdy(df$dob)
str(df)


#reshaping data
#from making wide to long
Sala <- data.frame(
  name = c("Alice", "Bob"),
  height = c(160, 175),
  weight = c(55, 70)
)
Sala
Long_data<-pivot_longer(Sala,cols=c("height","weight"),names_to="variables",values_to="value")
Long_data

#from making long to wide
wide_d<-pivot_wider(Long_data,names_from = "variables",values_from ="value")
wide_d


#missing data
#feature selection(delete columns)
data(msleep,package ="ggplot2")

#what is the proportion of missing data for each variable
pctmiss<-colSums(is.na(msleep)/nrow(msleep))
round(pctmiss,2)

#listwise deletion(delete rows)
newdata<-select(msleep,genus,vore,conservation)
newdata<-na.omit(newdata)#removing rows that have null values
newdata

#imputation(replacing null values)
newdata<-kNN(msleep,k=5)
newdata
