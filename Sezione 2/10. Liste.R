# creiamo un vettore
vet1 <- 1:10

# creiamo una matrice
mat1 <- matrix(20:34, nrow=5)

# creiamo una lista
list1 <- list(vet1, mat1)

# stampiamo la lista
list1

list2 <- list(
        1:5,
        c(TRUE, FALSE, FALSE, TRUE),
        c("primo", "secondo", "terzo"),
        sum,
        matrix(1:9, ncol=3, nrow=3)
)

# stampiamo adesso la lista

list2

# estraiamo dei sottoelementi applicando le regole di subsetting differenti a seconda
# che si tratti di un vettore, di una matrice, di un array


list2[[1]]

list2[[1]][2]

list2[[5]][1:2, ]

# attribuiamo dei nomi agli oggetti della nostra lista

names(list2) <- c("item1", "item2", "item3", "item4", "item5")

# quando la lista ha dei nomi, possiamo accedere agli elementi 
# a partire dal nome stesso

list2$item2

# come aggiungiamo altri oggetti alla nostra lista?

list3 <- append(list2, c(3, 6, 7.5))

# stampiamo la nuova lista

print(list3)

# oppure

list3$new_item <- iris$Sepal.Length

# la funzione unlist ci permette di delistare gli elementi di una lista per avere più
# facile accesso, o di accedere ai sottoelementi della lista

unlist(list3$new_item)

# vediamo un altro esempio


list4 <- list(
        c("www.test1.com", "www.test2.com", "www.test3.com", "www.test4.com"),
        c("www.google.com", "www.facebook.com", "www.linkedin.com"))

print(list4)

unlist(list4[1])
unlist(list4[2])

unlist(list4)
