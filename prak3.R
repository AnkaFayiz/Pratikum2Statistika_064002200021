library(RMySQL)
con = dbConnect(MySQL(),user='root',password= '',dbname='ps2Anka',host='localhost')
dbListTables(con)
myQuery <- "select * from ps2Anka;"
df <- dbGetQuery(con,myQuery)

# 3. Filtering Data
library(dplyr)
df<-filter(df,Gender=="L")
print(df)