# 1) caricare il dataset df7 con le funzioni di base

# 2) scaricare il dataset df7 come tibble con il nome df7_tibble


# 3) caricare il dataset df8 con il pacchetto readr


# 4) scaricare il dataset df8 con le funzioni di base


# 5) caricare il secondo foglio del dataset df9 con il pacchetto readxl e la funzione più adatta

install.packages('readxl')
library(readxl)

# 6) aggiungere una variabile che sommi le variabili var2 e var3


# 7) scaricare il file ottenuto in formato excel con 
# la funzione più adatta del pacchetto writexl



# 9) ho ottenuto i dataset di test mischiando delle variabili casuali 
# come nel codice qua sotto


df <- data.frame(var1 = sample(letters[1:26], 100, replace = TRUE), 
                 var2 = rnorm(100),
                 var3 = runif(100, 1, 9.5),
                 var4 = sample(10:50, 100, replace=T),
                 var5 = sample(state.name, 100, replace = TRUE))


write.table(df, 'df.csv', sep = ',')


# prova a generare un dataset df10 di 10 variabili modificando le variabili di conseguenza

# 10) converti i dati seguenti in formato dataframe 

json1 <- '[
  {"Name" : "Laura", "Pref_food" : "pizza", "City" : "Rome", "IncomeKY" : 55}, 
  {"Name" : "Simon", "Pref_food" : "pasta", "City" : "Paris", "IncomeKY" : 60},
  {"Name" : "Kate", "Pref_food" : "steak", "City" : "Milan", "IncomeKY" : 35} 
]'

