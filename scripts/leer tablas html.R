# Importar tablas HTML

# install.packages("XML")
# install.packages("RCurl")

library(XML)
library(RCurl)

url <- "https://mx.investing.com/currencies/"


# y obtenemos el HTML y lo guardamos en una variable de R
htmlData <- getURL(url)

# ahora buscamos las tablas existentes en el HTML
tables <- readHTMLTable(htmlData)