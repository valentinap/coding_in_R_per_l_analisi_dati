# 1) Crea una matrice mat1 con i numeri da 12 a 23, divisi su 3 righe e su 4 colonne, e organizzati per riga

mat1 <- matrix(12:23, nrow=3, ncol=4, byrow = TRUE)

# 2) Crea un oggetto mat2 trasponendo la matrice mat1 con la funzione t()

mat2 <- t(mat1)

# 3) Scopri il numero di colonne di mat2 con la funzione ncol()

ncol(mat2)

# 4) Adesso scopri il numero di righe di mat2 con la funzione nrow()

nrow(mat2)

# 5) Crea un vettore car1. All'interno mettici le letter da "a" a "n" inclusa

car1 <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "l", "m", "n")

# 6) Organizza l'oggetto car1 in una matrice mat3 con 4 righe e 3 colonne

mat3 <- matrix(car1, nrow = 4, ncol = 3)

# 7) Seleziona da mat3 l'elemento che si trova nella terza riga e nella seconda colonna

mat3[3,2]

# 8) Seleziona ora tutta la seconda colonna

mat3[,2]

# 9) Seleziona le righe dalla prima alla terza inclusa

mat3[1:3,]

# 10) Riprendiamo le matrici mat1 e mat2. Come ricordi (stampale nella console, se credi), una ha quattro righe, l'altra ne ha tre. Sommiamo le prime due righe e le prime tre colonne delle due matrici. Dovrai utilizzare il subsetting come abbiamo visto qua sopra, altrimenti otterrai un errore

mat1[1:2, 1:3] + mat2[1:2, 1:3]

# 11) Riprendiamo la matrice mat3. Attribuisci i nomi col1, col2 e col3 alle colonne della matrice con la funzione colnames(). Ricordati che sono stringhe, quindi vanno tra virgolette! Attribuisci anche i nomi delle righe: row1, row2 eccetera

colnames(mat3) <- c("col1", "col2", "col3")

rownames(mat3) <- c("row1", "row2", "row3", 'row4')

# 12) Calcola il totale delle righe e delle colonne della matrice mat1

rowSums(mat1)
colSums(mat1)

# 13) Calcola la media delle righe e delle colonne della matrice mat1

rowMeans(mat1)
colMeans(mat1)

# 14) Calcola la somma e la media della prima riga della matrice mat2

sum(mat2[1,])
mean(mat2[1,])
