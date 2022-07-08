# 1) caricare il dataset df7 con le funzioni di base

df7 <- read.csv('df7.csv', header = TRUE, sep = '\t', stringsAsFactors = FALSE)

# 2) scaricare il dataset df7 come tibble con il nome df7_tibble

library(readr)
library(tidyverse)
library(dplyr)

df7_tibble <- tibble(df7)

head(df7_tibble)

write_csv(df7_tibble, 'df7_tibble.csv')

# 3) caricare il dataset df8 con il pacchetto readr

df8 <- read_delim('df8.csv', delim = '\t')

# 4) scaricare il dataset df8 con le funzioni di base

write.csv(df8, 'df8_tibble.csv')

# 5) caricare il secondo foglio del dataset df9 con il pacchetto readxl e la funzione più adatta

install.packages('readxl')
library(readxl)

df9 <- read_xlsx('df9.xlsx', sheet = 2)

# 6) aggiungere una variabile che sommi le variabili var2 e var3

df9$var6 <- df9$var2 + df9$var3

# 7) scaricare il file ottenuto in formato excel con 
# la funzione più adatta del pacchetto writexl

install.packages('writexl')
library(writexl)

write_xlsx(df9, 'df9_new.xlsx')


# 9) ho ottenuto i dataset di test mischiando delle variabili casuali 
# come nel codice qua sotto


df10 <- data.frame(var1 = sample(letters[1:26], 10, replace = TRUE), 
                 var2 = rnorm(10),
                 var3 = runif(10, 1, 9.5),
                 var4 = sample(10:50, 10, replace=T),
                 var5 = sample(state.name, 10, replace = TRUE))


write.table(df10, 'df10.csv', sep = ',')


# prova a generare un dataset df10 di 10 variabili modificando le variabili di conseguenza

# 10) converti i dati seguenti in formato dataframe 

json1 <- '[
  {"Name" : "Laura", "Pref_food" : "pizza", "City" : "Rome", "IncomeKY" : 55}, 
  {"Name" : "Simon", "Pref_food" : "pasta", "City" : "Paris", "IncomeKY" : 60},
  {"Name" : "Kate", "Pref_food" : "steak", "City" : "Milan", "IncomeKY" : 35} 
]'

library(jsonlite)

df11 <- fromJSON(json1)
