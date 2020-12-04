library(shiny)

ui <- fluidPage(
  titlePanel("Welcome To Loan Prediction Department"),
  sidebarLayout(
    sidebarPanel(
      
      textInput(
        "name","Name",""
      ),
      dateInput("age","Date Of Birth",""),
      numericInput("a", "No. of dependents :", "", min = NA, max = NA, step = NA,
                   width = NULL),
      numericInput("b", "Applicant Income :", "", min = NA, max = NA, step = NA,
                   width = NULL),
      numericInput("c", "Co applicant income  ;", "", min = NA, max = NA, step = NA,
                   width = NULL),
      numericInput("d", "loan ammount :", "", min = NA, max = NA, step = NA,
                   width = NULL),
      numericInput("e", "Loan ammount term in months :", "", min = NA, max = NA, step = NA,
                   width = NULL)
    ),
    mainPanel(("Your Loan application is "),
      textOutput("answer")
    
      )
  )
)
