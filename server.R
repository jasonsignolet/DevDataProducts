library(shiny)
library(datasets)



shinyServer(function(input, output){
  
  dataset <- reactive({
    if(input$currency == "Euro"){
      data.frame("Exchange" = euro * input$amount)
    }else{
      data.frame("Exchange" = euro / euro[input$currency] * input$amount)
    }
    
    
  })
  
  
  output$text1 <- renderText({
    
    paste(input$amount, input$currency, "buys you:\n\n", sep = " ")
    
  })
  
  
  output$conversion <- renderTable({
    
    dataset()
    
  })
})