library(readxl)
library(here)
ceg4 <- read.csv("au16postcanvassplit.csv")
#imports
ceg4a <-  ceg4[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43)]
write.csv(ceg4a,file="ceg4a1.csv",row.names = FALSE)
ceg4a1 <-  read.csv("ceg4a1.csv",header=TRUE,sep=",")

ceg5 <- read.csv("au16precanvassplit.csv")
ceg5a <-  ceg5[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43)]
write.csv(ceg5a,file="ceg5a1.csv",row.names = FALSE)
ceg5a1 <-  read.csv("ceg5a1.csv",header=TRUE,sep=",")

ceg6 <- read.csv("au17postcanvassplit.csv")
ceg6a <-  ceg6[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43)]
write.csv(ceg6a,file="ceg6a1.csv",row.names = FALSE)
ceg6a1 <-  read.csv("ceg6a1.csv",header=TRUE,sep=",")

ceg7 <- read.csv("au17precanvassplit.csv")
ceg7a <-  ceg7[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43)]
write.csv(ceg7a,file="ceg7a1.csv",row.names = FALSE)
ceg7a1 <-  read.csv("ceg7a1.csv",header=TRUE,sep=",")


join4 <- rbind(ceg4a1,ceg5a1,ceg6a1,ceg7a1)
#fix column names before allowing merge

View(join4)
write.csv(join4,file="mergedcanvassurvey1617.csv", row.names=FALSE)