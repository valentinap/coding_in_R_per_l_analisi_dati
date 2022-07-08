# 1) Calcola media e mediana sulla variabile price del dataset diamonds. Crea un istogramma e visualizza a che tipo di distribuzione appartiene

library(ggplot2)

mean(diamonds$price)

median(diamonds$price)

hist(diamonds$price, breaks = 50, col = topo.colors(50))

# 2) La curva della variabile depth dello stesso dataset ha lo stesso andamento?

hist(diamonds$depth, breaks = 50, col = heat.colors(50))

# 3) Crea una matrice di correlazione delle variabili numeriche dei primi 100 casi del dataset diamonds

str(diamonds)

dia2 <- diamonds[c(-2, -3, -4)]

pairs(dia2[1:100,])

dia2_cor <- cor(dia2)

library(corrplot)

corrplot(dia2_cor)

# 4) Crea una matrice di correlazione del dataset trees già presente sulle risorse di R, tramite il pacchetto corrplot, controllando la documentazione dei metodi della funzione cor() ed esplorando i diversi metodi 

pairs(trees)

trees_cor <- cor(trees)

corrplot(trees_cor, method = "pie")


# 5) Effettua un’analisi esplorativa di base sul dataset mpg, già presente sulle risorse di R

dim(mpg)

str(mpg)

sum(is.na(mpg))

sum(duplicated(mpg))

nrow(mpg)

ncol(mpg)

names(mpg)

class(mpg)

head(mpg)

tail(mpg)

str(mpg)

mpg_num <- mpg[-c(1, 2, 6, 7, 10, 11)]

pairs(mpg_num)


# 6) Calcola la media delle variabili mark1 e mark2 del dataset df1.csv presente nella cartella delle risorse

df1 <- read.csv("df1.csv")

mean(df1$mark1, na.rm = TRUE)
mean(df1$mark2, na.rm = TRUE)

outliers_var1 <- boxplot(df1$mark1, plot = FALSE)$out

df1 <- df1[-which(df1$mark1 %in% outliers_var1),]

boxplot(df1$mark1)$out

mean(df1$mark1, na.rm = TRUE)

outliers_var2 <- boxplot(df1$mark2, plot = FALSE)$out

df1 <- df1[-which(df1$mark2 %in% outliers_var2),]

mean(df1$mark2, na.rm = TRUE)

# 7) Carica il dataset df2.csv, conta i dati mancanti e crea un grafico per visualizzarli

df2 <- read.csv("df2.csv")

table(complete.cases(df2))

nrow(df2)

prop.table(table(complete.cases(df2)))

library(VIM)

matrixplot(df2)


# 8) Dato il seguente dataset, imputa al posto dei valori mancanti la media per la variabile var3 e la mediana per le variabili var1 e var2

var1 <- c(12, NA, 45, 57, 24, 48, NA)
var2 <- c(NA, 37, 24, 61, NA, 19, NA)
var3 <- c(71, NA, 45, 52, 70, 18, 34)

df3 <- as.data.frame(cbind(var1, var2, var3))


df3$var1[is.na(df3$var1)] <- median(df3$var1, na.rm = TRUE)

median(df3$var2, na.rm = TRUE)

df3$var2[is.na(df3$var2)] <- 30.5

df3$var3[is.na(df3$var3)] <- mean(df3$var3, na.rm = TRUE)
        
df3$var3 <- round(df3$var3)  


# 9) carica il dataset df4, calcola gli outliers della variabile prezzoink ed eliminali

df4 <- read.csv("df4.csv", sep = ";")

str(df4)

boxplot(df4$prezzoink)$out

outliers <- boxplot(df4$prezzoink, plot = FALSE)$out

new_df <- df4[-which(df4$prezzoink %in% outliers),]

boxplot(new_df$prezzoink)$out


# 10) Carica il dataset df5 e cancella i duplicati presenti

library(readxl)

df5 <- read_xls("df5.xls")

duplicated(df5)

sum(duplicated(df5))

df5 <- df5[!duplicated(df5),]

