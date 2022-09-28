# VECTORS
a <- c(1,2,-5,0,3,6,-2,4) # Numeric Vector
b <- c("one","two","three") # Character Vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE) # Logical Vector
print(a)
print(b)
print(c)

# MATRIKS
cells <- c(3,15,-27,38)
r_anka <- c("R1","R2")
c_anka <- c("C1","C2")
matrix_anka <- matrix(cells,nrow=2,ncol=2,byrow=TRUE,
                      dimnames=list(r_anka,c_anka))
print(matrix_anka)

# DATA FRAME
anka1 <- c(1,2,3,4)
anka2 <- c("red","white","red",NA)
anka3 <- c(TRUE,TRUE,TRUE,FALSE)
dataku <- data.frame(anka1,anka2,anka3)
names(dataku) <- c("ID","Color","Passed") # Variables Names
print(dataku)

data_anka <- data.frame(id=letters[1:10],x=1:10,y=11:20)
print(data_anka)

# 2. Koneksi ke Database
library(RMySQL)
con = dbConnect(MySQL(),user='root',password= '',dbname='houseprices',host='localhost')
dbListTables(con)
myQuery <- "select * from ankafayiz;"
df <- dbGetQuery(con,myQuery)

# 3. Filtering Data
library(dplyr)
df<-filter(df,Brick=="No")
print(df)

library(dplyr)
df<-filter(df,Brick=="No"|Neighborhood=="East")
print(df)
