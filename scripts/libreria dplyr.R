# install.packages("dplyr")

library(dplyr)


# Cargar datos

url <- "https://raw.githubusercontent.com/rpizarrog/Machine-Learning-con-R/main/datos/datos.personas.csv"
datos <- read.csv(url)


# Analizar decsriptivamente
summary(datos)


# Convertir tipos charcter  factor
datos$genero <- as.factor(datos$genero)
datos$estado <- as.factor(datos$estado)
datos$feliz <- as.factor(datos$feliz)

# Explorar
summary(datos)

# filter hace un filtro subset a nivel de registro
menores.20 <- filter(.data = datos, edad <= 20)
menores.20

# subset(x = datos, edad <= 20)

# select . Proyecta las columnas de un df

select(.data = datos, edad, genero, feliz) # Cuales columnas

datos[c('edad', 'genero', 'feliz')]

# Combinando con pipes o conctores
# %>%

filtro.completo <- select(.data = datos, edad, genero, feliz) %>%
  filter(genero == 'FEMENINO')

# Se puede hacer mas entendible
filtro.completo <- datos %>%
  filter(genero == 'MASCULINO' & edad <=20) %>%
  select(edad, genero, feliz)  # Parecido a SQL 


# mutate. Modificar
datos.nuevos <- datos %>%
  mutate(numeros = sample(x = c(-1, 0, 1), 
                          size = 10000, 
                          replace = TRUE))

interes <- datos.nuevos %>%
    filter(numeros > 0)

f.extraer <- function (datos) {
  extracto <- datos %>%
    filter(numeros > 0)
  extracto
}


# group_by summarize()

# Frecuencia por estado
datos.nuevos %>%
  group_by(estado) %>%
  summarize(cuantos = n())


datos.nuevos %>%
  group_by(estado) %>%
  summarize(media = mean(edad), desv.std = sd(edad))



# SQL 


  




# mutate

# group_by summarize()

# %>% conectores o pipes

