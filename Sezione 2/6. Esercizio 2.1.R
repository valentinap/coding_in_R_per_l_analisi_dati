# 1) crea due vettori, ad esempio vettore1 e vettore2, ognuno contenente 10 numeri interi casuali da 1 a 100. Calcola la loro somma elemento per elemento e stampa il risultato

set.seed(1234) # imposta il seed per avere sempre gli stessi risultati

vettore1 <- sample(1:100, 10)
vettore2 <- sample(1:100, 10)

somma <- vettore1 + vettore2

print(somma)

# 2) calcola la media dei due vettori 

mean(vettore1)
mean(vettore2)


# 3) calcola il prodotto dei due vettori

vettore1*vettore2


# 4) ordina il vettore1 dall'elemento più piccolo al più grande e poi il contrario

sort(vettore1)
sort(vettore1, decreasing = TRUE)


# 5) seleziona dal vettore2 tutti gli elementi maggiori di 15


vettore2[vettore2 > 15]


# 6) seleziona dal vettore2 l'elemento 2 e 7

vettore2[c(2, 7)]

# 7) converti il vettore2 in caratteri e poi di nuovo in valore numerico

vettore2 <- as.character(vettore2)

vettore2 <- as.integer(vettore2)

# verifica la classe dell'ultimo vettore

class(vettore2)


# 8) crea un vettore di caratteri vettore3 contenente i seguenti elementi: mela, banana, pera, arancia, uva, melone

vettore3 <- c("mela", "banana", "pera", "arancia", "uva", "melone")


# 9) conta il numero di elementi nel vettore3

length(vettore3)


# 10) crea un elemento vettore4 in cui unisci gli elementi del vettore1 e quelli del vettore3 
# e poi stampalo per verificare

vettore4 <- c(vettore1, vettore3)

print(vettore4)


