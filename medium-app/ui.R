
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("GBIF occurence data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput(
        "countryInput",label=h3("Choose country"),
        value = "IN"
      ),
      textInput(
        "classKeyInput",label=h3("Choose classKey"),
        value = 359
      )
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("map")
    )
  )
))
