# 1) dal dataset mpg, disponibile nel pacchetto ggplot2, 
# estrai tramite la funzione which() le macchine della ford dalla variabile manufacturer



# 2) utilizza la funzione lapply() per ottenere in forma di lista 
# la media delle variabili displ, cyl, cty e hwy del dataset mpg



# 3) utilizza apply() per ottenere, sulle stesse variabili, 
# la media delle righe e delle colonne


# 4) utilizza la funzione aggregate() per ottenere la media della variabile 
# price in base alla variabile cut sul dataset diamonds 


# 5) dalla cartella toimp carica i dataset su RStudio aiutandoti con la funzione lapply()



# 6) utilizza sapply() per ottenere il valore minimo, massimo 
# e la media delle variabili numeriche del dataset mtcars


# 7) seleziona le colonne Sepal.Length e Petal.Length con la funzione di dplyr select()



# 8) importa con dplyr tutte le variabili meno Species


# 9) crea una nuova variabile septot che sommi le colonne Sepal.Length e Sepal.Width 
# di iris con la funzione mutate()


# 10) seleziona tutti i casi "setosa" dalla variabile Species con la funzione filter()


# 11) ordina tutti i casi di iris in base alla variabile Petal.Length 
# con la funzione arrange()



# 12) dopo aver creato il dataset seguente, riorganizzalo in senso longitudinale 
# e separa i dati nella colonna var3


df2 <- data.frame(
        id = 1:3,
        name = c("Yuri", "Lucia", "Elena"),
        var1 = c(32, 28, 36),
        var2 = c(50, 75, 64),
        var3 = c('170,m', '165,f', '174,f'))




# 13) dati i due dataset df3 e df4 uniscili in modo che includano tutti i casi di entrambi 
# i dataset senza i doppioni utilizzando la funzione merge()


df3 <- data.frame(id = c(2,7,4,5,11,6, 8, 12),
                  name = c('Shadan', 'Simon', 'Elliot', 'Francis', 'Joseph', 'Jane', 'Katherine', 'Laura'), 
                  heights = c(167, 180, 165, 169, 178, 164, 165, 163), 
                  sex = c('f', 'm', 'f', 'm', 'm', 'f', 'f', 'f'),
                  stringsAsFactors = F)

df4 <- data.frame(id = c(12, 1,8,3,10, 9), 
                  name = c('Laura', 'Nathan', 'Katherine', 'Dominic', 'Mary', 'Matthew'), 
                  heights = c(163, 179, 165, 158, 168, 184), 
                  sex = c('f', 'm', 'f', 'm', 'f', 'm'), 
                  value = c(28, 29, 25, 27, 18, 30),
                  pref_food = c('steak', 'pizza', 'pasta', 'pizza', 'steak', 'pasta'),
                  stringsAsFactors = F)



# 14) unisci df3 e df4 in modo che contengano solo i casi comuni ai due dataset 
# utilizzando la funzione merge()




# 15) unisci df3 e df4 in modo che contengano solo i casi di df3 e le variabili aggiuntive 
# di df4. Utilizza la funzione merge()



