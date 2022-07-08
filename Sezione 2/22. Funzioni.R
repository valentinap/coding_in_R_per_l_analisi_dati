# funzioni

read.table(file, header = FALSE, sep = "", quote = "\"'",
           dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
           row.names, col.names, as.is = !stringsAsFactors,
           na.strings = "NA", colClasses = NA, nrows = -1,
           skip = 0, check.names = TRUE, fill = !blank.lines.skip,
           strip.white = FALSE, blank.lines.skip = TRUE,
           comment.char = "#",
           allowEscapes = FALSE, flush = FALSE,
           stringsAsFactors = default.stringsAsFactors(),
           fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)


args(read.table)

help(read.table)

read.delim

lm

my_fun <- function( argomento1, argomento2, ...) {
        istruzione
}


fun_somma <- function(x, y) {
        x + y
}


fun_somma(10, 6)

fun1 <- function(x) {
        if(x < 10) {
                print('Il numero è minore di 10')
        }else{
              print('Il numero è uguale o superiore a 10')  
        }
}


fun1(5)
fun1(20)



