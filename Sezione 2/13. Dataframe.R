# abbiamo vari metodi per creare un dataframe

# direttamente tramite la funzione data.frame()

df1 <- data.frame(id = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                  name = c('Laura', 'Simon', 'Kate', 'Francis', 'Joseph', 'Rosie', 'Matt', 'Eleanor', 'Angie', 'Hamed'),
heights = c('168', '180', '165', '169', '178', '164', '182', '170', '163','164'),
                 sex = c('f', 'm', 'f', 'm', 'm', 'f', 'm', 'f', 'f', 'm'),
age = c(32, 35, 54, 57, 39, 42, 33, 16, 29, 27))


# oppure mettendo insieme più vettori attraverso la stessa funzione data.frame()

v1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
v2 <- c('pizza', 'pasta', 'steak', 'sushi', 'pizza', 'pizza', 'sushi', 'pasta', 'sushi', 'steak')
v3 <- c('Rome', 'Milan', 'Paris', 'Bruxelles', 'Rome', 'Rome', 'Milan', 'Palermo', 'Bruxelles', 'Paris')
v4 <- c(55, 60, 35, 72, 38, 54, 80, 42, 25, 48)
v5 <- c(T, F, F, T, T, F, F, T, F, F)

df2 <- data.frame(v1, v2, v3, v4, v5)

# verifichiamo la classe dei due dataframe creati

class(df1)
class(df2)

# quali altri azioni possiamo svolgere sui nostri dataframe?

# possiamo ad esempio aggiungere una variabile al nostro dataframe tramite l’operatore logico $ 

df1$married <- c(T, F, F, T, T, F, F, T, F, F)

# in questo caso abbiamo aggiunto un operatore logico: T sta per TRUE, e F per FALSE

# verifichiamo che la variabile sia stata aggiunta correttamente

# per farlo utilizziamo la funzione head(), che ci mostra le prime occorrenze del dataframe

head(df1)

# posso anche decidere quante occorrenze stampare, tramite il secondo parametro della funzione head()

head(df1, 3)


# per rimuovere una variabile da un dataframe, invece, procediamo in questo modo

df$married <- NULL

# possiamo aggiungere una variabile anche tramite la funzione cbind()

df1 <- cbind(df1, v5)

# l’operatore ‘$’ può essere utilizzato per estrarre una variabile dal dataset, ad esempio: 

age <- df1$age

# sempre per estrarre delle variabili possiamo utilizzare anche delle notazioni alternative

age2 <- df1[['age']]

# questa notazione, come quella precedente df$var, estrae la variabile come vettore, mentre quella qua sotto la estrae come dataframe

age3 <- df1['age']

# verifichiamo la struttura dati con la funzione class per i tre oggetti

class(age)
class(age2)
class(age3)

# possiamo estrarre casi e variabili con le stesse logiche che abbiamo utilizzato per le matrici:

# estraiamo soli casi
df1[1:5, ]

# sole variabili
df1[, 2:6]

# entrambi

df1[6:10, 1:3]

# per casi e variabili non contigui

df1[c(1, 5, 7, 10), ]

df1[, c(1, 3)]

# oppure escludere dall’estrazione alcuni casi o variabili tramite l’estrazione inversa

df1[-2, ]

df1[-c(2,7),]

df1[, -c(1,3)]

# possiamo anche estrarre una o più variabili tramite il nome:

# nel caso di variabili singole

# sotto forma di vettore singolo

df1[, 'name']

# sotto forma di dataframe

df1['heights']

# interrogando il dataframe su un singolo caso

df1[ 3, 'sex']

# su più casi

df1[1:3, 'sex']

# su più casi e variabili

df1[1:8, c('sex', 'v5')]


# possiamo anche isolare gruppi di casi che presentano determinate condizioni

# sotto forma di vettore logico

df1$sex == 'm'

# oppure sotto forma dei casi che corrispondono a determinate condizioni

df1[df1$sex == 'm' ,]

subset(df1, sex == 'm')


# ancora, possiamo ordinare un dataframe in base a una delle sue variabili:

ordf <- order(df1['age'])

# in alternativa ordf <- order(df1$age)

df1[ordf,]

ordf2 <- order(-df1['id'])

df[ordf2,]


# modificare i nomi delle variabili

colnames(df1)[6] <- 'married'

colnames(df2) <- c('id', 'pref_food', 'city', 'income_k_y', 'married')


# andiamo a verificare la struttura dei dati

# la funzione summary restituisce informazioni sulla statistica di base delle variabili

summary(df1)

# la funzione str() mi dà informazioni in più sulla struttura del dataframe

str(df1)

# se convertiamo in questo modo otteniamo la conversione errata nei livelli del fattore

df1$heights <- as.integer(df1$heights)

# dobbiamo convertire così

df1$heights <- as.integer(as.character(df1$heights))

# o ancora meglio, ricordarci di inserire il parametro stringsAsFactors al momento di importare i dati

# stringsAsFactors = FALSE

df1 <- data.frame(id = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                  name = c('Laura', 'Simon', 'Kate', 'Francis', 'Joseph', 'Rosie', 'Matt', 'Eleanor', 'Angie', 'Hamed'),
                  heights = c('168', '180', '165', '169', '178', '164', '182', '170', '163','164'),
                  sex = c('f', 'm', 'f', 'm', 'm', 'f', 'm', 'f', 'f', 'm'),
                  age = c(32, 35, 54, 57, 39, 42, 33, 16, 29, 27), stringsAsFactors = FALSE)


# possiamo a questo punto unire i due dataframe sulla base di una chiave comune, che è la variabile 'id'

merge(df1, df2, by = 'id')


# riordiniamo le colonne

# ordine originale

colnames(df1)

# per posizione

df1[c(1,2, 4,5,3)]

# oppure tramite il nome

df1[c("id", "name", "heights", "sex", "age" )]

# ricordiamoci sempre di sovrascrivere il vecchio dataset 
# o di creare uno nuovo, per rendere definitiva la modifica!
        















