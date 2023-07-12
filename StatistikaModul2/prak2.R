a <- c(1,2,-5,0.3,6,-2,4) # numeric vector
b <- c("one","two","three") # character vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE) #logical vector
print(a)
print(b)
print(c)

#MATRIKS
cells <- c(3,15,-27,38)
r_fahmi <- c("R1", "R2")
c_fahmi <- c("C1", "C2") 
fahmi_matrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                      dimnames=list(r_fahmi, c_fahmi))
print(fahmi_matrix)

#DATA FRAME
fahmi1 <- c(1,2,3,4)
fahmi2 <- c("red", "white", "red", NA)
fahmi3 <- c(TRUE,TRUE,TRUE,FALSE)
dataku <- data.frame(fahmi1, fahmi2, fahmi3)
names(dataku) <- c("ID","Color","Passed") # variable names 
print(dataku)

data_fahmi <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
print (data_fahmi)

#2. KONEKSI KE DATABASE
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'houseprices', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from fahmi;"
df <- dbGetQuery(con, myQuery)

#3. TEKNIK FILTER DATA
library(dplyr)
df <- filter(df, Brick == "No") %>% select(Brick)
print(df)

library(dplyr)
df<-filter(df,Brick=="No"|Neighborhood=="East") %>% select(Neighborhood)
print(df)
