library(data.table)

# data.table[i, j, by]

# creiamo un oggetto data table

dt1 <- data.table(name = c('Laura', 'Simon', 'Katherine', 'Francis', 'Joseph', 'Rosie'), 
                  heights = c(163, 180, 165, 169, 178, 164), 
                  sex = c('f', 'm', 'f', 'm', 'm', 'f'), value = rnorm(6))

# convertiamolo

df1 <- data.frame(dt1)

# visualizziamo la classe di entrambi gli oggetti

class(df1)
class(dt1)

# possiamo sempre convertire un oggetto in data table con l'omonima funzione

iris_dt <- data.table(iris)
class(iris_dt)

# creiamo un dataset casuale molto grande

mat1 <- matrix(sample(10, 100000000, replace = T), ncol=10)

dim(mat1)

write.csv(mat1, "mat1.csv", row.names = F)

# importiamolo con le funzioni di base e con la funzione di data.table fread

system.time(mat_base <- read.csv("mat1.csv"))
system.time(mat_fread <- fread("mat1.csv"))

# con il tidyverse

library(tidyverse)

system.time(mat_tidy <- read_csv("mat1.csv"))

# differenze tra dataframe e data table nell'estrazione dati

df1[2:5, 1:3]

df1[1]

dt1[1]

dt1[2:5, 1:3]

# estrazione colonne

dt1[, 1]

dt1[, name]

dt1[, .(name)]

dt1[, list(name)]

# calcoli sulle colonne

dt1[, mean(heights)]

dt1[, sum(sex == 'f')]

dt1[2:5, mean(value)]

dt1[!1:3, sum(value)]

dt1[, by = sex, .N]

dt1[order(heights)]

setkey(dt1, name)

dt1

dt1['Laura']

# subsetting

dt1[dt1$sex == 'f' & dt1$heigths > 170]





