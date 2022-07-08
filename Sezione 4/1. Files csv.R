
??read.table

df1 <- read.table('df1.csv', header = TRUE, sep = ',', stringsAsFactors = FALSE)

head(f1)
str(df1)

df2 <- read.csv("/Users/valentinaporcu/Desktop/df2.csv", header = TRUE, sep = '\t', stringsAsFactors = FALSE)

df3 <- read.csv("df3.csv", header = TRUE, sep = ';', stringsAsFactors = FALSE)

# https://data.gov.uk/dataset/c2d3319a-4a35-4e38-baa1-d85e33fd8d9c/house-prices

df4 <- read.csv("https://lincolnshire.ckan.io/dataset/c2d3319a-4a35-4e38-baa1-d85e33fd8d9c/resource/266fac8f-4409-4db6-adf8-cb76f1450445/download/houseprices.csv",
                header = TRUE, sep = ',', stringsAsFactors = FALSE)

# scrivere un dataset

write.csv(df1, 'nuovo_df1.csv')


# tidyverse

library(readr)

library(tidyverse)

??read_delim

df5 <- read_csv('df5.csv')

write_csv(df5, 'nuovo_df5.csv')


