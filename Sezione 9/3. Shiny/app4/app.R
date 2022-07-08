library(shiny)
library(datasets)

ui <- shinyUI(fluidPage(
        
        titlePanel("Esempio"),
        
        sidebarPanel(
                selectInput("dataset", "Dataset", choices = c("rock", "pressure", "cars")),
                uiOutput("var")),
        mainPanel(
                plotOutput("plot"))  
))

server <- function(input, output) {
        datasetInput <- reactive({
                switch(input$dataset,
                       'rock' = rock,
                       'pressure' = pressure,
                       'cars' = cars)
        })
        
        output$var <- renderUI({
                radioButtons("varname","Scegli una variabile", names(datasetInput()))
        })
        
        output$plot <- renderPlot({
                if (!is.null(input$varname)) {
                        if (!input$varname %in% names(datasetInput())) {
                                colname <- names(datasetInput())[1]
                        }
                        else {
                                colname <- input$varname
                        }
                        hist(datasetInput()[,colname], main=paste("Histogram of ", colname), xlab=colname)
                }
        }) 
        
}

shinyApp(ui = ui, server = server)
