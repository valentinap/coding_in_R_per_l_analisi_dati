# media

s1 <- c(165, 168, 170, 163, 168, 165, 164, 172)

mean(s1)

sum(s1)/length(s1)

sum(s1)

length(s1)

s2 <- c(165, 168, 170, 163, 168, 165, 164, 210)

mean(s2)

# mediana

median(s1)

sort(s1)

median(s2)

# moda

mode <- function(x) {
        uni.x <- unique(x)
        uni.x[which.max(tabulate(match(x, uni.x)))]
}

mode(s1)
mode(s2)


# quantili

quantile(s1)

x <- rnorm(10000, mean = 90, sd = 5)


# normal distribution

hist(x, breaks = 50, col = topo.colors(50))

# skewness 

hist(rbeta(10000,5,5), col = heat.colors(17)) # normal

hist(rbeta(10000, 5, 2), col = heat.colors(17)) # negatively

hist(rbeta(10000, 2, 5), col = heat.colors(17)) # positively



# 3

# varianza e deviazione standard

chicken_consumption1 <- c(10, 10, 10)

var(chicken_consumption1)

sd(chicken_consumption1)



chicken_consumption_2 <- c(1, 10, 20)

var(chicken_consumption_2)

sd(chicken_consumption_2)



# correlazione

cor(iris[, 1:4])

pairs(iris[, 1:4])

install.packages("corrplot")

library(corrplot)

iris_cor <- cor(iris[, 1:4])


corrplot(iris_cor, method = "pie")


