# if

x <- 5

if ( x < 0) {
        print('il tuo numero è negativo')
}


# if + else

y <- 1

if ( y > 5) {
        print('y è maggiore di 5')
} else {
        print('y è minore di 5')
}


# while

while(1 + 1 == 2)
        print('okay')

z <- 1

while(z < 5) {
        print('aggiungi ancora un elemento')
        z <- z + 1
        if(z == 5)
                print('stop')
}

# break

x <- 1

while(x <= 10) {
        print(x*2)
        if ((x*2) > 20) {
                break
        }
        x <- x +1
}

# for

vettore <- c(14, 23, 35, 41, 59, 67, 74, 82)

for(i in vettore) {
        print(i)
}

for(v in 1:length(vettore)){
        print(vettore[v])
}


# for nei dataframe

x <- rnorm(10)
y <- rnorm(10)
z <- rnorm(10)
h <- rnorm(10)

df <- as.data.frame(cbind(x, y, z, h))

for(i in 1:length(df)) {
        print(df[[i]])
}

for(i in seq_along(df)) {
        print(df[[i]])
}


