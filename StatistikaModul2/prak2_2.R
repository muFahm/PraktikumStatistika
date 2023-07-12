# KONEKSI KE DATABASE
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2[fahmi]', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from bahanpraktikum1_fahmi ;"
df <- dbGetQuery(con, myQuery)

# TEKNIK FILTER DATA
library(dplyr)
df <- filter(df, Gender == "P")
print(df)