
library(tidyverse)
library(dplyr)
df1 <- read_csv("responses.csv", skip = 1)
df2 <- read_csv("code_translation.csv")
names(df1)[1] <- "Participant ID"
join3 <- merge(df2,df1,by="Participant ID", all.x=TRUE,all.y=TRUE)

join4 <- join3[,c(3,2,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53)]

write.csv(join4,file="merged.csv", row.names=FALSE)
