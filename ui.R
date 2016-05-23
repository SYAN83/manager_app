library(shiny)

shinyUI(
  fluidPage(
    h1("Test app"),
    verbatimTextOutput("username"),
    verbatimTextOutput("groups")
  )
)