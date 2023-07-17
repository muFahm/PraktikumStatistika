data_fahmi = read.delim("clipboard")
View(data_fahmi)

fahmi <- data_fahmi[data_fahmi$Bedrooms==2,]  
View(fahmi)

fahmi$Bathrooms <- ifelse(fahmi$Bathrooms > 2, c("large"), c("small"))
View(fahmi)

fahmi$newvariable <- ifelse(fahmi$Offers > 2, c("large"), c("small")) 
View(fahmi)

fahmi$newvariable <- fahmi$Price/fahmi$SqFt
View(fahmi)

fahmi$newvariable<-NULL
View(fahmi)

data_fahmi.kolom1dan2 <- data_fahmi[,1:2] 
View(data_fahmi.kolom1dan2)

data_fahmi.kolom3dan4 <- data_fahmi[,3:4] 
View(data_fahmi.kolom3dan4)

data_fahmi.kolom1sd4<-cbind(data_fahmi.kolom1dan2, data_fahmi.kolom3dan4) 
View(data_fahmi.kolom1sd4)

data_fahmi.baris1sd3 <- data_fahmi[1:3,] 
data_fahmi.baris4sd6 <- data_fahmi[4:6,] 
data_fahmi.baris1sd6 <- rbind(data_fahmi.baris1sd3, data_fahmi.baris4sd6) 
View(data_fahmi.baris1sd6)

data_fahmi.sort<-data_fahmi[order(data_fahmi$Price),] 
View(data_fahmi.sort)

