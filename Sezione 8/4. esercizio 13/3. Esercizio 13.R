
# 1) Carica il file numbeo.csv, crea una paletta di colori a tua scelta, con RColorBrewer o con le funzioni di base e crea un barplot e un grafico a torta con la variabile continent


# 2) Crea due grafici a mosaico a partire dal dataset Titanic, già precaricato in R, mettendo a confronto le variabili genere e classe con il tasso di sopravvivenza



# 3) Usando la funzione plot(), crea un grafico che ti permetta di avere un colpo d'occhio su tutte le variabili del dataset numbeo, poi creane uno che ti mostri se le variabili Restaurant.Price.Index e Groceries.Index tendono a covariare

# Crea anche un grafico che metta in relazione la variabile Cost.of.Living.Index con la variabile Groceries.Index modificando il parametro pch 



# 4) Dopo aver caricato la libreria quantmod crea l'oggetto tl1 (si tratta di quotazioni in borsa di titoli) una la funzione plot() con il parametro che crea la linea per creare un grafico che ci mostri l'andamento nel tempo del valore delle azioni 

install.packages('quantmod')
library(quantmod)

tl1 <- getSymbols("AAPL", src = "yahoo", from = "2012-01-01", to = "2020-01-01", 
                  auto.assign = FALSE)



# 5) Crea due boxplot, uno con la funzione di base di R e uno con la funzione qplot() per mettere a confronto le variabili Cost.of.Living.Index e continent dal dataset numbeo



# 6) Utilizzando le stesse variabili aggiungi il parametro facets per ottenere il grafico diviso per continente con ggplot 



# 7) Utilizza la funzione qplot() per creare uno scatterplot delle variabili Cost.of.Living.Index e Groceries.Index



# 8) Crea un barplot con la funzione ggplot() per mettere a grafico la variabile continent colorando ogni continente di un colore diverso




# 9) Crea uno scatterplot delle variabili Petal.Width e Petal.Length del dataset iris con la funzione ggplot(), colorando per Specie 


# 10) Salva il grafico in un oggetto g1, infine aggiungi titolo e nomi degli assi 

