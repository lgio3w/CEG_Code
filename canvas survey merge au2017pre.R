library(readxl)
library(here)
library(dplyr)
library(tidyverse)

df1 <- read.csv("Aut 2017 CHEM 142 Student Surveys (GROUP TESTING-PRE) Survey Student Analysis Report.csv",header=TRUE,sep=",")
df2 <-  df1[,c(2,1,3,7,9,11)]

df3 <- df2 %>%  rename("pre_erau17_q1" = 4, "pre_erau17_q2" = 5, "pre_erau17_q3" = 6)

df4 <- separate(df3, "pre_erau17_q1",into=c("pre_erau17_q1a","pre_erau17_q1b","pre_erau17_q1c","pre_erau17_q1d","pre_erau17_q1e","pre_erau17_q1f","pre_erau17_q1g","pre_erau17_q1h","pre_erau17_q1i","pre_erau17_q1j","pre_erau17_q1k","pre_erau17_q1l","pre_erau17_q1m","pre_erau17_q1n","pre_erau17_q1o"), sep = ",")
df5 <- separate(df4, "pre_erau17_q2",into=c("pre_erau17_q2a","pre_erau17_q2b","pre_erau17_q2c","pre_erau17_q2d","pre_erau17_q2e","pre_erau17_q2f","pre_erau17_q2g","pre_erau17_q2h"), sep = ",")
df6 <- separate(df5, "pre_erau17_q3",into=c("pre_erau17_q3a","pre_erau17_q3b","pre_erau17_q3c","pre_erau17_q3d","pre_erau17_q3e","pre_erau17_q3f","pre_erau17_q3g","pre_erau17_q3h","pre_erau17_q3i","pre_erau17_q3j","pre_erau17_q3k","pre_erau17_q3l","pre_erau17_q3m","pre_erau17_q3n","pre_erau17_q3o","pre_erau17_q3p","pre_erau17_q3q"), sep=",")
write.csv(df6,file="au17precanvassplit.csv", row.names=FALSE)