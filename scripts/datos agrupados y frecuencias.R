# Agrupación de datos

# install.packages("fdth")
library(fdth)  # Tablas de frecuencias
library(dplyr) # Filtrar
library(readr) # leer datos

# Necesitamos DATOS
url <- "https://raw.githubusercontent.com/rpizarrog/Machine-Learning-con-R/main/datos/datos.limpios.csv"
fifa <- read.csv(url)

# Tarea u Objetivo es agrupar datos en clases

# Variables de interés numérica: 
# age, Aggression, Estatura, PesoKgs

fifa.filtrado <- fifa %>%
  select(Age, Aggression, Estatura, PesoKgs)
# Numéricos
tabla.frec_age <- fdt(x = fifa$Age, 
                  start = min(fifa$Age), 
                  end = max(fifa$Age),
                  h = 2)
tabla.frec_age


tabla.frec_Est <- fdt(x = fifa$Estatura, 
                      k = 7)
tabla.frec_Est






# Categóricos
# fdt_cat()
# Pais
tabla_frec.pais <- fdt_cat(x = fifa$Nationality)
head(tabla_frec.pais, 10)
