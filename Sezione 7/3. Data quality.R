## missing values

var1 <- c(12, NA, 45, 57, 24, 48, NA)
var2 <- c(NA, 37, 24, 61, NA, 19, NA)
var3 <- c(71, NA, 45, 52, 70, 18, 34)

df <- as.data.frame(cbind(var1, var2, var3))

is.na(df)

table(complete.cases(df))

prop.table(table(complete.cases(df)))

sum(complete.cases(df))

sum(!complete.cases(df))

na.exclude(df)

na.omit(df)

df[complete.cases(df),]

# tidyr

library(tidyr)

drop_na(df)

install.packages("VIM")
library(VIM)

matrixplot(df)

mean(df$var1)

mean(df$var1, na.rm = TRUE)

df$var1[is.na(df$var1)] <- mean(df$var1, na.rm = TRUE)

mean(df$var2, na.rm = TRUE)

df$var2[is.na(df$var2)] <- 35.25


## outliers

boxplot(mtcars)$out

boxplot(mtcars$hp)$out

boxplot(mtcars$hp, plot = FALSE)$out

outliers <- boxplot(mtcars$hp, plot = FALSE)$out

new_mtcars <- mtcars[-which(mtcars$hp %in% outliers),]

nrow(mtcars)

nrow(new_mtcars)


## duplicates

names <- c("Simon", "Kate", "Francis", "Laura", "Nora", "Julian", "Rosie", "Simon", "Nick", "Francis")
heigth <- c(180, 165, 170, 164, 163, 175, 166, 180, 182, 170)
weight <- c(85, 65, 68, 45, 43, 72, 46, 85, 74, 68)
pref_food <- c("steak", "pizza", "pasta", "pizza", "vegetables", "steak", "seafood", "steak", "seafood", "pasta")


df3 <- data.frame(names, heigth, weight, pref_food)

duplicated(df3)

which(duplicated(df3))

sum(duplicated(df3))

df3[!duplicated(df3),]

df4 <- df3[!duplicated(df3),]
