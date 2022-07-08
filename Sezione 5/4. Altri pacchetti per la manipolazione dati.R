# tidyr

install.packages("tidyr")
library(tidyr)

id <- 1:10
p1 <- c('p1', 'p2', 'p3', 'p3', 'p1', 'p2', 'p2', 'p1', 'p3', 'p2')
thr <- c('t1', 't2', 't2', 't3', 't2', 't1', 't3', 't1', 't2', 't1')
val1 <- runif(n = 10, min = 0, max = 1)
val2 <- runif(n = 10, min = 1, max = 2)

df <- data.frame(id, p1, thr, val1, val2)

print(df)

# gather()

gather(df, key = thr, value = value, val1:val2)

df_g <- gather(df, key = thr, value = value, val1:val2)


# spread()

spread(df_g, thr, value)


# unite() e separate()

df2 <- data.frame(name = c("Laura", "Simon", "Katherine", "Francis", "Joseph", "Rosie"),
                 heights = c("163", "180", "165", "169", "178", "164"),
                 sex = c( "f", "m", "f", "m", "m", "f"))

df3 <- unite(df2, heights_sex, heights, sex, sep = "")

separate(df3, heights_sex, into = c("heights", "sex"), 3)

df3 <- unite(df2, heights_sex, heights, sex, sep = ",")

separate(df3, heights_sex, into = c("heights", "sex"), sep = ",")


# reshape2


install.packages(reshape2)
library(reshape2)

head(airquality)


# usiamo la funzione melt() per riorganizzare il dataset attorno alle variabili “Months” e “Days”, con l’argomento id.vars

df_m <- melt(airquality, id.vars = c("Month", "Day"), measure.vars = c("Ozone", "Wind"))


# vediamo i primi casi
head(df_m)


## dcast()

# usiamo la funzione dcast() per riorganizzare i dati

dcast(df_m, Month + Day ~ variable)


# stack

stack(iris)

stacked <- stack(iris[1:10,])

# unstack

unstack(stacked)


