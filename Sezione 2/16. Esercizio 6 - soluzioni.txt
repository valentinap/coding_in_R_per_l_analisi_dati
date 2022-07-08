# 1) creare la stringa s1 con contenuto 'I love' e una stringa s2 con contenuto 
# 'coding with R' e incollare le due stringhe con uno spazio tra le parole
# effettuare l'operazione con le funzioni base e con stringr

s1 <- 'I love'
s2 <- 'coding with R'

# base

paste(s1, s2)

library(stringr)

str_c(s1, s2, sep = " ")

# 2) salvare il risultato nell'oggetto s3

s3 <- paste(s1, s2)

# 3) quante parole contiene l'oggetto? Quanti caratteri?

length(s3)
nchar(s3)

str_count(s3, boundary('word'))

str_length(s3)

# 4) converti l'oggetto s3 in parole singole e sovrascrivilo in un oggetto con lo stesso nome

s3 <- unlist(strsplit(s3, split = ' '))

# 5) verifica il numero di caratteri con le funzioni di stringr

str_length(s3)

str_length(s3) %>% sum()

nchar(s3)

sum(nchar(s3))


# 6) crea il seguente vettore s4

s4 <- "Yesterday I went to the market to buy some food, I was in Paris, the temperature was 
warm and it was sunny. In a shop window I saw a nice scarf but the shop was closed, so I took
the mail address to get some informations later. It was shop@nice_scarf.com . I also took the phone number, it
was 3293456213"

# 7) converti s4 in minuscolo e in maiuscolo senza sovrascrivere

tolower(s4)
toupper(s4)

str_to_lower(s4)
str_to_upper(s4)

# 8) identifica se è presente la parola 'scarf'

grep(pattern = 'scarf', s4)

s4 %>% str_detect('scarf')

str_detect(string = s4, pattern = 'scarf')

# 9) estrai l'indirizzo email

sub("(.*\\s+|^)(\\S+@\\S+).*", "\\2", s4)

str_extract(s4, "\\S*@\\S*")

# 10) estrai il numero di telefono

gsub("\\D", '' , s4)

str_extract(s4, "(\\d)+")

# 11) sostituisci 'Paris' con una città a tua scelta

gsub(pattern = "Paris", "Rome", s4)

# 12) dividi s4 in singoli termini utilizzando la funzione strsplit() 
# e il separatore più adatto

strsplit(s4, split = ' ')

