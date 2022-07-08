# creazione di vettori

# c()

vettore_numerico <- c(1, 4, 6, 7, 9, 12, 15, 17, 21)

vettore_di_caratteri <- c('Londra', 'Parigi', 'Roma', 'Madrid', 'Atene')

vettore_logico <- c(TRUE, FALSE, TRUE, FALSE, FALSE)

vettore_logico_2 <- c(T, F, T, F, F)

assign('nome_vettore', c(2, 4, 7, 12, 15, 19))


# seq()

vet1 <- seq(from = 1, to = 20, by = 2)

1:20

seq(1, 20)


# effettuare operazioni sui vettori

vet2 <- c(1, 3, 6, 8, 9, 10)

sum(vet2)

mean(vet2)

median(vet2)

vet2/2

vet2*3

length(vet2)


vet3 <- c(1, 2, 3)
vet4 <- c(4, 5, 6)

somma <- vet3 + vet4


moltiplicazione <- vet3 * vet4

sottrazione <- vet3 - vet4

divisione <- vet3/vet4

# effettuare operazioni tra vettori che sono uno multiplo dell'altro

x <- c(1, 2, 3, 4)
y <- c(5, 6)

x + y

# effettuare operazioni tra vettori che NON sono uno multiplo dell'altro

z <- c(10, 9, 7)

h <- c(4, 1)

z + h

x <- c(1, 5, 72, 8, 15, 32, 2, 4, 17)

# ordinare un vettore

sort(x)

sort(x, decreasing = F)

# subsetting - estrarre degli elementi da un vettore

x <- c('a', 'b', 'c', 'd')


x[1]

x[-3]

y <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'l', 'm', 'n', 'o')

y[1]

y[c(1, 13)]

y[3:7]

# sostituire un elemento di un vettore

y[1] <- 'nuovo_elemento'

y

# attribuire etichette agli elementi di un vettore

esami <- c(28, 27, 24, 22, 25)

names(esami) <- c('marketing', 'statistica', 'analisi', 'logica', 'text mining')

class(esami)

class(x)

mode(y)

typeof(y)

# forzare la natura di un vettore 

x <- 1:10

as.character(x)

is.character(x)

is.numeric(x)

y <- as.character(x)


