# stringhe semplici

'Hello'

str1 <- 'Hello'

str1

print(str1)

# informazioni sull'oggetto

typeof(str1)

class(str1)

is.character(str1)

# lunghezza

length(str1)

# numero di caratteri

nchar(str1)

# creiamo una seconda stringa

str2 <- 'world!'

paste(str1, str2)

paste0(str1, str2)

is.character(str1)

name <- "Vale"
language <- "R"
cat("Hello,", name, "how's going with", language, '?')

str3 <- toString(1:10)

str4 <- as.character(11:20)

strsplit(str3, split = ',')

str5 <- "oggi fa caldo ma domani dovrebbe piovere"

str6 <- strsplit(str5, split = ' ')

str7 <- unlist(str6)

"non vedo l’ora di andare al mare"

"oggi fa caldo ma \"domani\" dovrebbe piovere"

cat("Tabulation\ta\ta\n and a new line")


# le funzioni che vediamo di seguito
# grep() strsplit() regexpr() gregexpr() sub() 
# sono costruite per supportare le espressioni regolari

# grep()

str8 <- c("Firenze", "Roma", "Dubai", 
          "mele", "pesche", "arselle", "mitili", 
          "01/02/1971", 
          "gatto", "cane", "topo", 
          "Genova", "Rimini", "Riccione", "Rospo")


grep(pattern = 'F', str8)

grep(pattern = 'c', str8)


# cerchiamo gli elementi che contengano la r minuscola E maiuscola

grep(pattern = "r", str8, ignore.case=TRUE)

# possiamo cercare anche un elemento intero

grep(pattern = "Firenze", str8)

grep(pattern = "Roma", str8)

# oppure tramite le espressioni regolari
# ad esempio tutte le parole che iniziano per 'm'

grep(pattern = "^m", str8)

# aggiungendo l'argomento value = TRUE visualizziamo l'elemento e non la posizione

grep(pattern = "^m", str8, value = TRUE)


# grepl()

# si differenzia perché ci restituisce un vettore logico

grepl(pattern = "F", str8)

# gsub()

# permette di sostituire un elemento con un altro

gsub(pattern = "a", "b", str8)

gsub(pattern = "Roma", "Milano", str8)

str8

# come sempre per salvare il risultato di un'operazione 
# dobbiamo aggiornare il vecchio oggetto o salvarne uno nuovo

str9 <- gsub(pattern = 'Roma', 'Milano', str8)


# le due funzioni seguenti ci restituiscono un output in formato diverso

# regexpr()

regexpr(pattern = "F", str7)

# gregexpr()

gregexpr(pattern = "F", str7)

# strsplit()

# questa funzione ci permette di splittare un elemento in più parti

str10 <- "abc.def"

strsplit(str10, split = '\\.')


str11 <- "test1;test2"

strsplit(str11, split = '\\;')

# match()

# match() confronta due stringhe e ci dice quali elementi corrispondono 

str10 <- c("A", "B", "C", "D")
str11 <- c("A", "b", "c", "d")

# confrontiamo i due oggetti con la funzione match()
match(x = str10, table = str11)

# creiamo altri due oggetti, stavolta uguali:
        
str12 <- c("A", "B", "C", "D")
str13 <- c("A", "b", "c", "d")

match(str12, str13)

# substr()

substr("abcdefg", 2, 6)


# gsub()

mail <- c("my mail is test@test.com", "my other test email ist test2@test.co.uk")

# estraiamo le email dal testo

sub("(.*\\s+|^)(\\S+@\\S+).*", "\\2", mail)

unlist(regmatches(mail, gregexpr("\\S+@\\S+", mail)))

num1 <- c("Alex visited 5 cities and 8 beaches this year", "Alex spent 10 days of his summer holidays visiting Italy")

# con la notazione seguente, eliminiamo i numeri da un testo
gsub("\\d", "", num1)

# o in alternativa
gsub("[[:digit:]]", "", num1)

# di seguito, invece, estraiamo solo i numeri
gsub("\\D", "", num1)

gsub("[[:punct:]]", "", str14)

ts <- "test    with    some    more    spaces. But also some . and ,,, "

ts

gsub("[[:punct:]]", "", ts)

gsub("[ \t]{2,}", " ", ts)


# in alternativa per molte di queste operazioni possiamo usare il pacchetto stringr

install.packages('stringr')
library(stringr)


# restituisce il numero di caratteri

str_length(str)

# restituisce il numero di parole

str_count(str, " ")

# unisce due stringhe

str_c(str1, str2)

str_c("a", "b", "c", sep = ',')

# converte in minuscolo

str_to_lower(str)

# converte in maiuscolo

str_to_upper(str)

# estrae rispettivamente il primo pattern e tutti

str_extract(str, 'pattern')
str_estract_all(str, 'all patterns')

# verificano la presenza di un pattern

str_detect(str, 'pattern')

str_match(str, "pattern")

# divide una stringa

str_split(str, " ")


