# 1) esegui il seguente codice per creare una cartella 'data' sulla working directory
# e una connessione con la cartella tramite la funzione dbConnect

if(!dir.exists('data')) dir.create('data')
library(RMySQL)

con <- dbConnect(RSQLite::SQLite(), 'data/example.sqlite')

# 2) copia il dataset mpg dal pacchetto ggplot2 nella cartella data

library(ggplot2)
dbWriteTable(con, 'mpg', as.data.frame(mpg), row.names = F)

# 3) verifica quali tabelle sono presenti all'interno della cartella data

dbListTables(con)

# 4) seleziona dal dataset tutti i casi 

dbGetQuery(con, "select * from mpg")

# 5) seleziona le variabili model, year, cyl per i modelli della toyota

dbGetQuery(con, "select model, year, cyl from mpg where manufacturer = 'toyota' ")

# 6) seleziona tutte le variabili per i casi della toyota dove il modello è corolla

dbGetQuery(con, "select * from mpg where manufacturer = 'toyota' and model = 'corolla' ")

# 7) copia il dataset diamonds dal pacchetto ggplot2 nella cartella data e verifica le tabelle
# nel database

dbWriteTable(con, 'diamonds', as.data.frame(diamonds), row.names=F)

dbListTables(con)

# 8) disconnetti il database

dbDisconnect(con)

# 9) carica il dataset df1.csv con le funzioni di base e con data.table 
# per vedere la differenza dei tempi di caricamento

library(data.table)

system.time(df_base <- read.csv('df1.csv'))
system.time(df_fread <- fread('df1.csv'))

# 10) converti il dataset diamonds in formato data table

library(ggplot2)

dt1 <- data.table(diamonds)

# 11) estrai la prima colonna

dt1[, 1]

dt1[, carat]

dt1[, .(carat)]

# 12) estrai le colonne x, y e z

dt1[, list(x, y, z)]

dt1[, .(x, y,z)]

# 13) calcola la media del prezzo in base al tipo di taglio

dt1[, mean(price), by = cut]

# 14) estrai i casi con colore pari a E e valore di depth maggiore di 60

dt1[dt1$color == 'E' & dt1$depth > 60]

# 15) aggiungi la variabile prezzo_in_euro

dt1$prezzo_in_euro <- dt1$price * 0.92
