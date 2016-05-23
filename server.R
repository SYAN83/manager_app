library(shiny)

shinyServer(function(input, output, session) {
  
  user <- reactive({
    session$user
  })
  
  isAdmin <- reactive({
    user <- user()
    if (!is.null(user) && user == "syan") {
      return(TRUE)
    } else {
      return(FALSE)
    }
  })
  
  userData <- reactive({
    if (isAdmin()) {
      return("is admin")
    } else {
      return("is guest")
    }
  })
  observe(print(isAdmin()))
  output$user <- renderText(userData())
})