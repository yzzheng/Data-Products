library(shiny)

shinyUI(fluidPage(  
  # Application title
  titlePanel("Estimate Your Diamond Price by Weight"),  
  # Sidebar with controls to select the variable to plot against
  sidebarPanel(
    sliderInput('dmwt', 'Guess your diamond weight', 
                value=0.25, min=0.15, max=0.35, step=0.01),
    dateInput("date", "Date:")
    ),    
  mainPanel(
      plotOutput("diamondPlot"),
      textOutput("odate")
    )
  )
)