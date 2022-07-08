install.packages("dplyr")
library(dplyr)

library(tidyverse)

## select()

select(diamonds,cut, color, clarity, 
       depth, table, price, x, y, z)

select(diamonds, cut:z)

select(diamonds, z:cut)

select(diamonds, -color)

select(diamonds, -(color:y))

# utilizzando il pipe %>%

diamonds %>% select(color) %>% count()

## mutate()

diamonds %>% mutate(conv_eur = price*0.92) %>% 
        mutate(con_pound = price*1.24)

## filter()

filter(diamonds, cut == "Ideal")

filter(diamonds, color!="E")

filter(diamonds, cut == 'Premium', price >= 500 & price <= 1000)

## arrange()

arrange(diamonds, carat)

arrange(diamonds, carat, price)

arrange(diamonds, desc(price))

## group_by()

diamonds %>% group_by(cut) 

nested <- diamonds %>% group_by(cut) 

nested %>% count()

## summarise()

summarise(nested, mppg = mean(price), min(price), max(price))

# controprova con le funzioni di base

fair <- diamonds[diamonds$cut == 'Fair',]
mean(fair$price, na.rm = TRUE)
min(fair$price)
max(fair$price)
