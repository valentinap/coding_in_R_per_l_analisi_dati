# creiamo un vettore che contiene una variabile qualitativa non ordinabile

days <- c('lun', 'mar', 'mer', 'giov')

fac1 <- factor(days)

# ordiniamo il fattore

sort(fac1)

# creiamo un secondo vettore che contiene una variabile qualitativa ordinabile

tit_st <- c('laurea', 'diploma', 'l_media', 'master', 'laurea', 'laurea', 'diploma')

# convertiamo in fattore semplice

fac2 <- factor(tit_st)

# effettuiamo una seconda conversione utilizzando in aggiunta i parametri order, 
# per indicare che il fattore ha un ordine
# e levels per mettere in ordine i livelli del fattore

fac3 <- factor(tit_st, order = TRUE, levels = c('l_media', 'diploma', 'laurea', 'master'))


table(fac2)

summary(fac2)                                               

# install.packages("plyr")
library(plyr)

fac3 <- factor(c("A", "B", "C"))

revalue(fac3, c("A" = "X", "B" = "Y", "C" = "Z"))

