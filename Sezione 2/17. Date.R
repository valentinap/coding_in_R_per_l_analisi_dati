# abbiamo molte funzioni incluse in R per gestire il tempo

Sys.time()

Sys.Date()

Sys.timezone()

# salviamo il risultato di un'operazione in un oggetto

today <- Sys.Date()

class(today)

# che operazioni possiamo fare su una data

today + 1

tomorrow <- today + 1

calendar <- seq(today, by = 7, length.out = 10)

# parsing delle date

as.Date('Jan-10-1997', format='%b-%d-%Y')

# POSIXct() e POSIXlt()

esempio_data <- 'April 4, 2020, 12:57:10'
esempio_data_formato <- '%B %d, %Y, %H:%M:%S'

data_completa <- as.POSIXct(esempio_data, format = esempio_data_formato, tz='GMT')

data_completa

class(data_completa)


# strptime()

date <- c('15:10:00 20/03/2015',
          '16:00:35 19/01/2016',
          '10:20:30 05/12/2014',
          '12:15:15 30/06/2015',
          '11:20:35 21/04/2015',
          '15:50:00 11/09/2015'
)

date_pars <- strptime(
        date,
        '%H:%M:%S %d/%m/%Y',
        tz = 'UTC'
)

date_pars


# lubridate

install.packages('lubridate')
library(lubridate)

today()

now()

date2 <- c(
        20150521,
        '1693-03 24',
        '2014.10.5',
        '2003/07\\19',
        'Giovedì+1997.10*24')

ymd(date2)

# possiamo quindi parsare date in un formato giorno/mese/anno

giornomeseanno <- dmy('04-12-2019')

giornomeseanno

# oppure mese/giorno/anno

mesegiornoanno <- mdy('12/27*2011')
mesegiornoanno

momento1 <- ymd_hms('2015,02,22 12:50:27')

momento1

# possiamo cambiare la prima parte della funzione come abbiamo visto negli esempi qua sopra

momento2 <- dmy_hms('22-02-2016 12:50:27')

momento2

oggi <- today()
year(oggi)

wday(oggi)

wday(oggi, label=TRUE)

