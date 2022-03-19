#covarianza y correlacion de peso y de estatura de jugadores de fut bol 

#cargar datos
fifa_data <- read.csv("https://raw.githubusercontent.com/rpizarrog/Machine-Learning-con-R/main/datos/datos.limpios.csv")

#install packages
#install.packages("ggplot2")
#install.packages("plotly")
#install.packages("knitr")
#install.packages("PerformanceAnalytics")

library(dplyr)

str(fifa_data)

cor(fifa_data$Estatura, fifa_data$PesoKgs)

fifa_filtered <- select(fifa_data,Estatura,PesoKgs)

chart.Correlation(R = fifa_filtered, histogram = TRUE)
