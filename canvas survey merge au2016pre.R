library(readxl)
library(here)
library(dplyr)
library(tidyverse)

df1 <- read.csv("Aut 2016 CHEM 142 Student Surveys Survey Student Analysis Report.csv",header=TRUE,sep=",")
#pulls csv file and separates by ,
df2 <-  df1[,c(2,1,3,7,9,11)]
#rearrange csv, only columns 2,1,3,7,9,11

df3 <- df2 %>%  rename("pre_erau16_q1" = 4, "pre_erau16_q2" = 5, "pre_erau16_q3" = 6)
#renames question columns

df4 <- separate(df3, "pre_erau16_q1",into=c("pre_erau16_q1a","pre_erau16_q1b","pre_erau16_q1c","pre_erau16_q1d","pre_erau16_q1e","pre_erau16_q1f","pre_erau16_q1g","pre_erau16_q1h","pre_erau16_q1i","pre_erau16_q1j","pre_erau16_q1k","pre_erau16_q1l","pre_erau16_q1m","pre_erau16_q1n","pre_erau16_q1o"), sep = ",")
df5 <- separate(df4, "pre_erau16_q2",into=c("pre_erau16_q2a","pre_erau16_q2b","pre_erau16_q2c","pre_erau16_q2d","pre_erau16_q2e","pre_erau16_q2f","pre_erau16_q2g","pre_erau16_q2h"), sep = ",")
df6 <- separate(df5, "pre_erau16_q3",into=c("pre_erau16_q3a","pre_erau16_q3b","pre_erau16_q3c","pre_erau16_q3d","pre_erau16_q3e","pre_erau16_q3f","pre_erau16_q3g","pre_erau16_q3h","pre_erau16_q3i","pre_erau16_q3j","pre_erau16_q3k","pre_erau16_q3l","pre_erau16_q3m","pre_erau16_q3n","pre_erau16_q3o","pre_erau16_q3p","pre_erau16_q3q"), sep=",")
#splits question columns into columns for each subquestion

write.csv(df6,file="au16precanvassplit.csv", row.names=FALSE)