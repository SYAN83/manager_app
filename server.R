library(shiny)

shinyServer(function(input, output, session) {
  
  shinyServer(function(input, output, session) {
    
    output$username <- reactive({
      session$user
    })
    
    output$groups <- reactive({
      session$groups
    })
  })
  
})