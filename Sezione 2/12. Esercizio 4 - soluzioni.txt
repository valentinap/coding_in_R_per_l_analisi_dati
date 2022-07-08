# 1) crea un array arr1 composto da 30 elementi e suddiviso su 3 righe, 2 colonne e 5 elementi

arr1 <- array(1:30, c(3, 2, 5))

# 2) seleziona il quarto elemento da arr1

arr1[,,4]

# 3) seleziona le righe 1 e 3 da arr1

arr1[c(1,3), ,]

# 4) crea un array arr2 con i numeri da 1 a 24 su 4 colonne, 3 righe, e altre due dimensioni una di 2 e una da 3 elementi

arr2 <- array(1:24, c(3, 4, 2, 3))

# 5) crea un vettore v1 composto dai numeri 5,7, 11, 19

v1 <- c(5, 7, 11, 19)

# 6) crea una matrice mat1 composta dai numeri da 1 a 9 su tre righe

mat1 <- matrix(1:9, nrow =3, byrow= 3)

# 7) crea una lista l1 comprendente l'array arr1, il vettore v1 e la matrice mat1, e aggiungendo il dataset Orange che è già preinstallato su R

l1 <- list(arr1, v1, mat1, Orange)

# 8) estrai il secondo elemento, v1

l1[[2]]

# 9) estrai il primo elemento, arr1

l1[[1]]

# 10) dal primo elemento estratto dalla lista estrai le righe 1 e 3

l1[[1]][c(1,3),,]

# 11) crea un fattore f1 che comprenda le tipologie di gruppo sanguigno e stampalo per verificare i livelli

f1 <- factor(c('0+', 'A+', 'B+', 'AB+', '0-', 'A-', 'B-', 'AB-'))

# 12) crea un vettore gufo1 che registri i seguenti dati: Accettabile, Scadente, Accettabile, Desolante, Troll, Desolante, Scadente, Oltre Ogni Previsione, Accettabile, Eccezionale, Eccezionale, Troll

gufo1 <- c('Accettabile', 'Scadente', 'Accettabile', 'Desolante', 'Troll', 'Desolante', 'Scadente', 'Oltre Ogni Previsione', 'Accettabile', 'Eccezionale', 'Eccezionale', 'Troll')

# 13) aggiungi al vettore i livelli Eccezionale, Oltre Ogni Previsione, Accettabile, Scadente, Desolante e Troll e ordinali dal livello più alto al più basso. Salva tutto nel fattore gufo2

gufo2 <- factor(gufo1, order = TRUE, levels = c('Troll', 'Desolante', 'Scadente', 'Accettabile','Oltre Ogni Previsione', 'Eccezionale'))


# 14) crea una tabella per avere una visione d'insieme del fattore gufo2

table(gufo2)
