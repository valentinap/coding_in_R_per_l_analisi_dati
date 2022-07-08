url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00222/bank.zip"

destination <- "bank.zip"

download.file(url, destination,method = "auto", quiet=FALSE)

unzipped <- unz("bank.zip", filename = "bank.csv")

bank <- read.csv(unzipped, sep = ';', stringsAsFactors = F)

head(bank, 5)


