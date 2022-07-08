# 1) crea un vettore v1 contenente i numeri 5, 7, 9. 
# crea un vettore v2 contenente 15, 1, 17
# verifica se v1 è maggiore di v2

v1 <- c(5, 7, 9)
v2 <- c(15, 1, 17)

v1 > v2



# 2) crea un loop con if e else che dica se un numero è positivo o negativo e testala

x <- -2

if(x > 0) {
        print('il tuo numero è positivo')
}else{
      print('il tuo numero è negativo')  
}

# 3) crea una funzione che moltiplichi due numeri e applicala a due numeri a scelta

mol1 <- function(x, y){
        x*y
}

mol1(7, 5)

# 4) crea una funzione che moltiplichi un numero per 5 e applicala al numero 22

mol2 <- function(x) {
        x*5
}

mol2(22)

# 5) crea un loop con for che stampi le parole del seguente vettore 
# e conti i caratteri di ogni parola

words <- c('Hi', 'love', 'coding', 'with', 'R')

for(w in words) {
        print(w)
        print(nchar(w))
}


# 6) crea un oggetto x pari a 1
# con l'aiuto di while crea un loop che a ogni passaggio aggiunga 1 a x e si fermi quando
# il valore di x raggiunge 10

x <- 1

while(x <= 10){
        print(x)
        x <- x +1
}


# 7) crea loop con else, if, else if che mi consigli 
# se uscire di casa a seconda della temperatura 

temp <- 38

if( temp > 36 & temp < 40) {
        print('Fa troppo caldo per uscire')
}else if(temp > 18 & temp < 28){
        print('Fuori si sta bene')
}else if(temp < 13) {
        print('Fa troppo freddo fuori')
}else{
      print('Si è rotto il termometro')  
}


# 8) crea una loop con if e else che mi dica se un numero è positivo o negativo

x <- 3

if(x%%2 == 0) {
        print('numero pari')
}else{
        print('numero dispari')
}


# 9) crea loop con if e else che mi dica se un oggetto x è un vettore 

x <- matrix()

if(is.vector(x)) {
        print("l'oggetto è un vettore")
}else{
     print("l'oggetto non è un vettore")   
}


