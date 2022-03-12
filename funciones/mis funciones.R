# Crear una función para convertir un 
# dígito a texto
f.convertir.dt <- function(x) {
  if (x < 10) {
    if (x == 1){
      texto = "uno"
    }
    else if (x == 2){
      texto = "dos"
    }
    else if (x == 3){
      texto = "tres"
    }
    else if (x == 4){
      texto = "cuatro"
    }
    else if (x == 5){
    texto = "cinco"
    }
    else if (x == 6){
      texto = "seis"
    }
    else if (x == 7){
      texto = "siete"
    }
    else if (x == 8){
      texto = "ocho"
    }
    else if (x == 9){
      texto = "nueve"
    }  
    else {
      texto = "cero o menor"
    }
  }  
  texto
}

f.saludos <- function(nombre) {
  paste("hola", nombre)
}
