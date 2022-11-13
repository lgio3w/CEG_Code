library(readxl)
library(here)
library(dplyr)
library(tidyverse)

df1 <- read.csv("Aut 2016 CHEM 142 Student Surveys 2 Survey Student Analysis Report.csv",header=TRUE,sep=",")
df2 <-  df1[,c(2,1,3,7,9,11)]

df3 <- df2 %>%  rename("post_erau16_q1" = 4, "post_erau16_q2" = 5, "post_erau16_q3" = 6)

df4 <- separate(df3, "post_erau16_q1",into=c("post_erau16_q1a","post_erau16_q1b","post_erau16_q1c","post_erau16_q1d","post_erau16_q1e","post_erau16_q1f","post_erau16_q1g","post_erau16_q1h","post_erau16_q1i","post_erau16_q1j","post_erau16_q1k","post_erau16_q1l","post_erau16_q1m","post_erau16_q1n","post_erau16_q1o"), sep = ",")
df5 <- separate(df4, "post_erau16_q2",into=c("post_erau16_q2a","post_erau16_q2b","post_erau16_q2c","post_erau16_q2d","post_erau16_q2e","post_erau16_q2f","post_erau16_q2g","post_erau16_q2h"), sep = ",")
df6 <- separate(df5, "post_erau16_q3",into=c("post_erau16_q3a","post_erau16_q3b","post_erau16_q3c","post_erau16_q3d","post_erau16_q3e","post_erau16_q3f","post_erau16_q3g","post_erau16_q3h","post_erau16_q3i","post_erau16_q3j","post_erau16_q3k","post_erau16_q3l","post_erau16_q3m","post_erau16_q3n","post_erau16_q3o","post_erau16_q3p","post_erau16_q3q"), sep=",")
write.csv(df6,file="au16postcanvassplit.csv", row.names=FALSE)