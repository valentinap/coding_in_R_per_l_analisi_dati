library(dplyr)
library(plyr)

df1 <- data.frame(id = c(1,2,3,4,5,6),
                  name = c('Laura', 'Simon', 'Katherine', 'Francis', 'Joseph', 'Rosie'), 
                  heights = c(163, 180, 165, 169, 178, 164), 
                  sex = c('f', 'm', 'f', 'm', 'm', 'f'),
                  stringsAsFactors = F)

df2 <- data.frame(id = c(1,8,3,10, 11, 12), 
                  name = c('Laura', 'Nathan', 'Katherine', 'Dominic', 'Mary', 'Matthew'), 
                  heights = c(163, 179, 165, 158, 168, 184), 
                  sex = c('f', 'm', 'f', 'm', 'f', 'm'), 
                  value = c(28, 29, 25, 27, 18, 30),
                  stringsAsFactors = F)


inner_join(df1, df2)

left_join(df1, df2)

right_join(df1, df2)

semi_join(df1, df2)

full_join(df1, df2)
