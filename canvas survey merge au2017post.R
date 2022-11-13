library(readxl)
library(here)
library(dplyr)
library(tidyverse)

df1 <- read.csv("Survey Merge/Aut 2017 CHEM 142 End of Quarter Survey Survey Student Analysis Report.csv",header=TRUE,sep=",")
df2 <-  df1[,c(2,1,3,7,9,11)]

df3 <- df2 %>%  rename("post_erau17_q1" = 4, "post_erau17_q2" = 5, "post_erau17_q3" = 6)

df4 <- separate(df3, "post_erau17_q1",into=c("post_erau17_q1a","post_erau17_q1b","post_erau17_q1c","post_erau17_q1d","post_erau17_q1e","post_erau17_q1f","post_erau17_q1g","post_erau17_q1h","post_erau17_q1i","post_erau17_q1j","post_erau17_q1k","post_erau17_q1l","post_erau17_q1m","post_erau17_q1n","post_erau17_q1o"), sep = ",")
df5 <- separate(df4, "post_erau17_q2",into=c("post_erau17_q2a","post_erau17_q2b","post_erau17_q2c","post_erau17_q2d","post_erau17_q2e","post_erau17_q2f","post_erau17_q2g","post_erau17_q2h"), sep = ",")
df6 <- separate(df5, "post_erau17_q3",into=c("post_erau17_q3a","post_erau17_q3b","post_erau17_q3c","post_erau17_q3d","post_erau17_q3e","post_erau17_q3f","post_erau17_q3g","post_erau17_q3h","post_erau17_q3i","post_erau17_q3j","post_erau17_q3k","post_erau17_q3l","post_erau17_q3m","post_erau17_q3n","post_erau17_q3o","post_erau17_q3p","post_erau17_q3q"), sep=",")
write.csv(df6,file="au17postcanvassplit.csv", row.names=FALSE)