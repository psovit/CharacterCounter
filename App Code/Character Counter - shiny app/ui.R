shinyUI(pageWithSidebar(
  headerPanel("Get Character Frequency"),
  sidebarPanel(
    h5("Enter text and find the frequency of occurence of different characters."),
    h5("Table value for entered characters count is 
       provided as output along with a plot as well. The text input ignores any numeric inputs."),
    hr(),
    h3("Thanks for trying!")
  ),
  mainPanel(
    textInput("strInput",width = '1000px',
              label = h3("Enter text here: ")),
    
    h3('Table of alphabet occurenece: '),
    
    fluidRow(column(12, verbatimTextOutput("value"))),
    
    plotOutput('histTbl')
    
  )
))
