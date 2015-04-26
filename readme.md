####################################################
This project developed a web interactive app for 
estimating diamond prices by RStudio shiny applicaton
####################################################

Requirements:

library(shiny)
library(UsingR)
data(diamond)

getwd()
setwd("The directory and the subdirectory called "cp" 
which contains the "ui.R" and "server.R" files")

Make sure that the "ui.R" and "server.R" files are in the subdirectory called "cp".

dir()

Run the following code, the interactive web app will show up in the local window or externally on web browser.

runApp("cp")
