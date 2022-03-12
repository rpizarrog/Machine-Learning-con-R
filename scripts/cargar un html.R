# Probando WEB Scrapping
# install.packages("rvest")
library(rvest)

url <- "http://www.bolsamadrid.es/esp/aspx/Mercados/Precios.aspx?indice=ESI100000000"
contenido <- read_html(url)
contenido <- html_nodes(contenido, "table") # Solo las tablas

contenido

length(contenido)
class(contenido)

# sapply(contenido, function(x) dim(html_table(x, fill = TRUE)))

tabla1 <- html_table(contenido[[1]])
tabla1

tabla5 <- html_table(contenido[[5]])
tabla5


# Convertirlo a DF
tabla <- as.data.frame(tabla)
tabla


class(tabla)


# Cargar divisas



