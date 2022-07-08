install.packages("ggplot2")
library(ggplot2)

# ggplot() qplot()

# qplot()

# barplot

cities <- c(rep("New York", 57), rep("Paris", 44), rep("London", 39), 
            rep("New Mexico", 25), rep("Rome", 17), rep("Dublin", 18))

qplot(cities)

qplot(cities, fill = cities)


# other graphs

df <- data.frame(sex = factor(rep(c("F", "M"), each=200)), 
                height = c(rnorm(200, 165), rnorm(200, 170)))

head(df)


qplot(sex, height, data = df, geom = "boxplot")


qplot(height, data = df, geom = "histogram", fill = sex)

qplot(height, data = df, geom = "density", xlab = "height in cm", ylab = "Density", 
      main = "Density plot")

qplot(height, data = df, facets = sex ~., fill = sex)


# scatterplot

qplot(x = mpg, y = wt, data = mtcars, geom = "point")

qplot(x = mpg, y = wt, data = mtcars, geom = c("point","smooth"))

qplot(x = mpg, y = wt, data = mtcars, size=cyl)

qplot(x = mpg, y = wt, data = mtcars, size=cyl, color=cyl)

qplot(x = mpg, y = wt, data = mtcars, size=cyl, color=hp, alpha=0.6)

# ggplot()

# barplot

ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut))

ggplot(diamonds, aes(x = cut)) + geom_bar(aes(fill = cut))

ggplot(diamonds, aes(x = cut)) + geom_bar(aes(fill = color))


# density plot

g1 <- ggplot(diamonds)

g1 + geom_density(aes(x = price, fill = clarity), alpha = 0.25)

# box plot

g1 + geom_boxplot(aes(x = price, fill = clarity))


## themes

g1 + geom_boxplot(aes(x = price, fill = clarity)) + theme_bw()g1 + geom_boxplot(aes(x = price, fill = clarity)) + theme_classic()

g1 + geom_boxplot(aes(x = price, fill = clarity)) + theme_dark()


# histograms

ggplot(diamonds, aes( x = price)) + geom_histogram(bins = 50, fill = 'red', alpha = 0.5)

ggplot(diamonds, aes( x = price)) + geom_histogram(bins = 50, fill = 'red', alpha = 0.5) + 
        theme_classic()



# scatterplot

ggplot(data = diamonds, aes(x = price, y = carat)) + geom_point()

ggplot(data = mtcars, aes(x = wt, y = mpg)) + geom_point(size = 3, shape = 16)

ggplot(data = mtcars, aes(x = wt, y = mpg)) + geom_point(size = 2, shape = 24)

ggplot(data = mtcars, aes(x = wt, y = mpg, color = cyl, size = cyl)) + geom_jitter()

g2 <- ggplot(data = mtcars, aes(x = wt, y = mpg, color = cyl, size = cyl)) + geom_jitter()

# facet

g2 + facet_grid(. ~ cyl)
