# Importar datos


# Importar datos de excel a R
# install.packages("readxl")
library(readxl)
datos <- read_excel("datos/datos participantes.xlsx")  # Local

class(datos)



# Importar datos de un csv
# install.packages("readr")
library(readr)
datos.csv <- read.csv("datos/datos participantes.csv", 
                      encoding = "latin1")  # Local
datos.csv


# Importar datos FIFA
# datos.FIFA <- read.csv("", 
                       encoding = "latin1")  # Local
# datos.csv


url <- "https://api.covidactnow.org/v2/states.csv?apiKey=d12b20d61b394faaa56f72eb3d5980d5
"
datos.covid <- read.csv(url)


url.fifa <- "https://raw.githubusercontent.com/rpizarrog/Machine-Learning-con-R/main/datos/datos.FIFA.limpios.csv"
datos.fifa <- read.csv(url.fifa, encoding = "latin1")



