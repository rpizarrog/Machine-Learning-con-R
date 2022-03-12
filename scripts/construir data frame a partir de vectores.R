# Construr un conjunto de datos
# a partir de vectores
edades <- c(23, 24, 54, 56, 54, 57, 65, 34)
nombres <- c("RUBEN", "ANGEL I", "JOSUE", 
             "CARLOS",'PATY', 'LULU', 'OSCAR', 'LALO')
automoviles <- c("VW", "Chrysler", "Ford", "Ford", "VW", "Ford", "VW", "Ford")


datos <- data.frame(nombres, edades, automoviles)
datos