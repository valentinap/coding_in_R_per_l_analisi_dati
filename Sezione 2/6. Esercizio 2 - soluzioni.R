# 1) Crea per prima cosa un vettore numerico che chiamerai vn che contenga i numeri 2, 5, 9, 14. Ricorda di usare la funzione c()

vn <- c(2, 5, 9, 14)

# 2) Ora crea un vettore di caratteri che chiamerai vc che contenga le città di Napoli, Como, e Rovigo. Ricorda di usare la funzione c() e di mettere le stringhe tra virgolette

vc <- c("Napoli", "Como", "Rovigo")

# 3) Adesso creiamo un vettore logico vl che contenga due FALSE e 3 TRUE

vl <- c(FALSE, FALSE, TRUE, TRUE, TRUE)

# 4) Ristampa il vettore di numeri vn

print(vn)

# 5) Calcola la media su vn tramite la funzione mean()

mean(vn)

# 6) Crea un altro vettore numerico vn2 che contenga i numeri 4, 7, 11, 21

vn2 <- c(4, 7, 11, 21)

# 7) Somma i due vettori numerici creati e poi crea un vettore tot_vn che contenga entrambi i due vettori ma senza sommarli

vn + vn2

tot_vn <- c(vn, vn2)


# 8) Riordina il vettore vn2 con la funzione sort()

sort(vn2)

# 9) Seleziona il secondo elemento dal vettore vc

vc[2]

# 10) E se volessi selezionare il primo e il terzo elemento?

vc[c(1, 3)]

# Introduciamo una nuova funzione: la funzione seq() può essere usata per creare sequenze di numeri. Creiamo con R un oggetto seq1 composto dai numeri da uno a venti con questo codice: seq1 <- seq(1, 20)

# 11) Dall'oggetto seq1 estrai gli elementi dal quinto al nono

seq1[5:9]


# 12) Sempre partendo dal nostro oggetto seq1 sostituisci il secondo elemento con la stringa "nuovo oggetto"

seq1[2] = "nuovo oggetto"

# 13) stampa per verificare la correttezza dell'operazione

print(seq1)

# 14) Riprendi il vettore numerico vn. Verifica la sua natura con la funzione is.vector()

is.vector(vn)

# 15) Adesso andiamo a cambiare la natura del vettore vn con la funzione as.character(). Salva il risultato nell'oggetto vnc e stampa l'oggetto per verificare che ogni elemento sia racchiuso tra virgolette

vnc <- as.character(vn)
print(vnc)

