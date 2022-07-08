# in questo modo installiamo automaticamente da CRAN

install.packages('nome_pacchetto')
library(nome_pacchetto)

# altre repository

install_github() #  da GitHub

install_bioc() # da Bioconductor

install_bitbucket() # da Bitbucket

install_git() # da git

install_local() # se il pacchetto è stato scaricato in locale

install_url() # da un indirizzo web URL

install_version() # installa una versione specifica di un pacchetto sempre da CRAN


# per installare dalle altre repository installiamo prima il pacchetto devtools

install.packages('devtools')
library(devtools)

# e poi installiamo secondo le istruzioni proprie di ogni pacchetto

install_github('twitter/AnomalyDetection')
