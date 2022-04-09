# Funciones que devuelve Accuracy ("Eficiencia") 
# para algoritmos de clasificación

# library()


# Función par convertir lista a data.frame
# Convierte a numero de registros iguales conforme 
# al valor mínimo de elementos de la lista
f_convertir_list_adf <- function(lista) {
  elementos <- NULL
  for(i in 1:length(registros)) { 
    elementos[i] <- length(registros[[i]])
  }
  # elementos
  minimo <- min(elementos)
  # minimo
  
  
  tabla <- data.frame(registro = NULL)
  tabla <- NULL
  for(i in 1:length(registros)) { 
    tabla <- cbind(tabla, registros[[i]][1:minimo])
  }
  colnames(tabla) <- 1:ncol(tabla)
  row.names(tabla) <- 1:nrow(tabla)
  tabla
}

# Regresion Logistica
f_RegresionLogistica <- function(registros, datos_entrenamiento) {
  cvRegresionLogistica <- lapply(registros, function(x){
    entrenamiento.cruzada <- datos_entrenamiento[-x, ]
    validacion_cruzada <- datos_entrenamiento[x, ]
    clasificador <- glm(Clase ~ ., family = binomial, data = entrenamiento.cruzada)
    y_pred <- predict(clasificador, type = 'response', newdata = validacion_cruzada)
    y_pred <- ifelse(y_pred > 0.5, 1, 0)
    y_pred <- factor(y_pred, levels = c("0", "1"), labels = c("NoPulsar", "Pulsar"))
    cm <- table(validacion_cruzada$Clase, y_pred)
    precision <- (cm[1,1] + cm[2,2]) / (cm[1,1] + cm[2,2] +cm[1,2] + cm[2,1])
    return(precision)
  })
  mean(as.numeric(cvRegresionLogistica))
}

f.KNN <- function(registros, datos_entrenamiento) {
  library(class)  # Para knn
  cvkNN <- lapply(registros, function(x){
    entrenamiento.cruzada <- datos_entrenamiento[-x, ]
    validacion_cruzada <- datos_entrenamiento[x, ]
    y_pred <- knn(entrenamiento.cruzada[, -9], 
                  validacion_cruzada[, -9], 
                  cl = entrenamiento.cruzada[, 9], 
                  k = 10)
    cm <- table(validacion_cruzada$Clase, y_pred)
    precision <- (cm[1,1] + cm[2,2]) / (cm[1,1] + cm[2,2] +cm[1,2] + cm[2,1])
    return(precision)
  })
  mean(as.numeric(cvkNN))
}

#SVM
# Kernel-SVM
f_SVM <- function(registros, datos_entrenamiento) {
  library(e1071)
  cvKernelSVM <- lapply(registros, function(x){
    entrenamiento.cruzada <- datos_entrenamiento[-x, ]
    validacion_cruzada <- datos_entrenamiento[x, ]
    clasificador <- svm(Clase ~ .,
                        data = entrenamiento.cruzada, 
                        type = 'C-classification', 
                        kernel = 'radial')
    y_pred <- predict(clasificador, newdata = validacion_cruzada)
    cm <- table(validacion_cruzada$Clase, y_pred)
    precision <- (cm[1,1] + cm[2,2]) / (cm[1,1] + cm[2,2] +cm[1,2] + cm[2,1])
    return(precision)
  })
  mean(as.numeric(cvKernelSVM))
} 


# Naive Bayes
f_NV <- function(registros, datos_entrenamiento) {
  cvNaiveBayes <- lapply(registros, function(x){
    entrenamiento.cruzada <- datos_entrenamiento[-x, ]
    validacion_cruzada <- datos_entrenamiento[x, ]
    clasificador <- naiveBayes(Clase ~ ., data = entrenamiento.cruzada)
    y_pred <- predict(clasificador, newdata = validacion_cruzada)
    cm <- table(validacion_cruzada$Clase, y_pred)
    precision <- (cm[1,1] + cm[2,2]) / (cm[1,1] + cm[2,2] +cm[1,2] + cm[2,1])
    return(precision)
  })
  mean(as.numeric(cvNaiveBayes))
} 

# Arboles de Clasificació
f_AC <- function(registros, datos_entrenamiento) {
  library(rpart)
  cvDecisionTree <- lapply(registros, function(x){
    entrenamiento.cruzada <- datos_entrenamiento[-x, ]
    validacion_cruzada <- datos_entrenamiento[x, ]
    clasificador <- rpart(Clase ~ ., data = entrenamiento.cruzada)
    y_pred <- predict(clasificador, newdata = validacion_cruzada, type = 'class')
    cm <- table(validacion_cruzada$Clase, y_pred)
    precision <- (cm[1,1] + cm[2,2]) / (cm[1,1] + cm[2,2] +cm[1,2] + cm[2,1])
    return(precision)
  })
  mean(as.numeric(cvDecisionTree))
} 

# Random Forest. Bosques aleatorios
f_RF <- function(registros, datos_entrenamiento) {
  library(randomForest)
  cvRandomForest <- lapply(registros, function(x){
    entrenamiento.cruzada <- datos_entrenamiento[-x, ]
    validacion_cruzada <- datos_entrenamiento[x, ]
    clasificador <- randomForest(Clase ~ ., data = entrenamiento.cruzada, ntree = 250)
    y_pred <- predict(clasificador, newdata = validacion_cruzada)
    cm <- table(validacion_cruzada$Clase, y_pred)
    precision <- (cm[1,1] + cm[2,2]) / (cm[1,1] + cm[2,2] +cm[1,2] + cm[2,1])
    return(precision)
  })
  mean(as.numeric(cvRandomForest))
}


