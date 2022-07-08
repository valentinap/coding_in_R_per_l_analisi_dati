# installare un pacchetto

install.packages('nome_pacchetto', dependencies = TRUE)

# richiamare un pacchetto

library(abcrlda)

require(arules)

# installare più pacchetti 

install.packages(c('pacchetto1', 'pacchetto2', 'pacchetto3'))

# visualizzare i pacchetti installati

View(installed.packages())

# rimuovere un pacchetto

remove.packages('nome_pacchetto')
