#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)


# data <- read_rds("")

# Define UI for application that draws a histogram
ui <- fluidPage(
    navbarPage(
        "Female Athlete Body Image",
        tabPanel("Model",
                 titlePanel("Model"),
                 sidebarLayout(
                     sidebarPanel(
                         sliderInput("bins",
                                     "Number of bins:",
                                     min = 1,
                                     max = 50,
                                     value = 30)
                     ),
                         mainPanel(
                             plotOutput("distPlot")
                         )
                 )
        ),
        
        tabPanel("About",
                 titlePanel("About"),
                 br(),
                 h4("About the data"),
                 p("This is the placeholder where I will talk about the 
                   data source"),
                 br(),
                 h4("About Me"),
                 p("My name is Sofie Fella and I am a junior at Harvard College
                   studying Psychology with a secondary in Economics. You can reach
                   me at Sofiefella@college.harvard.edu"),
                 h5("The source code for this Shiny App can be found at my GitHub", 
                    a("HERE", href="https://github.com/Sofiefella/Female-Athlete"))
                 
                 )
                
        
  )
  )





# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        #data %>%
            #ggplot(aes())
        
        
        
    })
    
    output$histPlot <- renderPlot({
        #data2 %>%
        #ggplot(aes())
        
        
        
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
