library(shiny)
library(datasets)

data(euro)


shinyUI(fluidPage(
  
  titlePanel("Euro conversion based on rates from 31/12/1998"),
  
  sidebarPanel(
    
    p("Data from the", span("euro", style = "color:blue"), "dataset. Please select 
      your base currency from the menu and enter a currency value in the text box. 
      Selecting the currency,", span("'Euro'", style = "color:red"), ", shows you
      the Euro value of each currency as of 31 DEC 1998."),    
    
    selectInput("currency", "Currency", c("Euro", names(euro))),
    
    numericInput("amount", "Amount", 1)
    
    ),
  
  mainPanel(
    
    textOutput("text1"),
    
    tableOutput("conversion"),
    
    p("Austrian Schilling ATS, Belgian Franc BEF, German Mark DEM, 
      Spanish Peseta ESP, Finnish Markka FIM, French Franc FRF, 
      Irish Punt IEP, Italian Lira ITL, Luxembourg Franc LUF, 
      Dutch Guilder NLG and Portuguese Escudo PTE")
    
    )
  
  ))
