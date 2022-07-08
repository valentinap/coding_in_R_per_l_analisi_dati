# 1) crea un dataframe df1 a partire dai seguenti vettori facendo attenzione ad aggiungere il parametro stringsAsFactors come FALSE

var1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
var2 <- c('Lucia', 'Claudio', 'Maurizio', 'Patricia', 'Matt', 'John', 'Leyla', 'Eleanor', 'Mary', 'Dominic')
var3 <- c('173', '169', '189', '167', '178', '174', '182', '170', '163','164')
var4 <- c('f', 'm', 'm', 'f', 'm', 'm', 'f', 'f', 'f', 'm')
var5 <- c(32, 35, 54, 57, 39, 42, 33, 16, 29, 27)


df1 <- data.frame(var1, var2, var3, var4, var5, stringsAsFactors = FALSE)

# 2) converti la variabile var3 in numerica

str(df1)

df1$var3 <- as.integer(df1$var3)

# 3) rinomina le variabili con i nomi id, name, heigth, sex, age

colnames(df1) <- c('id', 'name', 'heigth', 'sex', 'age')

# 3) crea una matrice con i numeri da 1 a 100 su 10 colonne e convertila in dataframe df2

mat1 <- matrix(1:100, ncol = 10, byrow = T)
df2 <- data.frame(mat1, stringsAsFactors = FALSE)

# 4) aggiungi la quinta colonna di df2 al df1

df1$v5 <- df2[, 5]

cbind(df1, df2$X5)

# 5) tra i dataset di R ce n'è uno che si chiama state.x77: visualizza i primi casi con la funzione head() 

head(state.x77)

head(state.x77, 2)

# 6) verifica il numero di righe e di colonne

nrow(state.x77)
ncol(state.x77)

# 7) estrai i casi da 5 a 20 

state.x77[5:20,]

# 8) estrai le variabili dalla quarta alla settima

state.x77[, 4:7]

# 9) estrai le righe 15, 22, 33

state.x77[c(15, 22, 33),]

# 10) estrai le colonne 1, 3 e 7

state.x77[, c(1, 3, 7)]

# 11) dal dataset precaricato iris estrai i casi in cui la variabile Species sia uguale a Versicolor

iris[iris$Species == 'versicolor',]

# 12) trasponi il dataframe df1 con la funzione t()

t(df1)

# 13) crea una nuova variabile new_height che aggiunga due alla variabile heigth

df1$new_heigth <- df1$heigth + 2

# 14) riordina il dataset in base alla variabile new_heigth

ordf <- order(df1['new_heigth'])

df1[ordf,]

# 15) dal dataset precaricato mtcars estrai con la funzione subset() i casi in cui 
# la variabile cyl è uguale a 6

subset(mtcars, cyl == 6)




