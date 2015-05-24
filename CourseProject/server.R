library(shiny)
library(UsingR)
data(diamond)
mode1 <- lm(price~carat, data=diamond)

shinyServer(function(input, output) {  
    output$diamondPlot <- renderPlot({
    plot(diamond$carat, diamond$price, 
         xlab="Mass(carats)", ylab="Price(SIN$)",
         main="Diamond Price ~ Weight",
         bg="lightblue",
         col="black", cex=1.1, pch=21, frame=FALSE)
    abline(lm(price ~ carat, data=diamond), lwd=3)
    dmwt <- input$dmwt
    price <-predict(mode1, data.frame(carat=dmwt))
    abline(h=price, col='green',lwd=4)
    text(0.33, 800, paste("Price=", round(price,2)),col="red")
    })
    output$odate <- renderPrint({input$date})
})