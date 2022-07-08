# 1) salva la data di oggi nell'oggetto today utilizzando la funzione base Sys.Date() 
# e la funzione di lubridate today()

today <- Sys.Date()

install.packages('lubridate')
library(lubridate)

today2 <- today()

# 2) converti la stringa '3-March-2018' con la funzione più adatta

as.Date('3-March-2018', format = '%d-%b-%y')

as.Date('Mar-3-2018', format = '%b-%d-%y')

strptime('Mar-3-2018', format = '%b-%d-%y')

as.POSIXct("March-3-2018 12:20:15", format = "%B-%d-%Y %H:%M:%S")

# 3) effettua il parsing della stringa "20200131" con l'apposita funzione di lubridate

ymd("20200131")

# 4) Dato il vettore x che contiene i numeri 75, 98 e 47 convertilo 
# in carattere con la funzione più adatta, 
# poi riconvertilo in formato numerico, verificando ogni volta la classe 

x <- c(75, 98, 47)

class(x)

x <- as.character(x)

class(x)

x <- as.numeric(x)

class(x)

# 5) converti i primi 10 casi del dataset Orange in matrice e poi di nuovo in dataframe

sub1 <- as.matrix(Orange[1:10, ])

df <- as.data.frame(sub1)

# 6) installa il pacchetto tidyverse con il codice seguente e stampa con la 
# funzione head() i primi 5 casi del dataset iris e i primi 5 casi del dataset diamonds

install.packages('tidyverse')
library(tidyverse)

head(iris, 5)
head(diamonds, 5)
