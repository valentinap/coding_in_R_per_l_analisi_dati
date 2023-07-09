# 1) esegui il seguente codice per creare una cartella 'data' sulla working directory
# e una connessione con la cartella tramite la funzione dbConnect

if(!dir.exists('data')) dir.create('data')
library(RMySQL)

con <- dbConnect(RSQLite::SQLite(), 'data/example.sqlite')

# 2) copia il dataset mpg dal pacchetto ggplot2 nella cartella data

# 3) verifica quali tabelle sono presenti all'interno della cartella data

# 4) seleziona dal dataset tutti i casi 

# 5) seleziona le variabili model, year, cyl per i modelli della toyota

# 6) seleziona tutte le variabili per i casi della toyota corolla

# 7) copia il dataset diamonds dal pacchetto ggplot2 nella cartella data e verifica le tabelle nel database

# 8) disconnetti il database

# 9) carica il dataset df1.csv con le funzioni di base e con data.table 
# per vedere la differenza dei tempi di caricamento

# 10) converti il dataset diamonds in formato data table

# 11) estrai la prima colonna

# 12) estrai le colonne x, y e z

# 13) calcola la media del prezzo in base al tipo di taglio

# 14) estrai i casi con colore pari a E e valore di depth maggiore di 60

# 15) aggiungi la variabile prezzo_in_euro

