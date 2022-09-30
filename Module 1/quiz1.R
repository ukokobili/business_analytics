# Install required packages
library(tidyverse)  #helps wrangle data
library(lubridate)  #helps wrangle date attributes
library(dplyr) #

#get data 
data <- read.csv('pastPurchased.csv')

# Data wrangling of table
colnames(data)

# Inspect the dataframes and look for inconsistencies
str(data)

# summary sats
summary(data)

# the correct mean 
mean(data$PASTA)

# the correct standard deviation
sd(data$PASTA)

# view table
View(data)

# sum the quantity of pasta by household over time and indicate the maximum
aggregate(data$PASTA, list(data$HHID), FUN=sum) 

# What is the average income of households living in area 4?     
aggregate(data$INCOME, list(data$AREA), FUN=mean)

# How many households live in area 2, earn more than 20k, and have purchased more than 30 units
# of pasta over the whole time period?
filter(data, INCOME > 2000 | PASTA > 30)

# What is the correlation between the purchases of pasta and the exposures?
cor(data$PASTA, data$EXPOS)   

sum(data$PASTA)
hist (pur)
