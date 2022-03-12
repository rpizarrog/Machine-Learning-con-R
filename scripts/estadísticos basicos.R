# Muestra y Población 

set.seed(2022) # Sembrar una semilla
N <- 20:60
n <- 100
edades <- sample(x = N, size = n, replace = TRUE)
edades



# Estadísticos descriptivos


# media()
mean(edades)


# mediana()
median(edades)

# cuartiles
cuartiles <- quantile(x = edades, c(0.25, 0.50, 0.75))
cuartiles


# varianza()
var(edades)


# desviacion()
sd(edades)


summary(edades)


