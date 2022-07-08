install.packages('DBI')
install.packages('RMySQL')

library(DBI)
library(RMySQL)

library(ggplot2)

con <- dbConnect(drv, 
		dbname = NULL, 
		username = NULL,
 		password = NULL, 
		host = NULL, 
		unix.socket = NULL, 
		port = 0,
 		client.flag = 0, 
		groups = 'rs-dbi', 
		default.file = NULL, ...)



if(!dir.exists('data')) dir.create('data')

con <- dbConnect(SQLite(), 'data/example.sqlite')

example1 <- data.frame(var1 = sample(letters[1:26], 100, replace = TRUE), 
           var2 = rnorm(100),
           var3 = runif(100, 1, 9.5),
           var4 = sample(10:50, 100, replace=T),
           var5 = sample(state.name, 100, replace = TRUE))


dbWriteTable(con, 'example1', example1)


dbWriteTable(con, 'diamonds', as.data.frame(diamonds), row.names= FALSE)


dbExistsTable(con, 'diamonds')

dbListTables(con)

dbListFields(con, 'diamonds')

db_diamonds <- dbGetQuery(con, "select * from diamonds")

dbGetQuery(con, "select carat, cut, price from diamonds where cut = 'Good' ")


dbGetQuery(con, "select carat, cut, price from diamonds where cut = 'Good' and color = 'E' ")

dbGetQuery(con, "select carat, cut, price from diamonds where cut = 'Good' and color in ('E', 'F') ")

dbGetQuery(con, "select carat, cut, price from diamonds where price between 5000 and 5500 ")



dbDisconnect(con)



