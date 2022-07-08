# abbiamo tre funzioni di base per creare una matrice

# la funzione matrix() che crea una matrice

matrix()

# la funzione cbind() crea una matrice concatenando delle colonne (sta per column bind)


cbind() # column bind

# la funzione rbind() crea una matrice concatenando delle righe (sta per row bind)

rbind() # row bind

# creiamo un vettore x che contiene dei numeri da 1 a 20

x <- 1:20

# convertiamo il vettore x in una matrice

matrix(x)

matrix(x, nrow = 2)

matrix(x, nrow = 2, byrow = TRUE)

matrix(x, nrow = 4, byrow = T)

matrix(x, nrow = 7, byrow = T)

matrix(x, nrow = 20, ncol = 2)

mat1 <- matrix(x, ncol = 5, byrow = T)

dim(mat1) <- c(10,2)

t(mat1)

mat2 <- matrix(data = c(4, 23, 15, 2, 7, 9, 11, 5, 21, 16, 53, 27, 33, 12, 24, 31, 17, 39, 46, 76, 81, 22, 10, 24), nrow = 4, byrow = TRUE,
               dimnames = list(c('r1', 'r2', 'r3', 'r4'),
                               c('col1', 'col2', 'col3', 'col4','col5','col6')))

mat2[2, 3]

mat2[ , 1]

mat2[2 , ]

mat2[1:3, 4:6]

mat2[c(1,4),]

mat2[, c(2, 6)]

mat2 + 2

mat2 * 3

mat3 <- matrix(1:9, nrow = 3)
mat4 <- matrix(10:18, nrow = 3)

mat3 * mat4

mat5 <- matrix(1:4, nrow = 2)

mat3 * mat5

cl1 <- c(75, 121)
cl2 <- c(24, 78)
cl3 <- c(43, 75)

mat_cl <- rbind(cl1, cl2, cl3)

cl4 <- c(85, 94)

mat_cl <- rbind(mat_cl, cl4)

acq3 <- c(92, 87, 65, 102)

mat_cl <- cbind(mat_cl, acq3)

colnames(mat_cl) <- c('acq1', 'acq2', 'acq3')

rowSums(mat_cl)

colSums(mat_cl)

rowMeans()

colMeans()







