# 1) Calcola media e mediana sulla variabile price del dataset diamonds. Crea un istogramma e visualizza a che tipo di distribuzione appartiene


# 2) La curva della variabile depth dello stesso dataset ha lo stesso andamento?


# 3) Crea una matrice di correlazione delle variabili numeriche dei primi 100 casi del dataset diamonds

# 4) Crea una matrice di correlazione del dataset trees già presente sulle risorse di R, tramite il pacchetto corrplot, controllando la documentazione dei metodi della funzione cor() ed esplorando i diversi metodi 


# 5) Effettua un’analisi esplorativa di base sul dataset mpg, già presente sulle risorse di R


# 6) Calcola la media delle variabili mark1 e mark2 del dataset df1.csv presente nella cartella delle risorse


# 7) Carica il dataset df2.csv, conta i dati mancanti e crea un grafico per visualizzarli

# 8) Dato il seguente dataset, imputa al posto dei valori mancanti la media per la variabile var3 e la mediana per le variabili var1 e var2

var1 <- c(12, NA, 45, 57, 24, 48, NA)
var2 <- c(NA, 37, 24, 61, NA, 19, NA)
var3 <- c(71, NA, 45, 52, 70, 18, 34)

df3 <- as.data.frame(cbind(var1, var2, var3))

# 9) carica il dataset df4, calcola gli outliers della variabile prezzoink ed eliminali

# 10) Carica il dataset df5 e cancella i duplicati presenti sia con le funzioni di base sia con quelle di dplyr


filter(duplicated(data_online))
