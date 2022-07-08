cities <- data.frame(c(rep("New York", 57), rep("Paris", 44), rep("London", 39), 
                       rep("New Mexico", 25), rep("Rome", 17), rep("Dublin", 18)))

colnames(cities) <- "cities"

View(cities)

random <- runif(nrow(cities))

cities <- cities[order(random),]

View(cities)

table <- table(cities)

barplot(table)

sorted_table <- sort(table)

barplot(sorted_table)

barplot(sorted_table, col = topo.colors(6))

barplot(sorted_table, col = heat.colors(6))

my_palette <- c("royalblue1", "slateblue3", "snow4", "tan", "violet",
                "yellow2")

barplot(sorted_table, col = my_palette)

barplot(sorted_table, col = my_palette, main = "cities", 
        sub = "a test for graphs on some cities",
        xlab = "cities names", ylab = "population")


perc <- prop.table(table)*100

barplot(perc, col = my_palette, main = "cities", 
        sub = "a test for graphs on some cities, with percentages",
        xlab = "cities names", ylab = "population")


pie(perc)

pie(perc, col = heat.colors(6), main = "cities on pie")


sex <- data.frame(c(rep("m", 100), rep("f", 100)))

random2 <- runif(nrow(sex))
sex <- sex[order(random2),]

table2 <- table(sex)


df <- data.frame(cbind(cities, sex))

mosaicplot(~ sex + cities, data = df)

install.packages("RColorBrewer")
library(RColorBrewer)

my_palette1 <- brewer.pal(6, "Spectral")

mosaicplot(~ sex + cities, data = df, col = my_palette1)


# scatterplot

plot(iris)

plot(iris$Sepal.Length)

plot(iris$Sepal.Length, iris$Sepal.Width)


plot(x = iris$Sepal.Length, 
     y = iris$Sepal.Width, 
     main = "IRIS",
sub = "Sepal plotted",
xlab = "Length",
ylab = "Width")

plot(x = iris$Sepal.Length, 
     y = iris$Sepal.Width, 
     main = "IRIS",
     sub = "Sepal plotted",
     xlab = "Length",
     ylab = "Width",
     col = "blue",
     pch = 6)


# overlap 1

par(mar = c(5,4,4,4))
plot(iris$Sepal.Length, col = 'blue', xlab = " ", ylab = " ")
par(new = T)
plot(iris$Sepal.Width, col = 'red')

# overlap 2

colors <- c("setosa" = "blue",
               "virginica" = "red",
               "versicolor" = "green")

plot(iris$Sepal.Length ~ iris$Sepal.Width,
              col = colors[iris$Species])


# lines

plot(AirPassengers, type = "l")

plot(AirPassengers, type="l", col="red", lwd=3)

plot(1:20, type="l", lty=3, lwd=3)


# histogram

age <- round(rnorm(10000, mean = 39))

hist(age, breaks = 10)

output <- cut(age, breaks = c(0:15, 16:25, 26:35, 36:45, 46:55, 56:65))

hist(as.numeric(output))

hist(age, 
     main="Histogram of Age", 
     xlab="Age", 
     border="white", 
     col="blue",
     breaks=10)

# boxplot

boxplot(iris[, 1:4])

boxplot(iris[, 1:4], horizontal = TRUE)

