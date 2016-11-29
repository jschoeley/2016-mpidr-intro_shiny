library(shiny)
# user interface
ui <- bootstrapPage(
  radioButtons(inputId = "n", label = "Number of obs", choices = list(10, 100, 1000)),
  plotOutput(outputId = "plot")
)
# server code, e.g. R calculations
server <- function(input, output) {output$plot <- renderPlot(hist(rnorm(input$n)))}
# start shiny app
shinyApp(ui = ui, server = server)