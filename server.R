library(shiny)
library(class)

server <- function(input, output) {
  output$answer <- renderText(
    {
      traindata<-read.csv("Trainabc.csv", header=TRUE, sep=",")
      
      testdata<-read.csv("Testabc.csv", header=TRUE, sep=",")
      train_label<- traindata$result
      train_data<-traindata[,1:5]
      
     tes1 = c(input$a,input$b,input$c,input$d,input$e)
     
      test_pred<-knn(train = train_data, test =tes1, cl=train_label,k =5,prob=TRUE)
      if(test_pred==1)
      {
        "APPROVED"
      }
      else if(test_pred==0)
      {
        "NOT APPROVED"
      }
      
    }
    
  )
}

