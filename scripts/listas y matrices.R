# Listas
edades <- c(23, 24, 54, 56, 54, 57, 65, 34)
nombres <- c("RUBEN", "ANGEL I", "JOSUE", 
             "CARLOS",'PATY', 'LULU', 'OSCAR', 'LALO')
automoviles <- c("VW", "Chrysler", "Ford", "Ford", "VW", "Ford", "VW", "Ford")

# Creamos la lista
milista <- list(nombres, edades, automoviles)

# Accedera  a elementos de una lista
milista[[1]]

class(milista)


midf.datos <- as.data.frame(milista)
midf.datos
class(midf.datos)


# Matrices

numeros <- c(3,4,5,6,5,7,6,5,6,7,8,7,6,3,4,5,5,4)
numeros

matrix(numeros, nrow = 2)
matrix(numeros, nrow = 3)
mat <- matrix(numeros, nrow = 3, ncol = 6, byrow = TRUE)


# Acceder
mat[1, ]
mat[,2:3]

class(mat)