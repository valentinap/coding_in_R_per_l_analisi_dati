# richiamiamo il pacchetto 
library(shiny)

# definiamo la user interface
ui <- fluidPage(
        titlePanel("Titolo"),
        
        sidebarLayout(position = "left",
                sidebarPanel('sidebar'),
                mainPanel(h1("Titolo h1"),
                          h2("Titolo h2"),
                          h3("Titolo h3"),
                          h4("Titolo h4"),
                          p("con questa funzione creiamo un paragrafo di testo"),
                          code("qui inseriamo del testo in formato codice"),
                          div("con div possiamo modificare gli stili", style = "color:red"),
                          img(src = "daisies.jpg", height = 140, width = 400)
                          )
        )
)

# definiamo la logica del server
server <- function(input, output) {
        
}

# eseguiamo l'app
shinyApp(ui = ui, server = server)