# apply()

apply(iris[, 1:4], 1, mean) # restituisce la media per ogni riga
apply(iris[, 1:4], 2, mean) # restituisce la media per ogni colonna


# lapply()

lapply(iris, mean)
lapply(iris, class)

# sapply()

sapply(iris, mean)
sapply(iris, class)

# mapply()

list1 <- list(A = matrix(1:12, 4), B = 20:40, C = -10:-20, D = matrix(1:9, 3))

list2 <- list(A = matrix(12:23, 3), B = 20:40, C = -10:-20, D = matrix(1:9, 3))

mapply(identical, list1, list2)

# tapply()

tapply(iris$Sepal.Length, iris$Species, mean)

## aggregate()

aggregate(Petal.Length~Species, iris, mean)

aggregate(cbind(Petal.Length, Petal.Width)~Species, iris, mean)


