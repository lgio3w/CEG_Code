library(readxl)
library(here)

ceg7a1 <-  read.csv("Aut 2016 CHEM 142 Student Surveys 2 Survey Student Analysis Report.csv",header=TRUE,sep=",")
ceg7a2 <-  ceg7a1[,c(2,1,3,7,9,11)]

ceg8a1 <- read.csv("Aut 2016 CHEM 142 Student Surveys Survey Student Analysis Report.csv",header=TRUE,sep=",")
ceg8a2 <-  ceg8a1[,c(2,1,3,7,9,11)]

join4 <- merge(ceg7a2,ceg8a2)



View(join4)
write.csv(join4,file="mergedcanvas1.csv", row.names=FALSE)