library(UsingR)
shinyServer(function(input, output) {
  
  alphabetText <- reactive({gsub('[0-9]+', '', input$strInput)})
  
  lsText = reactive({unlist(strsplit(alphabetText(), split=""))}) 
  
  tblText <- reactive({table(lsText())})
  
  output$value <- renderPrint({
      if(nchar(input$strInput)){
        tblText()
      }
    })
  
  output$histTbl <- renderPlot({
    if(nchar(input$strInput)){
      plot(tblText(), xlab='Characters', col='lightblue',main='Frequency Plot:')
    }
  })
  
})

