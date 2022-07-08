# creiamo un vettore

x <- c(28, 37, 142, 7, 1, 3, 714, 15, 11, 98, 847, 4, 25, 37)

# tutti i valori di x maggiori di una certa somma

x > 100

# risposta come vettore logico

# per avere la risposta in forma numerica
# estraiamo gli elementi di x maggiori di 17

x[x > 100]


# il vettore contiene o no certi elementi?

x%in%c(58,147,22,69,49,13)

# ad esempio in questo modo, dal database iris, estraiamo solo i dati della terza colonna
iris[, 3]

# la virgola all’inizio significa che non stiamo prendendo in considerazione le righe, ma solo la terza colonna

iris[5:7,]

# subset di casi con certe condizioni

subset(iris, Species=="setosa")

iris[iris$Sepal.Length > 5 & iris$Sepal.Width < 3.9 ,]

# oppure estrazione casuale

iris[sample(1:nrow(iris), 50, replace=FALSE),]

# le funzioni di dplyr ci permettono di estrarre dei subset casuali di una tibble

library(dplyr)

sample_n(iris, 10)

sample_frac(iris, .15)

