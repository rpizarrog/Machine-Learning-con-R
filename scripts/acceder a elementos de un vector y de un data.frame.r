# Construir un conjunto de datos
# a partir de vectores
edades <- c(23, 24, 54, 56, 54, 57, 65, 34)
nombres <- c("RUBEN", "ANGEL I", "JOSUE", 
             "CARLOS",'PATY', 'LULU', 'OSCAR', 'LALO')
automoviles <- c("VW", "Chrysler", "Ford", "Ford", "VW", "Ford", "VW", "Ford")


datos <- data.frame(nombres, edades, automoviles)
datos


# Acceder a alementos de un vector por su posición o índice index
# [] Significa columnas, los vectores
edades[1]   # Elemento 1
edades[3]   # Elemento 3
edades[1:3] # Los primeros tres elementos
edades[-4]  # Todos excepto el elemento 4

nombres
nombres[4]

# Acceder a elementos de un data.frame
datos[1,1]   # [renglon, columna]
datos[1, ]
datos[,1]
datos[2:3, 1:2]

datos[,c('nombres', 'edades')]

datos[2, -2] # Excepto la columna



# Acceder a elementos de un DF por medio de símbolo $
datos$nombres

datos$edades

datos
transform(datos$automoviles[2:4])



# Cambiar nombres de columnas
datos


colnames(datos)  # Get o put nombres de columnas de un DF

# Cambiar los nombres de columnas
colnames(datos) <- c("names", "ages", "cars")
datos






