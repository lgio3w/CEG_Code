library(readxl)
library(here)
ceg4 <- read_excel("CRAIG 142 Aut 2016 CustomReport__20220719113255.xlsx", skip = 7)
ceg4a <-  ceg4[,c(3,1,2,4,5,7,8,9,10,11,12,13,14)]
write.csv(ceg4a,file="ceg4a1.csv",row.names = FALSE)
ceg4a1 <-  read.csv("ceg4a1.csv",header=TRUE,sep=",")

ceg5 <- read_excel("CRAIG 142 Aut 2017 CustomReport__20220719114130.xlsx", skip = 7)
ceg5a <-  ceg5[,c(3,1,2,4,5,7,8,9,10,11,12,13,14)]
write.csv(ceg5a,file="ceg5a1.csv",row.names = FALSE)
ceg5a1 <-  read.csv("ceg5a1.csv",header=TRUE,sep=",")

ceg6 <- read_excel("CRAIG 142 Aut 2018 CustomReport__20220719113949.xlsx", skip = 7)
ceg6a <-  ceg6[,c(3,1,2,4,5,7,8,9,10,11,12,13,14)]
write.csv(ceg6a,file="ceg6a1.csv",row.names = FALSE)
ceg6a1 <-  read.csv("ceg6a1.csv",header=TRUE,sep=",")

ceg7 <- read_excel("CRAIG 142 Aut 2019 CustomReport__20220719114147.xlsx", skip = 7)
ceg7a <-  ceg7[,c(3,1,2,4,5,7,8,9,10,11,12,13,14)]
write.csv(ceg7a,file="ceg7a1.csv",row.names = FALSE)
ceg7a1 <-  read.csv("ceg7a1.csv",header=TRUE,sep=",")


join3 <- rbind(ceg4a1,ceg5a1,ceg6a1,ceg7a1)


View(join3)
write.csv(join3,file="mergedALEKS.csv", row.names=FALSE)