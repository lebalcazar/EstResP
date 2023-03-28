# 01 conceptos básicos
# Muestreos

# cargar librerías
library(tidyverse)

# Muestreo Aleatorio Simple (MAS) sin reeamplazamiento
# Toma una muestra aleatoria de 50 elementos de un vector que va entre 0 y 100
sample(0:100, size = 50, replace = FALSE)

# Muestreo Aleatorio Simple (MAS) con reposición
# Toma una muestra aleatoria de 50 elementos de un vector que va entre 0 y 100
sample(0:100, size = 50, replace = TRUE)






# imprimir en pantalla el dataset iris
print(iris)

# converir el data frame a tibble
iris <- as_tibble(iris)

print(iris)  
  